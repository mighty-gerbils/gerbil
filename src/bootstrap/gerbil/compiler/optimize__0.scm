(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708165436)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj297913
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj297913)
               __obj297913)))))
    (define gxc#optimize!
      (lambda (_ctx293038_)
        (let ((__tmp297917
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx293038_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp297919
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp297918
                        (##structure-ref
                         _ctx293038_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp297919 __tmp297918 '#t))
                 (let ((_code293041_
                        (let ((__tmp297920
                               (##structure-ref
                                _ctx293038_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp297920))))
                   (##structure-set!
                    _ctx293038_
                    _code293041_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp297916
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp297915
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp297917
           gxc#current-compile-mutators
           __tmp297916
           gxc#current-compile-local-type
           __tmp297915))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp297921
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp297921 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx292982_)
        (letrec* ((_deps292984_
                   (let* ((_imports293028_
                           (##structure-ref
                            _ctx292982_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e293030_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx292982_))))
                     (if _$e293030_
                         ((lambda (_g293032293034_)
                            (let ()
                              (declare (not safe))
                              (cons _g293032293034_ _imports293028_)))
                          _$e293030_)
                         _imports293028_))))
          (let _lp292986_ ((_rest292988_ _deps292984_))
            (let* ((_rest292989292997_ _rest292988_)
                   (_else292991293005_ (lambda () '#!void))
                   (_K292993293016_
                    (lambda (_rest293008_ _hd293009_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd293009_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp297935
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp297934
                                       (##structure-ref
                                        _hd293009_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp297935 __tmp297934 '#f))
                                '#!void
                                (begin
                                  (let ((_$e293011_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd293009_))))
                                    (if _$e293011_
                                        ((lambda (_pre293014_)
                                           (let ((__tmp297932
                                                  (let ((__tmp297933
                                                         (##structure-ref
                                                          _hd293009_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre293014_
                                                          __tmp297933))))
                                             (declare (not safe))
                                             (_lp292986_ __tmp297932)))
                                         _$e293011_)
                                        (let ((__tmp297931
                                               (##structure-ref
                                                _hd293009_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp292986_ __tmp297931))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd293009_))))
                            (let ()
                              (declare (not safe))
                              (_lp292986_ _rest293008_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd293009_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp297930
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp297929
                                           (##structure-ref
                                            _hd293009_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp297930 __tmp297929 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp297928
                                             (##structure-ref
                                              _hd293009_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp292986_ __tmp297928))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd293009_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp292986_ _rest293008_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd293009_
                                     'gx#module-import::t))
                                  (let ((__tmp297926
                                         (let ((__tmp297927
                                                (##direct-structure-ref
                                                 _hd293009_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp297927 _rest293008_))))
                                    (declare (not safe))
                                    (_lp292986_ __tmp297926))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd293009_
                                         'gx#module-export::t))
                                      (let ((__tmp297924
                                             (let ((__tmp297925
                                                    (##direct-structure-ref
                                                     _hd293009_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp297925
                                                     _rest293008_))))
                                        (declare (not safe))
                                        (_lp292986_ __tmp297924))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd293009_
                                             'gx#import-set::t))
                                          (let ((__tmp297922
                                                 (let ((__tmp297923
                                                        (##direct-structure-ref
                                                         _hd293009_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp297923
                                                         _rest293008_))))
                                            (declare (not safe))
                                            (_lp292986_ __tmp297922))
                                          (error '"Unexpected module import"
                                                 _hd293009_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest292989292997_))
                  (let ((_hd292994293019_
                         (let ()
                           (declare (not safe))
                           (##car _rest292989292997_)))
                        (_tl292995293021_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292989292997_))))
                    (let* ((_hd293024_ _hd292994293019_)
                           (_rest293026_ _tl292995293021_))
                      (declare (not safe))
                      (_K292993293016_ _rest293026_ _hd293024_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx292962_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx292962_
                    'gx#module-context::t))
                 (let ((__tmp297936
                        (##structure-ref
                         _ctx292962_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp297936)))
            '#!void
            (let* ((_ht292964_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id292966_
                    (##structure-ref
                     _ctx292962_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod292968_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht292964_ _id292966_ '#f))))
              (let ((_$e292971_ _mod292968_))
                (if _$e292971_
                    _$e292971_
                    (let* ((_mod292974_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx292962_)))
                           (_val292979_
                            (let ((_$e292976_ _mod292974_))
                              (if _$e292976_ _$e292976_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht292964_ _id292966_ _val292979_))
                      _val292979_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx292960_)
        (if (##structure-ref _ctx292960_ '1 gx#expander-context::t '#f)
            (let ((__tmp297937
                   (##structure-ref
                    _ctx292960_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp297937))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id292937_)
        (letrec ((_catch-e292939_
                  (lambda (_exn292958_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id292937_))
                          (display-exception _exn292958_))
                        '#!void)
                    '#f))
                 (_import-e292940_
                  (lambda ()
                    (let* ((_str-id292943_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id292937_))
                             '".ssxi"))
                           (_artefact-path292951_
                            (let ((_odir292944292946_
                                   (gxc#current-compile-output-dir)))
                              (if _odir292944292946_
                                  (let ((_odir292949_ _odir292944292946_))
                                    (path-expand
                                     (string-append _str-id292943_ '".ss")
                                     _odir292949_))
                                  '#f)))
                           (_library-path292953_
                            (string->symbol
                             (string-append '":" _str-id292943_ '".ss")))
                           (_ssxi-path292955_
                            (if (and _artefact-path292951_
                                     (file-exists? _artefact-path292951_))
                                _artefact-path292951_
                                _library-path292953_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path292955_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path292955_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e292939_ _import-e292940_)))))
    (define gxc#optimize-source
      (lambda (_stx292928_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx292928_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx292928_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx292928_))
        (let* ((_stx292930_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx292928_)))
               (_stx292932_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx292930_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx292932_))
          (let ((_stx292935_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx292932_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx292935_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl292925_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp297938 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl292925_ __tmp297938))
           (let ()
             (declare (not safe))
             (table-set! _tbl292925_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl292925_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl292925_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl292925_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl292925_ '%#call gxc#generate-ssxi-call%))
           _tbl292925_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx292908_ . _args292910_)
        (let ((__tmp297940
               (lambda ()
                 (declare (not safe))
                 (if (null? _args292910_)
                     (gxc#compile-e__0 _stx292908_)
                     (let ((_arg1292915_ (car _args292910_))
                           (_rest292917_ (cdr _args292910_)))
                       (if (null? _rest292917_)
                           (gxc#compile-e__1 _stx292908_ _arg1292915_)
                           (let ((_arg2292920_ (car _rest292917_))
                                 (_rest292922_ (cdr _rest292917_)))
                             (if (null? _rest292922_)
                                 (gxc#compile-e__2
                                  _stx292908_
                                  _arg1292915_
                                  _arg2292920_)
                                 (apply gxc#compile-e
                                        _stx292908_
                                        _arg1292915_
                                        _arg2292920_
                                        _rest292922_))))))))
              (__tmp297939 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp297940
           gxc#current-compile-methods
           __tmp297939))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx292869_)
        (let* ((_g292871292881_
                (lambda (_g292872292878_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g292872292878_))))
               (_g292870292905_
                (lambda (_g292872292884_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g292872292884_))
                      (let ((_e292876292886_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g292872292884_))))
                        (let ((_hd292875292889_
                               (let ()
                                 (declare (not safe))
                                 (##car _e292876292886_)))
                              (_tl292874292891_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e292876292886_))))
                          ((lambda (_L292894_)
                             (let ((__tmp297943
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx292869_))))
                                   (__tmp297941
                                    (let ((__tmp297942
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp297942 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp297943
                                gx#current-expander-phi
                                __tmp297941)))
                           _tl292874292891_)))
                      (let ()
                        (declare (not safe))
                        (_g292871292881_ _g292872292884_))))))
          (declare (not safe))
          (_g292870292905_ _stx292869_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx292809_)
        (let* ((_g292811292825_
                (lambda (_g292812292822_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g292812292822_))))
               (_g292810292866_
                (lambda (_g292812292828_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g292812292828_))
                      (let ((_e292817292830_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g292812292828_))))
                        (let ((_hd292816292833_
                               (let ()
                                 (declare (not safe))
                                 (##car _e292817292830_)))
                              (_tl292815292835_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e292817292830_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl292815292835_))
                              (let ((_e292820292838_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl292815292835_))))
                                (let ((_hd292819292841_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e292820292838_)))
                                      (_tl292818292843_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e292820292838_))))
                                  ((lambda (_L292846_ _L292847_)
                                     (let* ((_ctx292860_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L292847_)))
                                            (_code292862_
                                             (##structure-ref
                                              _ctx292860_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp297944
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code292862_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp297944
                                          gx#current-expander-context
                                          _ctx292860_))))
                                   _tl292818292843_
                                   _hd292819292841_)))
                              (let ()
                                (declare (not safe))
                                (_g292811292825_ _g292812292828_)))))
                      (let ()
                        (declare (not safe))
                        (_g292811292825_ _g292812292828_))))))
          (declare (not safe))
          (_g292810292866_ _stx292809_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx292619_)
        (letrec ((_generate-e292621_
                  (lambda (_id292798_)
                    (let* ((_sym292800_
                            (if (let ((__tmp297945
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp297945))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id292798_))
                                '#f))
                           (_$e292802_
                            (if _sym292800_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym292800_))
                                '#f)))
                      (if _$e292802_
                          ((lambda (_type292805_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym292800_))
                             (let* ((_typedecl292807_
                                     (let ((__method297914
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type292805_
                                               'typedecl))))
                                       (if __method297914
                                           (__method297914 _type292805_)
                                           (error '"Missing method"
                                                  _type292805_
                                                  'typedecl))))
                                    (__tmp297946
                                     (let ((__tmp297947
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl292807_ '()))))
                                       (declare (not safe))
                                       (cons _sym292800_ __tmp297947))))
                               (declare (not safe))
                               (cons 'declare-type __tmp297946)))
                           _$e292802_)
                          '(begin))))))
          (let* ((___stx297612297613_ _stx292619_)
                 (_g292624292662_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx297612297613_)))))
            (let ((___kont297614297615_
                   (lambda (_L292780_)
                     (let ()
                       (declare (not safe))
                       (_generate-e292621_ _L292780_))))
                  (___kont297616297617_
                   (lambda (_L292715_)
                     (let ((_types292741_
                            (map _generate-e292621_
                                 (let ((__tmp297948
                                        (lambda (_g292733292736_
                                                 _g292734292738_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g292733292736_
                                                  _g292734292738_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp297948 '() _L292715_)))))
                       (declare (not safe))
                       (cons 'begin _types292741_)))))
              (let ((___match297667297668_
                     (lambda (_e292642292667_
                              _hd292641292670_
                              _tl292640292672_
                              _e292645292675_
                              _hd292644292678_
                              _tl292643292680_
                              ___splice297618297619_
                              _target292646292683_
                              _tl292648292685_)
                       (letrec ((_loop292649292688_
                                 (lambda (_hd292647292691_ _id292653292693_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd292647292691_))
                                       (let ((_e292650292696_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd292647292691_))))
                                         (let ((_lp-tl292652292701_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e292650292696_)))
                                               (_lp-hd292651292699_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e292650292696_))))
                                           (let ((__tmp297949
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd292651292699_
                                                          _id292653292693_))))
                                             (declare (not safe))
                                             (_loop292649292688_
                                              _lp-tl292652292701_
                                              __tmp297949))))
                                       (let ((_id292654292704_
                                              (reverse _id292653292693_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl292643292680_))
                                             (let ((_e292657292707_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl292643292680_))))
                                               (let ((_tl292655292712_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e292657292707_)))
                                                     (_hd292656292710_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e292657292707_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl292655292712_))
                                                     (___kont297616297617_
                                                      _id292654292704_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g292624292662_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g292624292662_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop292649292688_ _target292646292683_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx297612297613_))
                    (let ((_e292629292748_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx297612297613_))))
                      (let ((_tl292627292753_
                             (let ()
                               (declare (not safe))
                               (##cdr _e292629292748_)))
                            (_hd292628292751_
                             (let ()
                               (declare (not safe))
                               (##car _e292629292748_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl292627292753_))
                            (let ((_e292632292756_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl292627292753_))))
                              (let ((_tl292630292761_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e292632292756_)))
                                    (_hd292631292759_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e292632292756_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd292631292759_))
                                    (let ((_e292635292764_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd292631292759_))))
                                      (let ((_tl292633292769_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e292635292764_)))
                                            (_hd292634292767_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e292635292764_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl292633292769_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl292630292761_))
                                                (let ((_e292638292772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl292630292761_))))
                                                  (let ((_tl292636292777_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e292638292772_)))
                                                        (_hd292637292775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e292638292772_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl292636292777_))
                                                        (___kont297614297615_
                                                         _hd292634292767_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd292631292759_))
                                                            (let ((___splice297618297619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd292631292759_ '0))))
                      (let ((_tl292648292685_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice297618297619_ '1)))
                            (_target292646292683_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice297618297619_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl292648292685_))
                            (___match297667297668_
                             _e292629292748_
                             _hd292628292751_
                             _tl292627292753_
                             _e292632292756_
                             _hd292631292759_
                             _tl292630292761_
                             ___splice297618297619_
                             _target292646292683_
                             _tl292648292685_)
                            (let () (declare (not safe)) (_g292624292662_)))))
                    (let () (declare (not safe)) (_g292624292662_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd292631292759_))
                                                    (let ((___splice297618297619_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd292631292759_
                                                              '0))))
                                                      (let ((_tl292648292685_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice297618297619_ '1)))
                    (_target292646292683_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice297618297619_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl292648292685_))
                    (___match297667297668_
                     _e292629292748_
                     _hd292628292751_
                     _tl292627292753_
                     _e292632292756_
                     _hd292631292759_
                     _tl292630292761_
                     ___splice297618297619_
                     _target292646292683_
                     _tl292648292685_)
                    (let () (declare (not safe)) (_g292624292662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g292624292662_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd292631292759_))
                                                (let ((___splice297618297619_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd292631292759_
                                                          '0))))
                                                  (let ((_tl292648292685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice297618297619_
                                                            '1)))
                                                        (_target292646292683_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice297618297619_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl292648292685_))
                                                        (___match297667297668_
                                                         _e292629292748_
                                                         _hd292628292751_
                                                         _tl292627292753_
                                                         _e292632292756_
                                                         _hd292631292759_
                                                         _tl292630292761_
                                                         ___splice297618297619_
                                                         _target292646292683_
                                                         _tl292648292685_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g292624292662_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g292624292662_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd292631292759_))
                                        (let ((___splice297618297619_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd292631292759_
                                                  '0))))
                                          (let ((_tl292648292685_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice297618297619_
                                                    '1)))
                                                (_target292646292683_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice297618297619_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl292648292685_))
                                                (___match297667297668_
                                                 _e292629292748_
                                                 _hd292628292751_
                                                 _tl292627292753_
                                                 _e292632292756_
                                                 _hd292631292759_
                                                 _tl292630292761_
                                                 ___splice297618297619_
                                                 _target292646292683_
                                                 _tl292648292685_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g292624292662_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g292624292662_))))))
                            (let () (declare (not safe)) (_g292624292662_)))))
                    (let () (declare (not safe)) (_g292624292662_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx292173_)
        (let* ((___stx297670297671_ _stx292173_)
               (_g292177292279_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx297670297671_)))))
          (let ((___kont297672297673_
                 (lambda (_L292569_ _L292570_ _L292571_ _L292572_ _L292573_)
                   (let ((__tmp297950
                          (let ((__tmp297957
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L292572_)))
                                (__tmp297951
                                 (let ((__tmp297956
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L292571_)))
                                       (__tmp297952
                                        (let ((__tmp297955
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L292570_)))
                                              (__tmp297953
                                               (let ((__tmp297954
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L292569_))))
                                                 (declare (not safe))
                                                 (cons __tmp297954 '()))))
                                          (declare (not safe))
                                          (cons __tmp297955 __tmp297953))))
                                   (declare (not safe))
                                   (cons __tmp297956 __tmp297952))))
                            (declare (not safe))
                            (cons __tmp297957 __tmp297951))))
                     (declare (not safe))
                     (cons 'declare-method __tmp297950))))
                (___kont297674297675_
                 (lambda (_L292395_ _L292396_ _L292397_ _L292398_)
                   (let ((__tmp297958
                          (let ((__tmp297964
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L292397_)))
                                (__tmp297959
                                 (let ((__tmp297963
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L292396_)))
                                       (__tmp297960
                                        (let ((__tmp297962
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L292395_)))
                                              (__tmp297961
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp297962 __tmp297961))))
                                   (declare (not safe))
                                   (cons __tmp297963 __tmp297960))))
                            (declare (not safe))
                            (cons __tmp297964 __tmp297959))))
                     (declare (not safe))
                     (cons 'declare-method __tmp297958))))
                (___kont297676297677_ (lambda () '(begin))))
            (let ((___match297805297806_
                   (lambda (_e292186292441_
                            _hd292185292444_
                            _tl292184292446_
                            _e292189292449_
                            _hd292188292452_
                            _tl292187292454_
                            _e292192292457_
                            _hd292191292460_
                            _tl292190292462_
                            _e292195292465_
                            _hd292194292468_
                            _tl292193292470_
                            _e292198292473_
                            _hd292197292476_
                            _tl292196292478_
                            _e292201292481_
                            _hd292200292484_
                            _tl292199292486_
                            _e292204292489_
                            _hd292203292492_
                            _tl292202292494_
                            _e292207292497_
                            _hd292206292500_
                            _tl292205292502_
                            _e292210292505_
                            _hd292209292508_
                            _tl292208292510_
                            _e292213292513_
                            _hd292212292516_
                            _tl292211292518_
                            _e292216292521_
                            _hd292215292524_
                            _tl292214292526_
                            _e292219292529_
                            _hd292218292532_
                            _tl292217292534_
                            _e292222292537_
                            _hd292221292540_
                            _tl292220292542_
                            _e292225292545_
                            _hd292224292548_
                            _tl292223292550_
                            _e292228292553_
                            _hd292227292556_
                            _tl292226292558_
                            _e292231292561_
                            _hd292230292564_
                            _tl292229292566_)
                     (let ((_L292569_ _hd292230292564_)
                           (_L292570_ _hd292221292540_)
                           (_L292571_ _hd292212292516_)
                           (_L292572_ _hd292203292492_)
                           (_L292573_ _hd292194292468_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L292573_
                              'bind-method!))
                           (___kont297672297673_
                            _L292569_
                            _L292570_
                            _L292571_
                            _L292572_
                            _L292573_)
                           (___kont297676297677_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx297670297671_))
                  (let ((_e292186292441_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx297670297671_))))
                    (let ((_tl292184292446_
                           (let ()
                             (declare (not safe))
                             (##cdr _e292186292441_)))
                          (_hd292185292444_
                           (let ()
                             (declare (not safe))
                             (##car _e292186292441_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl292184292446_))
                          (let ((_e292189292449_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl292184292446_))))
                            (let ((_tl292187292454_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e292189292449_)))
                                  (_hd292188292452_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e292189292449_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd292188292452_))
                                  (let ((_e292192292457_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd292188292452_))))
                                    (let ((_tl292190292462_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e292192292457_)))
                                          (_hd292191292460_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e292192292457_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd292191292460_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd292191292460_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl292190292462_))
                                                  (let ((_e292195292465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl292190292462_))))
                                                    (let ((_tl292193292470_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e292195292465_)))
                                                          (_hd292194292468_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e292195292465_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl292193292470_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl292187292454_))
                      (let ((_e292198292473_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl292187292454_))))
                        (let ((_tl292196292478_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e292198292473_)))
                              (_hd292197292476_
                               (let ()
                                 (declare (not safe))
                                 (##car _e292198292473_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd292197292476_))
                              (let ((_e292201292481_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd292197292476_))))
                                (let ((_tl292199292486_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e292201292481_)))
                                      (_hd292200292484_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e292201292481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd292200292484_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd292200292484_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl292199292486_))
                                              (let ((_e292204292489_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl292199292486_))))
                                                (let ((_tl292202292494_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e292204292489_)))
                                                      (_hd292203292492_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e292204292489_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl292202292494_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl292196292478_))
                                                          (let ((_e292207292497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl292196292478_))))
                    (let ((_tl292205292502_
                           (let ()
                             (declare (not safe))
                             (##cdr _e292207292497_)))
                          (_hd292206292500_
                           (let ()
                             (declare (not safe))
                             (##car _e292207292497_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd292206292500_))
                          (let ((_e292210292505_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd292206292500_))))
                            (let ((_tl292208292510_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e292210292505_)))
                                  (_hd292209292508_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e292210292505_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd292209292508_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd292209292508_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl292208292510_))
                                          (let ((_e292213292513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl292208292510_))))
                                            (let ((_tl292211292518_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e292213292513_)))
                                                  (_hd292212292516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e292213292513_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl292211292518_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl292205292502_))
                                                      (let ((_e292216292521_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl292205292502_))))
                (let ((_tl292214292526_
                       (let () (declare (not safe)) (##cdr _e292216292521_)))
                      (_hd292215292524_
                       (let () (declare (not safe)) (##car _e292216292521_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd292215292524_))
                      (let ((_e292219292529_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd292215292524_))))
                        (let ((_tl292217292534_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e292219292529_)))
                              (_hd292218292532_
                               (let ()
                                 (declare (not safe))
                                 (##car _e292219292529_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd292218292532_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd292218292532_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl292217292534_))
                                      (let ((_e292222292537_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl292217292534_))))
                                        (let ((_tl292220292542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e292222292537_)))
                                              (_hd292221292540_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e292222292537_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl292220292542_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl292214292526_))
                                                  (let ((_e292225292545_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl292214292526_))))
                                                    (let ((_tl292223292550_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e292225292545_)))
                                                          (_hd292224292548_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e292225292545_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd292224292548_))
                                                          (let ((_e292228292553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd292224292548_))))
                    (let ((_tl292226292558_
                           (let ()
                             (declare (not safe))
                             (##cdr _e292228292553_)))
                          (_hd292227292556_
                           (let ()
                             (declare (not safe))
                             (##car _e292228292553_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd292227292556_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd292227292556_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl292226292558_))
                                  (let ((_e292231292561_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl292226292558_))))
                                    (let ((_tl292229292566_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e292231292561_)))
                                          (_hd292230292564_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e292231292561_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl292229292566_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl292223292550_))
                                              (___match297805297806_
                                               _e292186292441_
                                               _hd292185292444_
                                               _tl292184292446_
                                               _e292189292449_
                                               _hd292188292452_
                                               _tl292187292454_
                                               _e292192292457_
                                               _hd292191292460_
                                               _tl292190292462_
                                               _e292195292465_
                                               _hd292194292468_
                                               _tl292193292470_
                                               _e292198292473_
                                               _hd292197292476_
                                               _tl292196292478_
                                               _e292201292481_
                                               _hd292200292484_
                                               _tl292199292486_
                                               _e292204292489_
                                               _hd292203292492_
                                               _tl292202292494_
                                               _e292207292497_
                                               _hd292206292500_
                                               _tl292205292502_
                                               _e292210292505_
                                               _hd292209292508_
                                               _tl292208292510_
                                               _e292213292513_
                                               _hd292212292516_
                                               _tl292211292518_
                                               _e292216292521_
                                               _hd292215292524_
                                               _tl292214292526_
                                               _e292219292529_
                                               _hd292218292532_
                                               _tl292217292534_
                                               _e292222292537_
                                               _hd292221292540_
                                               _tl292220292542_
                                               _e292225292545_
                                               _hd292224292548_
                                               _tl292223292550_
                                               _e292228292553_
                                               _hd292227292556_
                                               _tl292226292558_
                                               _e292231292561_
                                               _hd292230292564_
                                               _tl292229292566_)
                                              (___kont297676297677_))
                                          (___kont297676297677_))))
                                  (___kont297676297677_))
                              (___kont297676297677_))
                          (___kont297676297677_))))
                  (___kont297676297677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl292214292526_))
                                                      (if (let ((__tmp297965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp297965 'bind-method!))
                  (let ((_L292395_ _hd292221292540_)
                        (_L292396_ _hd292212292516_)
                        (_L292397_ _hd292203292492_)
                        (_L292398_ _hd292194292468_))
                    (___kont297674297675_
                     _L292395_
                     _L292396_
                     _L292397_
                     _L292398_))
                  (___kont297676297677_))
              (___kont297676297677_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont297676297677_))))
                                      (___kont297676297677_))
                                  (___kont297676297677_))
                              (___kont297676297677_))))
                      (___kont297676297677_))))
              (___kont297676297677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont297676297677_))))
                                          (___kont297676297677_))
                                      (___kont297676297677_))
                                  (___kont297676297677_))))
                          (___kont297676297677_))))
                  (___kont297676297677_))
              (___kont297676297677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont297676297677_))
                                          (___kont297676297677_))
                                      (___kont297676297677_))))
                              (___kont297676297677_))))
                      (___kont297676297677_))
                  (___kont297676297677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont297676297677_))
                                              (___kont297676297677_))
                                          (___kont297676297677_))))
                                  (___kont297676297677_))))
                          (___kont297676297677_))))
                  (___kont297676297677_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self292149_)
        (let* ((_self292150292156_ _self292149_)
               (_E292152292160_
                (lambda () (error '"No clause matching" _self292150292156_)))
               (_K292153292165_
                (lambda (_alias-id292163_)
                  (let ((__tmp297966
                         (let ()
                           (declare (not safe))
                           (cons _alias-id292163_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp297966)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self292150292156_ 'gxc#!alias::t))
              (let* ((_e292154292168_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292150292156_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id292171_ _e292154292168_))
                (declare (not safe))
                (_K292153292165_ _alias-id292171_))
              (let () (declare (not safe)) (_E292152292160_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self291940_)
        (let* ((_self291941291956_ _self291940_)
               (_E291943291960_
                (lambda () (error '"No clause matching" _self291941291956_)))
               (_K291944291974_
                (lambda (_methods291963_
                         _metaclass291964_
                         _final?291965_
                         _struct?291966_
                         _constructor291967_
                         _fields291968_
                         _slots291969_
                         _precendence-list291970_
                         _super291971_
                         _id291972_)
                  (let ((__tmp297967
                         (let ((__tmp297968
                                (let ((__tmp297969
                                       (let ((__tmp297970
                                              (let ((__tmp297971
                                                     (let ((__tmp297972
                                                            (let ((__tmp297973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp297974
                                  (let ((__tmp297975
                                         (let ((__tmp297976
                                                (let ((__tmp297977
                                                       (if _methods291963_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (table->list
                                                              _methods291963_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp297977 '()))))
                                           (declare (not safe))
                                           (cons _metaclass291964_
                                                 __tmp297976))))
                                    (declare (not safe))
                                    (cons _final?291965_ __tmp297975))))
                             (declare (not safe))
                             (cons _struct?291966_ __tmp297974))))
                      (declare (not safe))
                      (cons _constructor291967_ __tmp297973))))
               (declare (not safe))
               (cons _fields291968_ __tmp297972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots291969_
                                                      __tmp297971))))
                                         (declare (not safe))
                                         (cons _precendence-list291970_
                                               __tmp297970))))
                                  (declare (not safe))
                                  (cons _super291971_ __tmp297969))))
                           (declare (not safe))
                           (cons _id291972_ __tmp297968))))
                    (declare (not safe))
                    (cons '@class __tmp297967)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self291941291956_ 'gxc#!class::t))
              (let* ((_e291945291977_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291941291956_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id291980_ _e291945291977_)
                     (_e291946291982_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291941291956_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super291985_ _e291946291982_)
                     (_e291947291987_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291941291956_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list291990_ _e291947291987_)
                     (_e291948291992_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291941291956_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots291995_ _e291948291992_)
                     (_e291949291997_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291941291956_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields292000_ _e291949291997_)
                     (_e291950292002_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291941291956_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor292005_ _e291950292002_)
                     (_e291951292007_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291941291956_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?292010_ _e291951292007_)
                     (_e291952292012_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291941291956_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?292015_ _e291952292012_)
                     (_e291953292017_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291941291956_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass292020_ _e291953292017_)
                     (_e291954292022_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291941291956_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods292025_ _e291954292022_))
                (declare (not safe))
                (_K291944291974_
                 _methods292025_
                 _metaclass292020_
                 _final?292015_
                 _struct?292010_
                 _constructor292005_
                 _fields292000_
                 _slots291995_
                 _precendence-list291990_
                 _super291985_
                 _id291980_))
              (let () (declare (not safe)) (_E291943291960_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self291794_)
        (let* ((_self291795291801_ _self291794_)
               (_E291797291805_
                (lambda () (error '"No clause matching" _self291795291801_)))
               (_K291798291810_
                (lambda (_klass-id291808_)
                  (let ((__tmp297978
                         (let ()
                           (declare (not safe))
                           (cons _klass-id291808_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp297978)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self291795291801_
                 'gxc#!predicate::t))
              (let* ((_e291799291813_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291795291801_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id291816_ _e291799291813_))
                (declare (not safe))
                (_K291798291810_ _klass-id291816_))
              (let () (declare (not safe)) (_E291797291805_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self291648_)
        (let* ((_self291649291655_ _self291648_)
               (_E291651291659_
                (lambda () (error '"No clause matching" _self291649291655_)))
               (_K291652291664_
                (lambda (_klass-id291662_)
                  (let ((__tmp297979
                         (let ()
                           (declare (not safe))
                           (cons _klass-id291662_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp297979)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self291649291655_
                 'gxc#!constructor::t))
              (let* ((_e291653291667_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291649291655_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id291670_ _e291653291667_))
                (declare (not safe))
                (_K291652291664_ _klass-id291670_))
              (let () (declare (not safe)) (_E291651291659_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self291488_)
        (let* ((_self291489291497_ _self291488_)
               (_E291491291501_
                (lambda () (error '"No clause matching" _self291489291497_)))
               (_K291492291508_
                (lambda (_checked?291504_ _slot291505_ _klass-id291506_)
                  (let ((__tmp297980
                         (let ((__tmp297981
                                (let ((__tmp297982
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?291504_ '()))))
                                  (declare (not safe))
                                  (cons _slot291505_ __tmp297982))))
                           (declare (not safe))
                           (cons _klass-id291506_ __tmp297981))))
                    (declare (not safe))
                    (cons '@accessor __tmp297980)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self291489291497_
                 'gxc#!accessor::t))
              (let* ((_e291493291511_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291489291497_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id291514_ _e291493291511_)
                     (_e291494291516_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291489291497_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot291519_ _e291494291516_)
                     (_e291495291521_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291489291497_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?291524_ _e291495291521_))
                (declare (not safe))
                (_K291492291508_
                 _checked?291524_
                 _slot291519_
                 _klass-id291514_))
              (let () (declare (not safe)) (_E291491291501_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self291328_)
        (let* ((_self291329291337_ _self291328_)
               (_E291331291341_
                (lambda () (error '"No clause matching" _self291329291337_)))
               (_K291332291348_
                (lambda (_checked?291344_ _slot291345_ _klass-id291346_)
                  (let ((__tmp297983
                         (let ((__tmp297984
                                (let ((__tmp297985
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?291344_ '()))))
                                  (declare (not safe))
                                  (cons _slot291345_ __tmp297985))))
                           (declare (not safe))
                           (cons _klass-id291346_ __tmp297984))))
                    (declare (not safe))
                    (cons '@mutator __tmp297983)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self291329291337_ 'gxc#!mutator::t))
              (let* ((_e291333291351_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291329291337_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id291354_ _e291333291351_)
                     (_e291334291356_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291329291337_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot291359_ _e291334291356_)
                     (_e291335291361_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291329291337_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?291364_ _e291335291361_))
                (declare (not safe))
                (_K291332291348_
                 _checked?291364_
                 _slot291359_
                 _klass-id291354_))
              (let () (declare (not safe)) (_E291331291341_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self291154_)
        (let* ((_self291155291165_ _self291154_)
               (_E291157291169_
                (lambda () (error '"No clause matching" _self291155291165_)))
               (_K291158291180_
                (lambda (_typedecl291172_
                         _inline291173_
                         _dispatch291174_
                         _arity291175_)
                  (if _inline291173_
                      (let ((_$e291177_ _typedecl291172_))
                        (if _$e291177_
                            _$e291177_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp297986
                             (let ((__tmp297987
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch291174_ '()))))
                               (declare (not safe))
                               (cons _arity291175_ __tmp297987))))
                        (declare (not safe))
                        (cons '@lambda __tmp297986))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self291155291165_ 'gxc#!lambda::t))
              (let* ((_e291159291183_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291155291165_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e291160291186_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291155291165_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity291189_ _e291160291186_)
                     (_e291161291191_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291155291165_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch291194_ _e291161291191_)
                     (_e291162291196_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291155291165_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline291199_ _e291162291196_)
                     (_e291163291201_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291155291165_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl291204_ _e291163291201_))
                (declare (not safe))
                (_K291158291180_
                 _typedecl291204_
                 _inline291199_
                 _dispatch291194_
                 _arity291189_))
              (let () (declare (not safe)) (_E291157291169_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self290965_)
        (letrec ((_clause-e290967_
                  (lambda (_clause290997_)
                    (let* ((_clause290998291006_ _clause290997_)
                           (_E291000291010_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause290998291006_)))
                           (_K291001291016_
                            (lambda (_dispatch291013_ _arity291014_)
                              (let ((__tmp297988
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch291013_ '()))))
                                (declare (not safe))
                                (cons _arity291014_ __tmp297988)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause290998291006_
                             'gxc#!lambda::t))
                          (let* ((_e291002291019_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause290998291006_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e291003291022_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause290998291006_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity291025_ _e291003291022_)
                                 (_e291004291027_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause290998291006_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch291030_ _e291004291027_))
                            (declare (not safe))
                            (_K291001291016_ _dispatch291030_ _arity291025_))
                          (let () (declare (not safe)) (_E291000291010_)))))))
          (let* ((_self290968290975_ _self290965_)
                 (_E290970290979_
                  (lambda () (error '"No clause matching" _self290968290975_)))
                 (_K290971290986_
                  (lambda (_clauses290982_)
                    (let ((_clauses290984_
                           (map _clause-e290967_ _clauses290982_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses290984_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self290968290975_
                   'gxc#!case-lambda::t))
                (let* ((_e290972290989_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self290968290975_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e290973290992_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self290968290975_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses290995_ _e290973290992_))
                  (declare (not safe))
                  (_K290971290986_ _clauses290995_))
                (let () (declare (not safe)) (_E290970290979_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self290808_)
        (let* ((_self290809290817_ _self290808_)
               (_E290811290821_
                (lambda () (error '"No clause matching" _self290809290817_)))
               (_K290812290827_
                (lambda (_dispatch290824_ _table290825_)
                  (let ((__tmp297989
                         (let ((__tmp297990
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch290824_ '()))))
                           (declare (not safe))
                           (cons _table290825_ __tmp297990))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp297989)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self290809290817_
                 'gxc#!kw-lambda::t))
              (let* ((_e290813290830_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290809290817_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e290814290833_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290809290817_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table290836_ _e290814290833_)
                     (_e290815290838_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290809290817_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch290841_ _e290815290838_))
                (declare (not safe))
                (_K290812290827_ _dispatch290841_ _table290836_))
              (let () (declare (not safe)) (_E290811290821_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self290651_)
        (let* ((_self290652290660_ _self290651_)
               (_E290654290664_
                (lambda () (error '"No clause matching" _self290652290660_)))
               (_K290655290670_
                (lambda (_main290667_ _keys290668_)
                  (let ((__tmp297991
                         (let ((__tmp297992
                                (let ()
                                  (declare (not safe))
                                  (cons _main290667_ '()))))
                           (declare (not safe))
                           (cons _keys290668_ __tmp297992))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp297991)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self290652290660_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e290656290673_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290652290660_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e290657290676_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290652290660_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys290679_ _e290657290676_)
                     (_e290658290681_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290652290660_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main290684_ _e290658290681_))
                (declare (not safe))
                (_K290655290670_ _main290684_ _keys290679_))
              (let () (declare (not safe)) (_E290654290664_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
