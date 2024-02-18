(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708247281)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj287066
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj287066)
               __obj287066)))))
    (define gxc#optimize!
      (lambda (_ctx282692_)
        (let ((__tmp287070
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx282692_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp287072
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp287071
                        (##structure-ref
                         _ctx282692_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp287072 __tmp287071 '#t))
                 (let ((_code282695_
                        (let ((__tmp287073
                               (##structure-ref
                                _ctx282692_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp287073))))
                   (##structure-set!
                    _ctx282692_
                    _code282695_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp287069 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp287068 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp287070
           gxc#current-compile-mutators
           __tmp287069
           gxc#current-compile-local-type
           __tmp287068))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp287074
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp287074 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx282636_)
        (letrec* ((_deps282638_
                   (let* ((_imports282682_
                           (##structure-ref
                            _ctx282636_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e282684_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx282636_))))
                     (if _$e282684_
                         ((lambda (_g282686282688_)
                            (let ()
                              (declare (not safe))
                              (cons _g282686282688_ _imports282682_)))
                          _$e282684_)
                         _imports282682_))))
          (let _lp282640_ ((_rest282642_ _deps282638_))
            (let* ((_rest282643282651_ _rest282642_)
                   (_else282645282659_ (lambda () '#!void))
                   (_K282647282670_
                    (lambda (_rest282662_ _hd282663_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd282663_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp287088
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp287087
                                       (##structure-ref
                                        _hd282663_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp287088 __tmp287087))
                                '#!void
                                (begin
                                  (let ((_$e282665_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd282663_))))
                                    (if _$e282665_
                                        ((lambda (_pre282668_)
                                           (let ((__tmp287085
                                                  (let ((__tmp287086
                                                         (##structure-ref
                                                          _hd282663_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre282668_
                                                          __tmp287086))))
                                             (declare (not safe))
                                             (_lp282640_ __tmp287085)))
                                         _$e282665_)
                                        (let ((__tmp287084
                                               (##structure-ref
                                                _hd282663_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp282640_ __tmp287084))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd282663_))))
                            (let ()
                              (declare (not safe))
                              (_lp282640_ _rest282662_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd282663_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp287083
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp287082
                                           (##structure-ref
                                            _hd282663_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp287083 __tmp287082))
                                    '#!void
                                    (begin
                                      (let ((__tmp287081
                                             (##structure-ref
                                              _hd282663_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp282640_ __tmp287081))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd282663_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp282640_ _rest282662_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd282663_
                                     'gx#module-import::t))
                                  (let ((__tmp287079
                                         (let ((__tmp287080
                                                (##direct-structure-ref
                                                 _hd282663_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp287080 _rest282662_))))
                                    (declare (not safe))
                                    (_lp282640_ __tmp287079))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd282663_
                                         'gx#module-export::t))
                                      (let ((__tmp287077
                                             (let ((__tmp287078
                                                    (##direct-structure-ref
                                                     _hd282663_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp287078
                                                     _rest282662_))))
                                        (declare (not safe))
                                        (_lp282640_ __tmp287077))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd282663_
                                             'gx#import-set::t))
                                          (let ((__tmp287075
                                                 (let ((__tmp287076
                                                        (##direct-structure-ref
                                                         _hd282663_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp287076
                                                         _rest282662_))))
                                            (declare (not safe))
                                            (_lp282640_ __tmp287075))
                                          (error '"Unexpected module import"
                                                 _hd282663_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest282643282651_))
                  (let ((_hd282648282673_
                         (let ()
                           (declare (not safe))
                           (##car _rest282643282651_)))
                        (_tl282649282675_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282643282651_))))
                    (let* ((_hd282678_ _hd282648282673_)
                           (_rest282680_ _tl282649282675_))
                      (declare (not safe))
                      (_K282647282670_ _rest282680_ _hd282678_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx282616_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx282616_
                    'gx#module-context::t))
                 (let ((__tmp287089
                        (##structure-ref
                         _ctx282616_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp287089)))
            '#!void
            (let* ((_ht282618_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id282620_
                    (##structure-ref
                     _ctx282616_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod282622_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht282618_ _id282620_))))
              (let ((_$e282625_ _mod282622_))
                (if _$e282625_
                    _$e282625_
                    (let* ((_mod282628_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx282616_)))
                           (_val282633_
                            (let ((_$e282630_ _mod282628_))
                              (if _$e282630_ _$e282630_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht282618_ _id282620_ _val282633_))
                      _val282633_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx282614_)
        (if (##structure-ref _ctx282614_ '1 gx#expander-context::t '#f)
            (let ((__tmp287090
                   (##structure-ref
                    _ctx282614_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp287090))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id282591_)
        (letrec ((_catch-e282593_
                  (lambda (_exn282612_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id282591_))
                          (display-exception _exn282612_))
                        '#!void)
                    '#f))
                 (_import-e282594_
                  (lambda ()
                    (let* ((_str-id282597_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id282591_))
                             '".ssxi"))
                           (_artefact-path282605_
                            (let ((_odir282598282600_
                                   (gxc#current-compile-output-dir)))
                              (if _odir282598282600_
                                  (let ((_odir282603_ _odir282598282600_))
                                    (path-expand
                                     (string-append _str-id282597_ '".ss")
                                     _odir282603_))
                                  '#f)))
                           (_library-path282607_
                            (string->symbol
                             (string-append '":" _str-id282597_ '".ss")))
                           (_ssxi-path282609_
                            (if (and _artefact-path282605_
                                     (file-exists? _artefact-path282605_))
                                _artefact-path282605_
                                _library-path282607_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path282609_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path282609_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e282593_ _import-e282594_)))))
    (define gxc#optimize-source
      (lambda (_stx282582_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx282582_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx282582_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx282582_))
        (let* ((_stx282584_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx282582_)))
               (_stx282586_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx282584_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx282586_))
          (let ((_stx282589_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx282586_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx282589_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl282579_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp287091 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl282579_ __tmp287091))
           (let ()
             (declare (not safe))
             (table-set! _tbl282579_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282579_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282579_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282579_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282579_ '%#call gxc#generate-ssxi-call%))
           _tbl282579_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx282562_ . _args282564_)
        (let ((__tmp287093
               (lambda ()
                 (declare (not safe))
                 (if (null? _args282564_)
                     (gxc#compile-e__0 _stx282562_)
                     (let ((_arg1282569_ (car _args282564_))
                           (_rest282571_ (cdr _args282564_)))
                       (if (null? _rest282571_)
                           (gxc#compile-e__1 _stx282562_ _arg1282569_)
                           (let ((_arg2282574_ (car _rest282571_))
                                 (_rest282576_ (cdr _rest282571_)))
                             (if (null? _rest282576_)
                                 (gxc#compile-e__2
                                  _stx282562_
                                  _arg1282569_
                                  _arg2282574_)
                                 (apply gxc#compile-e
                                        _stx282562_
                                        _arg1282569_
                                        _arg2282574_
                                        _rest282576_))))))))
              (__tmp287092 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp287093
           gxc#current-compile-methods
           __tmp287092))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx282523_)
        (let* ((_g282525282535_
                (lambda (_g282526282532_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282526282532_))))
               (_g282524282559_
                (lambda (_g282526282538_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282526282538_))
                      (let ((_e282530282540_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282526282538_))))
                        (let ((_hd282529282543_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282530282540_)))
                              (_tl282528282545_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282530282540_))))
                          ((lambda (_L282548_)
                             (let ((__tmp287096
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx282523_))))
                                   (__tmp287094
                                    (let ((__tmp287095
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp287095 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp287096
                                gx#current-expander-phi
                                __tmp287094)))
                           _tl282528282545_)))
                      (let ()
                        (declare (not safe))
                        (_g282525282535_ _g282526282538_))))))
          (declare (not safe))
          (_g282524282559_ _stx282523_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx282463_)
        (let* ((_g282465282479_
                (lambda (_g282466282476_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282466282476_))))
               (_g282464282520_
                (lambda (_g282466282482_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282466282482_))
                      (let ((_e282471282484_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282466282482_))))
                        (let ((_hd282470282487_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282471282484_)))
                              (_tl282469282489_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282471282484_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl282469282489_))
                              (let ((_e282474282492_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl282469282489_))))
                                (let ((_hd282473282495_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e282474282492_)))
                                      (_tl282472282497_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e282474282492_))))
                                  ((lambda (_L282500_ _L282501_)
                                     (let* ((_ctx282514_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L282501_)))
                                            (_code282516_
                                             (##structure-ref
                                              _ctx282514_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp287097
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code282516_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp287097
                                          gx#current-expander-context
                                          _ctx282514_))))
                                   _tl282472282497_
                                   _hd282473282495_)))
                              (let ()
                                (declare (not safe))
                                (_g282465282479_ _g282466282482_)))))
                      (let ()
                        (declare (not safe))
                        (_g282465282479_ _g282466282482_))))))
          (declare (not safe))
          (_g282464282520_ _stx282463_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx282273_)
        (letrec ((_generate-e282275_
                  (lambda (_id282452_)
                    (let* ((_sym282454_
                            (if (let ((__tmp287098
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp287098))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id282452_))
                                '#f))
                           (_$e282456_
                            (if _sym282454_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym282454_))
                                '#f)))
                      (if _$e282456_
                          ((lambda (_type282459_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym282454_))
                             (let* ((_typedecl282461_
                                     (let ((__method287067
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type282459_
                                               'typedecl))))
                                       (if __method287067
                                           (__method287067 _type282459_)
                                           (error '"Missing method"
                                                  _type282459_
                                                  'typedecl))))
                                    (__tmp287099
                                     (let ((__tmp287100
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl282461_ '()))))
                                       (declare (not safe))
                                       (cons _sym282454_ __tmp287100))))
                               (declare (not safe))
                               (cons 'declare-type __tmp287099)))
                           _$e282456_)
                          '(begin))))))
          (let* ((___stx286765286766_ _stx282273_)
                 (_g282278282316_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx286765286766_)))))
            (let ((___kont286767286768_
                   (lambda (_L282434_)
                     (let ()
                       (declare (not safe))
                       (_generate-e282275_ _L282434_))))
                  (___kont286769286770_
                   (lambda (_L282369_)
                     (let ((_types282395_
                            (map _generate-e282275_
                                 (let ((__tmp287101
                                        (lambda (_g282387282390_
                                                 _g282388282392_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g282387282390_
                                                  _g282388282392_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp287101 '() _L282369_)))))
                       (declare (not safe))
                       (cons 'begin _types282395_)))))
              (let ((___match286820286821_
                     (lambda (_e282296282321_
                              _hd282295282324_
                              _tl282294282326_
                              _e282299282329_
                              _hd282298282332_
                              _tl282297282334_
                              ___splice286771286772_
                              _target282300282337_
                              _tl282302282339_)
                       (letrec ((_loop282303282342_
                                 (lambda (_hd282301282345_ _id282307282347_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd282301282345_))
                                       (let ((_e282304282350_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd282301282345_))))
                                         (let ((_lp-tl282306282355_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e282304282350_)))
                                               (_lp-hd282305282353_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e282304282350_))))
                                           (let ((__tmp287102
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd282305282353_
                                                          _id282307282347_))))
                                             (declare (not safe))
                                             (_loop282303282342_
                                              _lp-tl282306282355_
                                              __tmp287102))))
                                       (let ((_id282308282358_
                                              (reverse _id282307282347_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl282297282334_))
                                             (let ((_e282311282361_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl282297282334_))))
                                               (let ((_tl282309282366_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e282311282361_)))
                                                     (_hd282310282364_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e282311282361_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl282309282366_))
                                                     (___kont286769286770_
                                                      _id282308282358_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g282278282316_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g282278282316_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop282303282342_ _target282300282337_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx286765286766_))
                    (let ((_e282283282402_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx286765286766_))))
                      (let ((_tl282281282407_
                             (let ()
                               (declare (not safe))
                               (##cdr _e282283282402_)))
                            (_hd282282282405_
                             (let ()
                               (declare (not safe))
                               (##car _e282283282402_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl282281282407_))
                            (let ((_e282286282410_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl282281282407_))))
                              (let ((_tl282284282415_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e282286282410_)))
                                    (_hd282285282413_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e282286282410_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd282285282413_))
                                    (let ((_e282289282418_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd282285282413_))))
                                      (let ((_tl282287282423_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e282289282418_)))
                                            (_hd282288282421_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e282289282418_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl282287282423_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl282284282415_))
                                                (let ((_e282292282426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl282284282415_))))
                                                  (let ((_tl282290282431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e282292282426_)))
                                                        (_hd282291282429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e282292282426_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282290282431_))
                                                        (___kont286767286768_
                                                         _hd282288282421_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd282285282413_))
                                                            (let ((___splice286771286772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd282285282413_ '0))))
                      (let ((_tl282302282339_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice286771286772_ '1)))
                            (_target282300282337_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice286771286772_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl282302282339_))
                            (___match286820286821_
                             _e282283282402_
                             _hd282282282405_
                             _tl282281282407_
                             _e282286282410_
                             _hd282285282413_
                             _tl282284282415_
                             ___splice286771286772_
                             _target282300282337_
                             _tl282302282339_)
                            (let () (declare (not safe)) (_g282278282316_)))))
                    (let () (declare (not safe)) (_g282278282316_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd282285282413_))
                                                    (let ((___splice286771286772_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd282285282413_
                                                              '0))))
                                                      (let ((_tl282302282339_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice286771286772_ '1)))
                    (_target282300282337_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice286771286772_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl282302282339_))
                    (___match286820286821_
                     _e282283282402_
                     _hd282282282405_
                     _tl282281282407_
                     _e282286282410_
                     _hd282285282413_
                     _tl282284282415_
                     ___splice286771286772_
                     _target282300282337_
                     _tl282302282339_)
                    (let () (declare (not safe)) (_g282278282316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g282278282316_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd282285282413_))
                                                (let ((___splice286771286772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd282285282413_
                                                          '0))))
                                                  (let ((_tl282302282339_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice286771286772_
                                                            '1)))
                                                        (_target282300282337_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice286771286772_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282302282339_))
                                                        (___match286820286821_
                                                         _e282283282402_
                                                         _hd282282282405_
                                                         _tl282281282407_
                                                         _e282286282410_
                                                         _hd282285282413_
                                                         _tl282284282415_
                                                         ___splice286771286772_
                                                         _target282300282337_
                                                         _tl282302282339_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g282278282316_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g282278282316_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd282285282413_))
                                        (let ((___splice286771286772_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd282285282413_
                                                  '0))))
                                          (let ((_tl282302282339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice286771286772_
                                                    '1)))
                                                (_target282300282337_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice286771286772_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl282302282339_))
                                                (___match286820286821_
                                                 _e282283282402_
                                                 _hd282282282405_
                                                 _tl282281282407_
                                                 _e282286282410_
                                                 _hd282285282413_
                                                 _tl282284282415_
                                                 ___splice286771286772_
                                                 _target282300282337_
                                                 _tl282302282339_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g282278282316_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g282278282316_))))))
                            (let () (declare (not safe)) (_g282278282316_)))))
                    (let () (declare (not safe)) (_g282278282316_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx281827_)
        (let* ((___stx286823286824_ _stx281827_)
               (_g281831281933_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx286823286824_)))))
          (let ((___kont286825286826_
                 (lambda (_L282223_ _L282224_ _L282225_ _L282226_ _L282227_)
                   (let ((__tmp287103
                          (let ((__tmp287110
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L282226_)))
                                (__tmp287104
                                 (let ((__tmp287109
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L282225_)))
                                       (__tmp287105
                                        (let ((__tmp287108
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L282224_)))
                                              (__tmp287106
                                               (let ((__tmp287107
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L282223_))))
                                                 (declare (not safe))
                                                 (cons __tmp287107 '()))))
                                          (declare (not safe))
                                          (cons __tmp287108 __tmp287106))))
                                   (declare (not safe))
                                   (cons __tmp287109 __tmp287105))))
                            (declare (not safe))
                            (cons __tmp287110 __tmp287104))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287103))))
                (___kont286827286828_
                 (lambda (_L282049_ _L282050_ _L282051_ _L282052_)
                   (let ((__tmp287111
                          (let ((__tmp287117
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L282051_)))
                                (__tmp287112
                                 (let ((__tmp287116
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L282050_)))
                                       (__tmp287113
                                        (let ((__tmp287115
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L282049_)))
                                              (__tmp287114
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp287115 __tmp287114))))
                                   (declare (not safe))
                                   (cons __tmp287116 __tmp287113))))
                            (declare (not safe))
                            (cons __tmp287117 __tmp287112))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287111))))
                (___kont286829286830_ (lambda () '(begin))))
            (let ((___match286958286959_
                   (lambda (_e281840282095_
                            _hd281839282098_
                            _tl281838282100_
                            _e281843282103_
                            _hd281842282106_
                            _tl281841282108_
                            _e281846282111_
                            _hd281845282114_
                            _tl281844282116_
                            _e281849282119_
                            _hd281848282122_
                            _tl281847282124_
                            _e281852282127_
                            _hd281851282130_
                            _tl281850282132_
                            _e281855282135_
                            _hd281854282138_
                            _tl281853282140_
                            _e281858282143_
                            _hd281857282146_
                            _tl281856282148_
                            _e281861282151_
                            _hd281860282154_
                            _tl281859282156_
                            _e281864282159_
                            _hd281863282162_
                            _tl281862282164_
                            _e281867282167_
                            _hd281866282170_
                            _tl281865282172_
                            _e281870282175_
                            _hd281869282178_
                            _tl281868282180_
                            _e281873282183_
                            _hd281872282186_
                            _tl281871282188_
                            _e281876282191_
                            _hd281875282194_
                            _tl281874282196_
                            _e281879282199_
                            _hd281878282202_
                            _tl281877282204_
                            _e281882282207_
                            _hd281881282210_
                            _tl281880282212_
                            _e281885282215_
                            _hd281884282218_
                            _tl281883282220_)
                     (let ((_L282223_ _hd281884282218_)
                           (_L282224_ _hd281875282194_)
                           (_L282225_ _hd281866282170_)
                           (_L282226_ _hd281857282146_)
                           (_L282227_ _hd281848282122_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L282227_
                              'bind-method!))
                           (___kont286825286826_
                            _L282223_
                            _L282224_
                            _L282225_
                            _L282226_
                            _L282227_)
                           (___kont286829286830_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx286823286824_))
                  (let ((_e281840282095_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx286823286824_))))
                    (let ((_tl281838282100_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281840282095_)))
                          (_hd281839282098_
                           (let ()
                             (declare (not safe))
                             (##car _e281840282095_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl281838282100_))
                          (let ((_e281843282103_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl281838282100_))))
                            (let ((_tl281841282108_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281843282103_)))
                                  (_hd281842282106_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281843282103_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd281842282106_))
                                  (let ((_e281846282111_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd281842282106_))))
                                    (let ((_tl281844282116_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281846282111_)))
                                          (_hd281845282114_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281846282111_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd281845282114_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd281845282114_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281844282116_))
                                                  (let ((_e281849282119_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281844282116_))))
                                                    (let ((_tl281847282124_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281849282119_)))
                                                          (_hd281848282122_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281849282119_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl281847282124_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl281841282108_))
                      (let ((_e281852282127_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl281841282108_))))
                        (let ((_tl281850282132_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281852282127_)))
                              (_hd281851282130_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281852282127_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd281851282130_))
                              (let ((_e281855282135_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd281851282130_))))
                                (let ((_tl281853282140_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281855282135_)))
                                      (_hd281854282138_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281855282135_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd281854282138_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd281854282138_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl281853282140_))
                                              (let ((_e281858282143_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl281853282140_))))
                                                (let ((_tl281856282148_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e281858282143_)))
                                                      (_hd281857282146_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e281858282143_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281856282148_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl281850282132_))
                                                          (let ((_e281861282151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl281850282132_))))
                    (let ((_tl281859282156_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281861282151_)))
                          (_hd281860282154_
                           (let ()
                             (declare (not safe))
                             (##car _e281861282151_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd281860282154_))
                          (let ((_e281864282159_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd281860282154_))))
                            (let ((_tl281862282164_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281864282159_)))
                                  (_hd281863282162_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281864282159_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd281863282162_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd281863282162_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl281862282164_))
                                          (let ((_e281867282167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl281862282164_))))
                                            (let ((_tl281865282172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e281867282167_)))
                                                  (_hd281866282170_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e281867282167_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl281865282172_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl281859282156_))
                                                      (let ((_e281870282175_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl281859282156_))))
                (let ((_tl281868282180_
                       (let () (declare (not safe)) (##cdr _e281870282175_)))
                      (_hd281869282178_
                       (let () (declare (not safe)) (##car _e281870282175_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd281869282178_))
                      (let ((_e281873282183_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd281869282178_))))
                        (let ((_tl281871282188_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281873282183_)))
                              (_hd281872282186_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281873282183_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd281872282186_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd281872282186_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl281871282188_))
                                      (let ((_e281876282191_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl281871282188_))))
                                        (let ((_tl281874282196_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e281876282191_)))
                                              (_hd281875282194_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e281876282191_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281874282196_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281868282180_))
                                                  (let ((_e281879282199_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281868282180_))))
                                                    (let ((_tl281877282204_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281879282199_)))
                                                          (_hd281878282202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281879282199_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd281878282202_))
                                                          (let ((_e281882282207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd281878282202_))))
                    (let ((_tl281880282212_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281882282207_)))
                          (_hd281881282210_
                           (let ()
                             (declare (not safe))
                             (##car _e281882282207_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd281881282210_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd281881282210_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl281880282212_))
                                  (let ((_e281885282215_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl281880282212_))))
                                    (let ((_tl281883282220_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281885282215_)))
                                          (_hd281884282218_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281885282215_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl281883282220_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281877282204_))
                                              (___match286958286959_
                                               _e281840282095_
                                               _hd281839282098_
                                               _tl281838282100_
                                               _e281843282103_
                                               _hd281842282106_
                                               _tl281841282108_
                                               _e281846282111_
                                               _hd281845282114_
                                               _tl281844282116_
                                               _e281849282119_
                                               _hd281848282122_
                                               _tl281847282124_
                                               _e281852282127_
                                               _hd281851282130_
                                               _tl281850282132_
                                               _e281855282135_
                                               _hd281854282138_
                                               _tl281853282140_
                                               _e281858282143_
                                               _hd281857282146_
                                               _tl281856282148_
                                               _e281861282151_
                                               _hd281860282154_
                                               _tl281859282156_
                                               _e281864282159_
                                               _hd281863282162_
                                               _tl281862282164_
                                               _e281867282167_
                                               _hd281866282170_
                                               _tl281865282172_
                                               _e281870282175_
                                               _hd281869282178_
                                               _tl281868282180_
                                               _e281873282183_
                                               _hd281872282186_
                                               _tl281871282188_
                                               _e281876282191_
                                               _hd281875282194_
                                               _tl281874282196_
                                               _e281879282199_
                                               _hd281878282202_
                                               _tl281877282204_
                                               _e281882282207_
                                               _hd281881282210_
                                               _tl281880282212_
                                               _e281885282215_
                                               _hd281884282218_
                                               _tl281883282220_)
                                              (___kont286829286830_))
                                          (___kont286829286830_))))
                                  (___kont286829286830_))
                              (___kont286829286830_))
                          (___kont286829286830_))))
                  (___kont286829286830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281868282180_))
                                                      (if (let ((__tmp287118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp287118 'bind-method!))
                  (let ((_L282049_ _hd281875282194_)
                        (_L282050_ _hd281866282170_)
                        (_L282051_ _hd281857282146_)
                        (_L282052_ _hd281848282122_))
                    (___kont286827286828_
                     _L282049_
                     _L282050_
                     _L282051_
                     _L282052_))
                  (___kont286829286830_))
              (___kont286829286830_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont286829286830_))))
                                      (___kont286829286830_))
                                  (___kont286829286830_))
                              (___kont286829286830_))))
                      (___kont286829286830_))))
              (___kont286829286830_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont286829286830_))))
                                          (___kont286829286830_))
                                      (___kont286829286830_))
                                  (___kont286829286830_))))
                          (___kont286829286830_))))
                  (___kont286829286830_))
              (___kont286829286830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont286829286830_))
                                          (___kont286829286830_))
                                      (___kont286829286830_))))
                              (___kont286829286830_))))
                      (___kont286829286830_))
                  (___kont286829286830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont286829286830_))
                                              (___kont286829286830_))
                                          (___kont286829286830_))))
                                  (___kont286829286830_))))
                          (___kont286829286830_))))
                  (___kont286829286830_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self281803_)
        (let* ((_self281804281810_ _self281803_)
               (_E281806281814_
                (lambda () (error '"No clause matching" _self281804281810_)))
               (_K281807281819_
                (lambda (_alias-id281817_)
                  (let ((__tmp287119
                         (let ()
                           (declare (not safe))
                           (cons _alias-id281817_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp287119)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281804281810_ 'gxc#!alias::t))
              (let* ((_e281808281822_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281804281810_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id281825_ _e281808281822_))
                (declare (not safe))
                (_K281807281819_ _alias-id281825_))
              (let () (declare (not safe)) (_E281806281814_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self281594_)
        (let* ((_self281595281610_ _self281594_)
               (_E281597281614_
                (lambda () (error '"No clause matching" _self281595281610_)))
               (_K281598281628_
                (lambda (_methods281617_
                         _metaclass281618_
                         _final?281619_
                         _struct?281620_
                         _constructor281621_
                         _fields281622_
                         _slots281623_
                         _precendence-list281624_
                         _super281625_
                         _id281626_)
                  (let ((__tmp287120
                         (let ((__tmp287121
                                (let ((__tmp287122
                                       (let ((__tmp287123
                                              (let ((__tmp287124
                                                     (let ((__tmp287125
                                                            (let ((__tmp287126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287127
                                  (let ((__tmp287128
                                         (let ((__tmp287129
                                                (let ((__tmp287130
                                                       (if _methods281617_
                                                           (hash->list
                                                            _methods281617_)
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp287130 '()))))
                                           (declare (not safe))
                                           (cons _metaclass281618_
                                                 __tmp287129))))
                                    (declare (not safe))
                                    (cons _final?281619_ __tmp287128))))
                             (declare (not safe))
                             (cons _struct?281620_ __tmp287127))))
                      (declare (not safe))
                      (cons _constructor281621_ __tmp287126))))
               (declare (not safe))
               (cons _fields281622_ __tmp287125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots281623_
                                                      __tmp287124))))
                                         (declare (not safe))
                                         (cons _precendence-list281624_
                                               __tmp287123))))
                                  (declare (not safe))
                                  (cons _super281625_ __tmp287122))))
                           (declare (not safe))
                           (cons _id281626_ __tmp287121))))
                    (declare (not safe))
                    (cons '@class __tmp287120)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281595281610_ 'gxc#!class::t))
              (let* ((_e281599281631_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281595281610_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id281634_ _e281599281631_)
                     (_e281600281636_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281595281610_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super281639_ _e281600281636_)
                     (_e281601281641_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281595281610_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list281644_ _e281601281641_)
                     (_e281602281646_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281595281610_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots281649_ _e281602281646_)
                     (_e281603281651_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281595281610_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields281654_ _e281603281651_)
                     (_e281604281656_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281595281610_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor281659_ _e281604281656_)
                     (_e281605281661_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281595281610_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?281664_ _e281605281661_)
                     (_e281606281666_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281595281610_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?281669_ _e281606281666_)
                     (_e281607281671_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281595281610_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass281674_ _e281607281671_)
                     (_e281608281676_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281595281610_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods281679_ _e281608281676_))
                (declare (not safe))
                (_K281598281628_
                 _methods281679_
                 _metaclass281674_
                 _final?281669_
                 _struct?281664_
                 _constructor281659_
                 _fields281654_
                 _slots281649_
                 _precendence-list281644_
                 _super281639_
                 _id281634_))
              (let () (declare (not safe)) (_E281597281614_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self281448_)
        (let* ((_self281449281455_ _self281448_)
               (_E281451281459_
                (lambda () (error '"No clause matching" _self281449281455_)))
               (_K281452281464_
                (lambda (_klass-id281462_)
                  (let ((__tmp287131
                         (let ()
                           (declare (not safe))
                           (cons _klass-id281462_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp287131)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281449281455_
                 'gxc#!predicate::t))
              (let* ((_e281453281467_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281449281455_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281470_ _e281453281467_))
                (declare (not safe))
                (_K281452281464_ _klass-id281470_))
              (let () (declare (not safe)) (_E281451281459_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self281302_)
        (let* ((_self281303281309_ _self281302_)
               (_E281305281313_
                (lambda () (error '"No clause matching" _self281303281309_)))
               (_K281306281318_
                (lambda (_klass-id281316_)
                  (let ((__tmp287132
                         (let ()
                           (declare (not safe))
                           (cons _klass-id281316_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp287132)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281303281309_
                 'gxc#!constructor::t))
              (let* ((_e281307281321_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281303281309_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281324_ _e281307281321_))
                (declare (not safe))
                (_K281306281318_ _klass-id281324_))
              (let () (declare (not safe)) (_E281305281313_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self281142_)
        (let* ((_self281143281151_ _self281142_)
               (_E281145281155_
                (lambda () (error '"No clause matching" _self281143281151_)))
               (_K281146281162_
                (lambda (_checked?281158_ _slot281159_ _klass-id281160_)
                  (let ((__tmp287133
                         (let ((__tmp287134
                                (let ((__tmp287135
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?281158_ '()))))
                                  (declare (not safe))
                                  (cons _slot281159_ __tmp287135))))
                           (declare (not safe))
                           (cons _klass-id281160_ __tmp287134))))
                    (declare (not safe))
                    (cons '@accessor __tmp287133)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281143281151_
                 'gxc#!accessor::t))
              (let* ((_e281147281165_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281143281151_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281168_ _e281147281165_)
                     (_e281148281170_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281143281151_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot281173_ _e281148281170_)
                     (_e281149281175_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281143281151_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?281178_ _e281149281175_))
                (declare (not safe))
                (_K281146281162_
                 _checked?281178_
                 _slot281173_
                 _klass-id281168_))
              (let () (declare (not safe)) (_E281145281155_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self280982_)
        (let* ((_self280983280991_ _self280982_)
               (_E280985280995_
                (lambda () (error '"No clause matching" _self280983280991_)))
               (_K280986281002_
                (lambda (_checked?280998_ _slot280999_ _klass-id281000_)
                  (let ((__tmp287136
                         (let ((__tmp287137
                                (let ((__tmp287138
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280998_ '()))))
                                  (declare (not safe))
                                  (cons _slot280999_ __tmp287138))))
                           (declare (not safe))
                           (cons _klass-id281000_ __tmp287137))))
                    (declare (not safe))
                    (cons '@mutator __tmp287136)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280983280991_ 'gxc#!mutator::t))
              (let* ((_e280987281005_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280983280991_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281008_ _e280987281005_)
                     (_e280988281010_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280983280991_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot281013_ _e280988281010_)
                     (_e280989281015_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280983280991_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?281018_ _e280989281015_))
                (declare (not safe))
                (_K280986281002_
                 _checked?281018_
                 _slot281013_
                 _klass-id281008_))
              (let () (declare (not safe)) (_E280985280995_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self280808_)
        (let* ((_self280809280819_ _self280808_)
               (_E280811280823_
                (lambda () (error '"No clause matching" _self280809280819_)))
               (_K280812280834_
                (lambda (_typedecl280826_
                         _inline280827_
                         _dispatch280828_
                         _arity280829_)
                  (if _inline280827_
                      (let ((_$e280831_ _typedecl280826_))
                        (if _$e280831_
                            _$e280831_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp287139
                             (let ((__tmp287140
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch280828_ '()))))
                               (declare (not safe))
                               (cons _arity280829_ __tmp287140))))
                        (declare (not safe))
                        (cons '@lambda __tmp287139))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280809280819_ 'gxc#!lambda::t))
              (let* ((_e280813280837_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280809280819_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280814280840_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280809280819_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity280843_ _e280814280840_)
                     (_e280815280845_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280809280819_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch280848_ _e280815280845_)
                     (_e280816280850_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280809280819_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline280853_ _e280816280850_)
                     (_e280817280855_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280809280819_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl280858_ _e280817280855_))
                (declare (not safe))
                (_K280812280834_
                 _typedecl280858_
                 _inline280853_
                 _dispatch280848_
                 _arity280843_))
              (let () (declare (not safe)) (_E280811280823_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self280619_)
        (letrec ((_clause-e280621_
                  (lambda (_clause280651_)
                    (let* ((_clause280652280660_ _clause280651_)
                           (_E280654280664_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause280652280660_)))
                           (_K280655280670_
                            (lambda (_dispatch280667_ _arity280668_)
                              (let ((__tmp287141
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch280667_ '()))))
                                (declare (not safe))
                                (cons _arity280668_ __tmp287141)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause280652280660_
                             'gxc#!lambda::t))
                          (let* ((_e280656280673_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280652280660_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e280657280676_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280652280660_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity280679_ _e280657280676_)
                                 (_e280658280681_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280652280660_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch280684_ _e280658280681_))
                            (declare (not safe))
                            (_K280655280670_ _dispatch280684_ _arity280679_))
                          (let () (declare (not safe)) (_E280654280664_)))))))
          (let* ((_self280622280629_ _self280619_)
                 (_E280624280633_
                  (lambda () (error '"No clause matching" _self280622280629_)))
                 (_K280625280640_
                  (lambda (_clauses280636_)
                    (let ((_clauses280638_
                           (map _clause-e280621_ _clauses280636_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses280638_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self280622280629_
                   'gxc#!case-lambda::t))
                (let* ((_e280626280643_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280622280629_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e280627280646_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280622280629_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses280649_ _e280627280646_))
                  (declare (not safe))
                  (_K280625280640_ _clauses280649_))
                (let () (declare (not safe)) (_E280624280633_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self280462_)
        (let* ((_self280463280471_ _self280462_)
               (_E280465280475_
                (lambda () (error '"No clause matching" _self280463280471_)))
               (_K280466280481_
                (lambda (_dispatch280478_ _table280479_)
                  (let ((__tmp287142
                         (let ((__tmp287143
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch280478_ '()))))
                           (declare (not safe))
                           (cons _table280479_ __tmp287143))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp287142)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280463280471_
                 'gxc#!kw-lambda::t))
              (let* ((_e280467280484_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280463280471_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280468280487_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280463280471_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table280490_ _e280468280487_)
                     (_e280469280492_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280463280471_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch280495_ _e280469280492_))
                (declare (not safe))
                (_K280466280481_ _dispatch280495_ _table280490_))
              (let () (declare (not safe)) (_E280465280475_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self280305_)
        (let* ((_self280306280314_ _self280305_)
               (_E280308280318_
                (lambda () (error '"No clause matching" _self280306280314_)))
               (_K280309280324_
                (lambda (_main280321_ _keys280322_)
                  (let ((__tmp287144
                         (let ((__tmp287145
                                (let ()
                                  (declare (not safe))
                                  (cons _main280321_ '()))))
                           (declare (not safe))
                           (cons _keys280322_ __tmp287145))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp287144)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280306280314_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e280310280327_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280306280314_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280311280330_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280306280314_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys280333_ _e280311280330_)
                     (_e280312280335_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280306280314_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main280338_ _e280312280335_))
                (declare (not safe))
                (_K280309280324_ _main280338_ _keys280333_))
              (let () (declare (not safe)) (_E280308280318_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
