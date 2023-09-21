(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1695292410)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj67880 (make-object gxc#optimizer-info::t '3)))
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-info:::init! __obj67880))
               __obj67880)))))
    (define gxc#optimize!
      (lambda (_ctx67573_)
        (let ((__tmp67884
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx67573_))
                 (let ((__tmp67886
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp67885
                        (##structure-ref
                         _ctx67573_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp67886 __tmp67885 '#t))
                 (let ((_code67576_
                        (let ((__tmp67887
                               (##structure-ref
                                _ctx67573_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp67887))))
                   (##structure-set!
                    _ctx67573_
                    _code67576_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp67883
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp67882
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp67884
           gxc#current-compile-mutators
           __tmp67883
           gxc#current-compile-local-type
           __tmp67882))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx67518_)
        (letrec* ((_deps67520_
                   (let* ((_imports67564_
                           (##structure-ref
                            _ctx67518_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e67566_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx67518_))))
                     (if _$e67566_
                         ((lambda (_g6756867570_)
                            (let ()
                              (declare (not safe))
                              (cons _g6756867570_ _imports67564_)))
                          _$e67566_)
                         _imports67564_))))
          (let _lp67522_ ((_rest67524_ _deps67520_))
            (let* ((_rest6752567533_ _rest67524_)
                   (_else6752767541_ (lambda () '#!void))
                   (_K6752967552_
                    (lambda (_rest67544_ _hd67545_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd67545_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp67901
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp67900
                                       (##structure-ref
                                        _hd67545_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp67901 __tmp67900 '#f))
                                '#!void
                                (begin
                                  (let ((_$e67547_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd67545_))))
                                    (if _$e67547_
                                        ((lambda (_pre67550_)
                                           (let ((__tmp67898
                                                  (let ((__tmp67899
                                                         (##structure-ref
                                                          _hd67545_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre67550_
                                                          __tmp67899))))
                                             (declare (not safe))
                                             (_lp67522_ __tmp67898)))
                                         _$e67547_)
                                        (let ((__tmp67897
                                               (##structure-ref
                                                _hd67545_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp67522_ __tmp67897))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd67545_))))
                            (let ()
                              (declare (not safe))
                              (_lp67522_ _rest67544_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd67545_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp67896
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp67895
                                           (##structure-ref
                                            _hd67545_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp67896 __tmp67895 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp67894
                                             (##structure-ref
                                              _hd67545_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp67522_ __tmp67894))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd67545_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp67522_ _rest67544_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd67545_
                                     'gx#module-import::t))
                                  (let ((__tmp67892
                                         (let ((__tmp67893
                                                (##direct-structure-ref
                                                 _hd67545_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp67893 _rest67544_))))
                                    (declare (not safe))
                                    (_lp67522_ __tmp67892))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd67545_
                                         'gx#module-export::t))
                                      (let ((__tmp67890
                                             (let ((__tmp67891
                                                    (##direct-structure-ref
                                                     _hd67545_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp67891 _rest67544_))))
                                        (declare (not safe))
                                        (_lp67522_ __tmp67890))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd67545_
                                             'gx#import-set::t))
                                          (let ((__tmp67888
                                                 (let ((__tmp67889
                                                        (##direct-structure-ref
                                                         _hd67545_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp67889
                                                         _rest67544_))))
                                            (declare (not safe))
                                            (_lp67522_ __tmp67888))
                                          (error '"Unexpected module import"
                                                 _hd67545_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6752567533_))
                  (let ((_hd6753067555_
                         (let ()
                           (declare (not safe))
                           (##car _rest6752567533_)))
                        (_tl6753167557_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6752567533_))))
                    (let* ((_hd67560_ _hd6753067555_)
                           (_rest67562_ _tl6753167557_))
                      (declare (not safe))
                      (_K6752967552_ _rest67562_ _hd67560_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx67498_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of? _ctx67498_ 'gx#module-context::t))
                 (let ((__tmp67902
                        (##structure-ref
                         _ctx67498_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp67902)))
            '#!void
            (let* ((_ht67500_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id67502_
                    (##structure-ref _ctx67498_ '1 gx#expander-context::t '#f))
                   (_mod67504_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht67500_ _id67502_ '#f))))
              (let ((_$e67507_ _mod67504_))
                (if _$e67507_
                    _$e67507_
                    (let* ((_mod67510_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx67498_)))
                           (_val67515_
                            (let ((_$e67512_ _mod67510_))
                              (if _$e67512_ _$e67512_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht67500_ _id67502_ _val67515_))
                      _val67515_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx67475_)
        (letrec ((_catch-e67477_
                  (lambda (_exn67496_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx67475_
                            '1
                            gx#expander-context::t
                            '#f))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn67496_)))
                        '#!void)
                    '#f))
                 (_import-e67478_
                  (lambda ()
                    (let* ((_str-id67481_
                            (string-append
                             (let ((__tmp67903
                                    (##structure-ref
                                     _ctx67475_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#module-id->path-string __tmp67903))
                             '".ssxi"))
                           (_artefact-path67489_
                            (let ((_odir6748267484_
                                   (gxc#current-compile-output-dir)))
                              (if _odir6748267484_
                                  (let* ((_odir67487_ _odir6748267484_)
                                         (__tmp67904
                                          (string-append
                                           _str-id67481_
                                           '".ss")))
                                    (declare (not safe))
                                    (path-expand __tmp67904 _odir67487_))
                                  '#f)))
                           (_library-path67491_
                            (let ((__tmp67905
                                   (string-append '":" _str-id67481_ '".ss")))
                              (declare (not safe))
                              (string->symbol __tmp67905)))
                           (_ssxi-path67493_
                            (if (and _artefact-path67489_
                                     (let ()
                                       (declare (not safe))
                                       (file-exists? _artefact-path67489_)))
                                _artefact-path67489_
                                _library-path67491_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"Loading ssxi module " _ssxi-path67493_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path67493_ '#t '#t))))))
          (if (##structure-ref _ctx67475_ '1 gx#expander-context::t '#f)
              (let ()
                (declare (not safe))
                (with-exception-catcher _catch-e67477_ _import-e67478_))
              '#f))))
    (define gxc#optimize-source
      (lambda (_stx67466_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx67466_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx67466_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx67466_))
        (let* ((_stx67468_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx67466_)))
               (_stx67470_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx67468_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx67470_))
          (let ((_stx67473_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx67470_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx67473_)))))
    (define gxc#&generate-ssxi
      (let ((__tmp67906
             (lambda ()
               (let ((_tbl67463_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp67907
                        (let ()
                          (declare (not safe))
                          (force gxc#&generate-runtime-empty))))
                   (declare (not safe))
                   (hash-copy! _tbl67463_ __tmp67907))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl67463_
                    '%#begin
                    gxc#generate-runtime-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl67463_
                    '%#begin-syntax
                    gxc#generate-ssxi-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl67463_ '%#module gxc#generate-ssxi-module%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl67463_
                    '%#define-values
                    gxc#generate-ssxi-define-values%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl67463_ '%#call gxc#generate-ssxi-call%))
                 _tbl67463_))))
        (declare (not safe))
        (make-promise __tmp67906)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx67456_ . _args67458_)
        (let ((__tmp67909
               (lambda () (apply gxc#compile-e _stx67456_ _args67458_)))
              (__tmp67908
               (let () (declare (not safe)) (force gxc#&generate-ssxi))))
          (declare (not safe))
          (call-with-parameters
           __tmp67909
           gxc#current-compile-methods
           __tmp67908))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx67417_)
        (let* ((_g6741967429_
                (lambda (_g6742067426_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g6742067426_))))
               (_g6741867453_
                (lambda (_g6742067432_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g6742067432_))
                      (let ((_e6742467434_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g6742067432_))))
                        (let ((_hd6742367437_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6742467434_)))
                              (_tl6742267439_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6742467434_))))
                          ((lambda (_L67442_)
                             (let ((__tmp67912
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx67417_))))
                                   (__tmp67910
                                    (let ((__tmp67911
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp67911 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp67912
                                gx#current-expander-phi
                                __tmp67910)))
                           _tl6742267439_)))
                      (let ()
                        (declare (not safe))
                        (_g6741967429_ _g6742067432_))))))
          (declare (not safe))
          (_g6741867453_ _stx67417_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx67357_)
        (let* ((_g6735967373_
                (lambda (_g6736067370_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g6736067370_))))
               (_g6735867414_
                (lambda (_g6736067376_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g6736067376_))
                      (let ((_e6736567378_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g6736067376_))))
                        (let ((_hd6736467381_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6736567378_)))
                              (_tl6736367383_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6736567378_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl6736367383_))
                              (let ((_e6736867386_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl6736367383_))))
                                (let ((_hd6736767389_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6736867386_)))
                                      (_tl6736667391_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6736867386_))))
                                  ((lambda (_L67394_ _L67395_)
                                     (let* ((_ctx67408_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L67395_)))
                                            (_code67410_
                                             (##structure-ref
                                              _ctx67408_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp67913
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e
                                                   _code67410_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp67913
                                          gx#current-expander-context
                                          _ctx67408_))))
                                   _tl6736667391_
                                   _hd6736767389_)))
                              (let ()
                                (declare (not safe))
                                (_g6735967373_ _g6736067376_)))))
                      (let ()
                        (declare (not safe))
                        (_g6735967373_ _g6736067376_))))))
          (declare (not safe))
          (_g6735867414_ _stx67357_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx67167_)
        (letrec ((_generate-e67169_
                  (lambda (_id67346_)
                    (let* ((_sym67348_
                            (if (let ((__tmp67914
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp67914))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id67346_))
                                '#f))
                           (_$e67350_
                            (if _sym67348_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym67348_))
                                '#f)))
                      (if _$e67350_
                          ((lambda (_type67353_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym67348_))
                             (let* ((_typedecl67355_
                                     (let ((__method67881
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type67353_
                                               'typedecl))))
                                       (if __method67881
                                           (__method67881 _type67353_)
                                           (error '"Missing method"
                                                  _type67353_
                                                  'typedecl))))
                                    (__tmp67915
                                     (let ((__tmp67916
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl67355_ '()))))
                                       (declare (not safe))
                                       (cons _sym67348_ __tmp67916))))
                               (declare (not safe))
                               (cons 'declare-type __tmp67915)))
                           _$e67350_)
                          '(begin))))))
          (let* ((___stx6757967580_ _stx67167_)
                 (_g6717267210_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx6757967580_)))))
            (let ((___kont6758167582_
                   (lambda (_L67328_)
                     (let ()
                       (declare (not safe))
                       (_generate-e67169_ _L67328_))))
                  (___kont6758367584_
                   (lambda (_L67263_)
                     (let ((_types67289_
                            (let ((__tmp67917
                                   (let ((__tmp67918
                                          (lambda (_g6728167284_ _g6728267286_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g6728167284_
                                                    _g6728267286_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp67918 '() _L67263_))))
                              (declare (not safe))
                              (map _generate-e67169_ __tmp67917))))
                       (declare (not safe))
                       (cons 'begin _types67289_)))))
              (let ((___match6763467635_
                     (lambda (_e6719067215_
                              _hd6718967218_
                              _tl6718867220_
                              _e6719367223_
                              _hd6719267226_
                              _tl6719167228_
                              ___splice6758567586_
                              _target6719467231_
                              _tl6719667233_)
                       (letrec ((_loop6719767236_
                                 (lambda (_hd6719567239_ _id6720167241_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd6719567239_))
                                       (let ((_e6719867244_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd6719567239_))))
                                         (let ((_lp-tl6720067249_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e6719867244_)))
                                               (_lp-hd6719967247_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e6719867244_))))
                                           (let ((__tmp67919
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd6719967247_
                                                          _id6720167241_))))
                                             (declare (not safe))
                                             (_loop6719767236_
                                              _lp-tl6720067249_
                                              __tmp67919))))
                                       (let ((_id6720267252_
                                              (let ()
                                                (declare (not safe))
                                                (reverse _id6720167241_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl6719167228_))
                                             (let ((_e6720567255_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl6719167228_))))
                                               (let ((_tl6720367260_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e6720567255_)))
                                                     (_hd6720467258_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e6720567255_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl6720367260_))
                                                     (___kont6758367584_
                                                      _id6720267252_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g6717267210_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g6717267210_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop6719767236_ _target6719467231_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx6757967580_))
                    (let ((_e6717767296_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx6757967580_))))
                      (let ((_tl6717567301_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6717767296_)))
                            (_hd6717667299_
                             (let ()
                               (declare (not safe))
                               (##car _e6717767296_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6717567301_))
                            (let ((_e6718067304_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl6717567301_))))
                              (let ((_tl6717867309_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6718067304_)))
                                    (_hd6717967307_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6718067304_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd6717967307_))
                                    (let ((_e6718367312_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd6717967307_))))
                                      (let ((_tl6718167317_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6718367312_)))
                                            (_hd6718267315_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6718367312_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl6718167317_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl6717867309_))
                                                (let ((_e6718667320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl6717867309_))))
                                                  (let ((_tl6718467325_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6718667320_)))
                                                        (_hd6718567323_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6718667320_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6718467325_))
                                                        (___kont6758167582_
                                                         _hd6718267315_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd6717967307_))
                                                            (let ((___splice6758567586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd6717967307_ '0))))
                      (let ((_tl6719667233_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6758567586_ '1)))
                            (_target6719467231_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6758567586_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl6719667233_))
                            (___match6763467635_
                             _e6717767296_
                             _hd6717667299_
                             _tl6717567301_
                             _e6718067304_
                             _hd6717967307_
                             _tl6717867309_
                             ___splice6758567586_
                             _target6719467231_
                             _tl6719667233_)
                            (let () (declare (not safe)) (_g6717267210_)))))
                    (let () (declare (not safe)) (_g6717267210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd6717967307_))
                                                    (let ((___splice6758567586_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd6717967307_
                                                              '0))))
                                                      (let ((_tl6719667233_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6758567586_ '1)))
                    (_target6719467231_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6758567586_ '0))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl6719667233_))
                    (___match6763467635_
                     _e6717767296_
                     _hd6717667299_
                     _tl6717567301_
                     _e6718067304_
                     _hd6717967307_
                     _tl6717867309_
                     ___splice6758567586_
                     _target6719467231_
                     _tl6719667233_)
                    (let () (declare (not safe)) (_g6717267210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g6717267210_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd6717967307_))
                                                (let ((___splice6758567586_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd6717967307_
                                                          '0))))
                                                  (let ((_tl6719667233_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6758567586_
                                                            '1)))
                                                        (_target6719467231_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6758567586_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6719667233_))
                                                        (___match6763467635_
                                                         _e6717767296_
                                                         _hd6717667299_
                                                         _tl6717567301_
                                                         _e6718067304_
                                                         _hd6717967307_
                                                         _tl6717867309_
                                                         ___splice6758567586_
                                                         _target6719467231_
                                                         _tl6719667233_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g6717267210_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g6717267210_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd6717967307_))
                                        (let ((___splice6758567586_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd6717967307_
                                                  '0))))
                                          (let ((_tl6719667233_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6758567586_
                                                    '1)))
                                                (_target6719467231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6758567586_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl6719667233_))
                                                (___match6763467635_
                                                 _e6717767296_
                                                 _hd6717667299_
                                                 _tl6717567301_
                                                 _e6718067304_
                                                 _hd6717967307_
                                                 _tl6717867309_
                                                 ___splice6758567586_
                                                 _target6719467231_
                                                 _tl6719667233_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g6717267210_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g6717267210_))))))
                            (let () (declare (not safe)) (_g6717267210_)))))
                    (let () (declare (not safe)) (_g6717267210_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx66721_)
        (let* ((___stx6763767638_ _stx66721_)
               (_g6672566827_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6763767638_)))))
          (let ((___kont6763967640_
                 (lambda (_L67117_ _L67118_ _L67119_ _L67120_ _L67121_)
                   (let ((__tmp67920
                          (let ((__tmp67927
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L67120_)))
                                (__tmp67921
                                 (let ((__tmp67926
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L67119_)))
                                       (__tmp67922
                                        (let ((__tmp67925
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L67118_)))
                                              (__tmp67923
                                               (let ((__tmp67924
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L67117_))))
                                                 (declare (not safe))
                                                 (cons __tmp67924 '()))))
                                          (declare (not safe))
                                          (cons __tmp67925 __tmp67923))))
                                   (declare (not safe))
                                   (cons __tmp67926 __tmp67922))))
                            (declare (not safe))
                            (cons __tmp67927 __tmp67921))))
                     (declare (not safe))
                     (cons 'declare-method __tmp67920))))
                (___kont6764167642_
                 (lambda (_L66943_ _L66944_ _L66945_ _L66946_)
                   (let ((__tmp67928
                          (let ((__tmp67934
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L66945_)))
                                (__tmp67929
                                 (let ((__tmp67933
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L66944_)))
                                       (__tmp67930
                                        (let ((__tmp67932
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L66943_)))
                                              (__tmp67931
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp67932 __tmp67931))))
                                   (declare (not safe))
                                   (cons __tmp67933 __tmp67930))))
                            (declare (not safe))
                            (cons __tmp67934 __tmp67929))))
                     (declare (not safe))
                     (cons 'declare-method __tmp67928))))
                (___kont6764367644_ (lambda () '(begin))))
            (let ((___match6777267773_
                   (lambda (_e6673466989_
                            _hd6673366992_
                            _tl6673266994_
                            _e6673766997_
                            _hd6673667000_
                            _tl6673567002_
                            _e6674067005_
                            _hd6673967008_
                            _tl6673867010_
                            _e6674367013_
                            _hd6674267016_
                            _tl6674167018_
                            _e6674667021_
                            _hd6674567024_
                            _tl6674467026_
                            _e6674967029_
                            _hd6674867032_
                            _tl6674767034_
                            _e6675267037_
                            _hd6675167040_
                            _tl6675067042_
                            _e6675567045_
                            _hd6675467048_
                            _tl6675367050_
                            _e6675867053_
                            _hd6675767056_
                            _tl6675667058_
                            _e6676167061_
                            _hd6676067064_
                            _tl6675967066_
                            _e6676467069_
                            _hd6676367072_
                            _tl6676267074_
                            _e6676767077_
                            _hd6676667080_
                            _tl6676567082_
                            _e6677067085_
                            _hd6676967088_
                            _tl6676867090_
                            _e6677367093_
                            _hd6677267096_
                            _tl6677167098_
                            _e6677667101_
                            _hd6677567104_
                            _tl6677467106_
                            _e6677967109_
                            _hd6677867112_
                            _tl6677767114_)
                     (let ((_L67117_ _hd6677867112_)
                           (_L67118_ _hd6676967088_)
                           (_L67119_ _hd6676067064_)
                           (_L67120_ _hd6675167040_)
                           (_L67121_ _hd6674267016_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L67121_ 'bind-method!))
                           (___kont6763967640_
                            _L67117_
                            _L67118_
                            _L67119_
                            _L67120_
                            _L67121_)
                           (___kont6764367644_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx6763767638_))
                  (let ((_e6673466989_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx6763767638_))))
                    (let ((_tl6673266994_
                           (let () (declare (not safe)) (##cdr _e6673466989_)))
                          (_hd6673366992_
                           (let ()
                             (declare (not safe))
                             (##car _e6673466989_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6673266994_))
                          (let ((_e6673766997_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl6673266994_))))
                            (let ((_tl6673567002_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6673766997_)))
                                  (_hd6673667000_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6673766997_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd6673667000_))
                                  (let ((_e6674067005_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd6673667000_))))
                                    (let ((_tl6673867010_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6674067005_)))
                                          (_hd6673967008_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6674067005_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd6673967008_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd6673967008_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl6673867010_))
                                                  (let ((_e6674367013_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl6673867010_))))
                                                    (let ((_tl6674167018_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6674367013_)))
                                                          (_hd6674267016_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6674367013_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl6674167018_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl6673567002_))
                      (let ((_e6674667021_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl6673567002_))))
                        (let ((_tl6674467026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6674667021_)))
                              (_hd6674567024_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6674667021_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd6674567024_))
                              (let ((_e6674967029_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd6674567024_))))
                                (let ((_tl6674767034_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6674967029_)))
                                      (_hd6674867032_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6674967029_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd6674867032_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd6674867032_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl6674767034_))
                                              (let ((_e6675267037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl6674767034_))))
                                                (let ((_tl6675067042_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e6675267037_)))
                                                      (_hd6675167040_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e6675267037_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl6675067042_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl6674467026_))
                                                          (let ((_e6675567045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl6674467026_))))
                    (let ((_tl6675367050_
                           (let () (declare (not safe)) (##cdr _e6675567045_)))
                          (_hd6675467048_
                           (let ()
                             (declare (not safe))
                             (##car _e6675567045_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd6675467048_))
                          (let ((_e6675867053_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd6675467048_))))
                            (let ((_tl6675667058_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6675867053_)))
                                  (_hd6675767056_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6675867053_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd6675767056_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd6675767056_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl6675667058_))
                                          (let ((_e6676167061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl6675667058_))))
                                            (let ((_tl6675967066_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e6676167061_)))
                                                  (_hd6676067064_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e6676167061_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl6675967066_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl6675367050_))
                                                      (let ((_e6676467069_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl6675367050_))))
                (let ((_tl6676267074_
                       (let () (declare (not safe)) (##cdr _e6676467069_)))
                      (_hd6676367072_
                       (let () (declare (not safe)) (##car _e6676467069_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd6676367072_))
                      (let ((_e6676767077_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd6676367072_))))
                        (let ((_tl6676567082_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6676767077_)))
                              (_hd6676667080_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6676767077_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd6676667080_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd6676667080_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl6676567082_))
                                      (let ((_e6677067085_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl6676567082_))))
                                        (let ((_tl6676867090_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6677067085_)))
                                              (_hd6676967088_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6677067085_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl6676867090_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl6676267074_))
                                                  (let ((_e6677367093_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl6676267074_))))
                                                    (let ((_tl6677167098_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6677367093_)))
                                                          (_hd6677267096_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6677367093_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd6677267096_))
                                                          (let ((_e6677667101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd6677267096_))))
                    (let ((_tl6677467106_
                           (let () (declare (not safe)) (##cdr _e6677667101_)))
                          (_hd6677567104_
                           (let ()
                             (declare (not safe))
                             (##car _e6677667101_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd6677567104_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd6677567104_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl6677467106_))
                                  (let ((_e6677967109_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl6677467106_))))
                                    (let ((_tl6677767114_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6677967109_)))
                                          (_hd6677867112_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6677967109_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl6677767114_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl6677167098_))
                                              (___match6777267773_
                                               _e6673466989_
                                               _hd6673366992_
                                               _tl6673266994_
                                               _e6673766997_
                                               _hd6673667000_
                                               _tl6673567002_
                                               _e6674067005_
                                               _hd6673967008_
                                               _tl6673867010_
                                               _e6674367013_
                                               _hd6674267016_
                                               _tl6674167018_
                                               _e6674667021_
                                               _hd6674567024_
                                               _tl6674467026_
                                               _e6674967029_
                                               _hd6674867032_
                                               _tl6674767034_
                                               _e6675267037_
                                               _hd6675167040_
                                               _tl6675067042_
                                               _e6675567045_
                                               _hd6675467048_
                                               _tl6675367050_
                                               _e6675867053_
                                               _hd6675767056_
                                               _tl6675667058_
                                               _e6676167061_
                                               _hd6676067064_
                                               _tl6675967066_
                                               _e6676467069_
                                               _hd6676367072_
                                               _tl6676267074_
                                               _e6676767077_
                                               _hd6676667080_
                                               _tl6676567082_
                                               _e6677067085_
                                               _hd6676967088_
                                               _tl6676867090_
                                               _e6677367093_
                                               _hd6677267096_
                                               _tl6677167098_
                                               _e6677667101_
                                               _hd6677567104_
                                               _tl6677467106_
                                               _e6677967109_
                                               _hd6677867112_
                                               _tl6677767114_)
                                              (___kont6764367644_))
                                          (___kont6764367644_))))
                                  (___kont6764367644_))
                              (___kont6764367644_))
                          (___kont6764367644_))))
                  (___kont6764367644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl6676267074_))
                                                      (if (let ((__tmp67935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp67935 'bind-method!))
                  (let ((_L66943_ _hd6676967088_)
                        (_L66944_ _hd6676067064_)
                        (_L66945_ _hd6675167040_)
                        (_L66946_ _hd6674267016_))
                    (___kont6764167642_ _L66943_ _L66944_ _L66945_ _L66946_))
                  (___kont6764367644_))
              (___kont6764367644_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6764367644_))))
                                      (___kont6764367644_))
                                  (___kont6764367644_))
                              (___kont6764367644_))))
                      (___kont6764367644_))))
              (___kont6764367644_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6764367644_))))
                                          (___kont6764367644_))
                                      (___kont6764367644_))
                                  (___kont6764367644_))))
                          (___kont6764367644_))))
                  (___kont6764367644_))
              (___kont6764367644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6764367644_))
                                          (___kont6764367644_))
                                      (___kont6764367644_))))
                              (___kont6764367644_))))
                      (___kont6764367644_))
                  (___kont6764367644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6764367644_))
                                              (___kont6764367644_))
                                          (___kont6764367644_))))
                                  (___kont6764367644_))))
                          (___kont6764367644_))))
                  (___kont6764367644_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self66697_)
        (let* ((_self6669866704_ _self66697_)
               (_E6670066708_
                (lambda () (error '"No clause matching" _self6669866704_)))
               (_K6670166713_
                (lambda (_alias-id66711_)
                  (let ((__tmp67936
                         (let ()
                           (declare (not safe))
                           (cons _alias-id66711_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp67936)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6669866704_ 'gxc#!alias::t))
              (let* ((_e6670266716_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6669866704_ '1)))
                     (_alias-id66719_ _e6670266716_))
                (declare (not safe))
                (_K6670166713_ _alias-id66719_))
              (let () (declare (not safe)) (_E6670066708_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!struct-type::typedecl
      (lambda (_self66519_)
        (let* ((_self6652066531_ _self66519_)
               (_E6652266535_
                (lambda () (error '"No clause matching" _self6652066531_)))
               (_K6652366544_
                (lambda (_plist66538_
                         _ctor66539_
                         _fields66540_
                         _super66541_
                         _type-id66542_)
                  (let ((__tmp67937
                         (let ((__tmp67938
                                (let ((__tmp67939
                                       (let ((__tmp67940
                                              (let ((__tmp67941
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _plist66538_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _ctor66539_
                                                      __tmp67941))))
                                         (declare (not safe))
                                         (cons _fields66540_ __tmp67940))))
                                  (declare (not safe))
                                  (cons _super66541_ __tmp67939))))
                           (declare (not safe))
                           (cons _type-id66542_ __tmp67938))))
                    (declare (not safe))
                    (cons '@struct-type __tmp67937)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6652066531_
                 'gxc#!struct-type::t))
              (let* ((_e6652466547_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6652066531_ '1)))
                     (_type-id66550_ _e6652466547_)
                     (_e6652566552_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6652066531_ '2)))
                     (_super66555_ _e6652566552_)
                     (_e6652666557_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6652066531_ '3)))
                     (_fields66560_ _e6652666557_)
                     (_e6652766562_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6652066531_ '4)))
                     (_e6652866565_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6652066531_ '5)))
                     (_ctor66568_ _e6652866565_)
                     (_e6652966570_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6652066531_ '6)))
                     (_plist66573_ _e6652966570_))
                (declare (not safe))
                (_K6652366544_
                 _plist66573_
                 _ctor66568_
                 _fields66560_
                 _super66555_
                 _type-id66550_))
              (let () (declare (not safe)) (_E6652266535_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-type::t
       'typedecl
       gxc#!struct-type::typedecl
       '#f))
    (define gxc#!struct-pred::typedecl
      (lambda (_self66373_)
        (let* ((_self6637466380_ _self66373_)
               (_E6637666384_
                (lambda () (error '"No clause matching" _self6637466380_)))
               (_K6637766389_
                (lambda (_struct-t66387_)
                  (let ((__tmp67942
                         (let ()
                           (declare (not safe))
                           (cons _struct-t66387_ '()))))
                    (declare (not safe))
                    (cons '@struct-pred __tmp67942)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6637466380_
                 'gxc#!struct-pred::t))
              (let* ((_e6637866392_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6637466380_ '1)))
                     (_struct-t66395_ _e6637866392_))
                (declare (not safe))
                (_K6637766389_ _struct-t66395_))
              (let () (declare (not safe)) (_E6637666384_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'typedecl
       gxc#!struct-pred::typedecl
       '#f))
    (define gxc#!struct-cons::typedecl
      (lambda (_self66227_)
        (let* ((_self6622866234_ _self66227_)
               (_E6623066238_
                (lambda () (error '"No clause matching" _self6622866234_)))
               (_K6623166243_
                (lambda (_struct-t66241_)
                  (let ((__tmp67943
                         (let ()
                           (declare (not safe))
                           (cons _struct-t66241_ '()))))
                    (declare (not safe))
                    (cons '@struct-cons __tmp67943)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6622866234_
                 'gxc#!struct-cons::t))
              (let* ((_e6623266246_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6622866234_ '1)))
                     (_struct-t66249_ _e6623266246_))
                (declare (not safe))
                (_K6623166243_ _struct-t66249_))
              (let () (declare (not safe)) (_E6623066238_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'typedecl
       gxc#!struct-cons::typedecl
       '#f))
    (define gxc#!struct-getf::typedecl
      (lambda (_self66067_)
        (let* ((_self6606866076_ _self66067_)
               (_E6607066080_
                (lambda () (error '"No clause matching" _self6606866076_)))
               (_K6607166087_
                (lambda (_unchecked?66083_ _off66084_ _struct-t66085_)
                  (let ((__tmp67944
                         (let ((__tmp67945
                                (let ((__tmp67946
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?66083_ '()))))
                                  (declare (not safe))
                                  (cons _off66084_ __tmp67946))))
                           (declare (not safe))
                           (cons _struct-t66085_ __tmp67945))))
                    (declare (not safe))
                    (cons '@struct-getf __tmp67944)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6606866076_
                 'gxc#!struct-getf::t))
              (let* ((_e6607266090_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6606866076_ '1)))
                     (_struct-t66093_ _e6607266090_)
                     (_e6607366095_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6606866076_ '2)))
                     (_off66098_ _e6607366095_)
                     (_e6607466100_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6606866076_ '3)))
                     (_unchecked?66103_ _e6607466100_))
                (declare (not safe))
                (_K6607166087_ _unchecked?66103_ _off66098_ _struct-t66093_))
              (let () (declare (not safe)) (_E6607066080_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'typedecl
       gxc#!struct-getf::typedecl
       '#f))
    (define gxc#!struct-setf::typedecl
      (lambda (_self65907_)
        (let* ((_self6590865916_ _self65907_)
               (_E6591065920_
                (lambda () (error '"No clause matching" _self6590865916_)))
               (_K6591165927_
                (lambda (_unchecked?65923_ _off65924_ _struct-t65925_)
                  (let ((__tmp67947
                         (let ((__tmp67948
                                (let ((__tmp67949
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?65923_ '()))))
                                  (declare (not safe))
                                  (cons _off65924_ __tmp67949))))
                           (declare (not safe))
                           (cons _struct-t65925_ __tmp67948))))
                    (declare (not safe))
                    (cons '@struct-setf __tmp67947)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6590865916_
                 'gxc#!struct-setf::t))
              (let* ((_e6591265930_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6590865916_ '1)))
                     (_struct-t65933_ _e6591265930_)
                     (_e6591365935_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6590865916_ '2)))
                     (_off65938_ _e6591365935_)
                     (_e6591465940_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6590865916_ '3)))
                     (_unchecked?65943_ _e6591465940_))
                (declare (not safe))
                (_K6591165927_ _unchecked?65943_ _off65938_ _struct-t65933_))
              (let () (declare (not safe)) (_E6591065920_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'typedecl
       gxc#!struct-setf::typedecl
       '#f))
    (define gxc#!class-type::typedecl
      (lambda (_self65719_)
        (let* ((_self6572065732_ _self65719_)
               (_E6572265736_
                (lambda () (error '"No clause matching" _self6572065732_)))
               (_K6572365747_
                (lambda (_plist65739_
                         _ctor65740_
                         _xslots65741_
                         _slots65742_
                         _mixin65743_
                         _super65744_
                         _type-id65745_)
                  (let ((__tmp67950
                         (let ((__tmp67951
                                (let ((__tmp67952
                                       (let ((__tmp67953
                                              (let ((__tmp67954
                                                     (let ((__tmp67955
                                                            (let ((__tmp67956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _plist65739_ '()))))
                      (declare (not safe))
                      (cons _ctor65740_ __tmp67956))))
               (declare (not safe))
               (cons _xslots65741_ __tmp67955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots65742_
                                                      __tmp67954))))
                                         (declare (not safe))
                                         (cons _mixin65743_ __tmp67953))))
                                  (declare (not safe))
                                  (cons _super65744_ __tmp67952))))
                           (declare (not safe))
                           (cons _type-id65745_ __tmp67951))))
                    (declare (not safe))
                    (cons '@class-type __tmp67950)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6572065732_
                 'gxc#!class-type::t))
              (let* ((_e6572465750_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6572065732_ '1)))
                     (_type-id65753_ _e6572465750_)
                     (_e6572565755_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6572065732_ '2)))
                     (_super65758_ _e6572565755_)
                     (_e6572665760_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6572065732_ '3)))
                     (_mixin65763_ _e6572665760_)
                     (_e6572765765_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6572065732_ '4)))
                     (_slots65768_ _e6572765765_)
                     (_e6572865770_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6572065732_ '5)))
                     (_xslots65773_ _e6572865770_)
                     (_e6572965775_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6572065732_ '6)))
                     (_ctor65778_ _e6572965775_)
                     (_e6573065780_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6572065732_ '7)))
                     (_plist65783_ _e6573065780_))
                (declare (not safe))
                (_K6572365747_
                 _plist65783_
                 _ctor65778_
                 _xslots65773_
                 _slots65768_
                 _mixin65763_
                 _super65758_
                 _type-id65753_))
              (let () (declare (not safe)) (_E6572265736_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-type::t
       'typedecl
       gxc#!class-type::typedecl
       '#f))
    (define gxc#!class-pred::typedecl
      (lambda (_self65573_)
        (let* ((_self6557465580_ _self65573_)
               (_E6557665584_
                (lambda () (error '"No clause matching" _self6557465580_)))
               (_K6557765589_
                (lambda (_class-t65587_)
                  (let ((__tmp67957
                         (let ()
                           (declare (not safe))
                           (cons _class-t65587_ '()))))
                    (declare (not safe))
                    (cons '@class-pred __tmp67957)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6557465580_
                 'gxc#!class-pred::t))
              (let* ((_e6557865592_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6557465580_ '1)))
                     (_class-t65595_ _e6557865592_))
                (declare (not safe))
                (_K6557765589_ _class-t65595_))
              (let () (declare (not safe)) (_E6557665584_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'typedecl
       gxc#!class-pred::typedecl
       '#f))
    (define gxc#!class-cons::typedecl
      (lambda (_self65427_)
        (let* ((_self6542865434_ _self65427_)
               (_E6543065438_
                (lambda () (error '"No clause matching" _self6542865434_)))
               (_K6543165443_
                (lambda (_class-t65441_)
                  (let ((__tmp67958
                         (let ()
                           (declare (not safe))
                           (cons _class-t65441_ '()))))
                    (declare (not safe))
                    (cons '@class-cons __tmp67958)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6542865434_
                 'gxc#!class-cons::t))
              (let* ((_e6543265446_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6542865434_ '1)))
                     (_class-t65449_ _e6543265446_))
                (declare (not safe))
                (_K6543165443_ _class-t65449_))
              (let () (declare (not safe)) (_E6543065438_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'typedecl
       gxc#!class-cons::typedecl
       '#f))
    (define gxc#!class-getf::typedecl
      (lambda (_self65267_)
        (let* ((_self6526865276_ _self65267_)
               (_E6527065280_
                (lambda () (error '"No clause matching" _self6526865276_)))
               (_K6527165287_
                (lambda (_unchecked?65283_ _slot65284_ _class-t65285_)
                  (let ((__tmp67959
                         (let ((__tmp67960
                                (let ((__tmp67961
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?65283_ '()))))
                                  (declare (not safe))
                                  (cons _slot65284_ __tmp67961))))
                           (declare (not safe))
                           (cons _class-t65285_ __tmp67960))))
                    (declare (not safe))
                    (cons '@class-getf __tmp67959)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6526865276_
                 'gxc#!class-getf::t))
              (let* ((_e6527265290_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6526865276_ '1)))
                     (_class-t65293_ _e6527265290_)
                     (_e6527365295_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6526865276_ '2)))
                     (_slot65298_ _e6527365295_)
                     (_e6527465300_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6526865276_ '3)))
                     (_unchecked?65303_ _e6527465300_))
                (declare (not safe))
                (_K6527165287_ _unchecked?65303_ _slot65298_ _class-t65293_))
              (let () (declare (not safe)) (_E6527065280_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'typedecl
       gxc#!class-getf::typedecl
       '#f))
    (define gxc#!class-setf::typedecl
      (lambda (_self65107_)
        (let* ((_self6510865116_ _self65107_)
               (_E6511065120_
                (lambda () (error '"No clause matching" _self6510865116_)))
               (_K6511165127_
                (lambda (_unchecked?65123_ _slot65124_ _class-t65125_)
                  (let ((__tmp67962
                         (let ((__tmp67963
                                (let ((__tmp67964
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?65123_ '()))))
                                  (declare (not safe))
                                  (cons _slot65124_ __tmp67964))))
                           (declare (not safe))
                           (cons _class-t65125_ __tmp67963))))
                    (declare (not safe))
                    (cons '@class-setf __tmp67962)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6510865116_
                 'gxc#!class-setf::t))
              (let* ((_e6511265130_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6510865116_ '1)))
                     (_class-t65133_ _e6511265130_)
                     (_e6511365135_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6510865116_ '2)))
                     (_slot65138_ _e6511365135_)
                     (_e6511465140_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6510865116_ '3)))
                     (_unchecked?65143_ _e6511465140_))
                (declare (not safe))
                (_K6511165127_ _unchecked?65143_ _slot65138_ _class-t65133_))
              (let () (declare (not safe)) (_E6511065120_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'typedecl
       gxc#!class-setf::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self64933_)
        (let* ((_self6493464944_ _self64933_)
               (_E6493664948_
                (lambda () (error '"No clause matching" _self6493464944_)))
               (_K6493764959_
                (lambda (_typedecl64951_
                         _inline64952_
                         _dispatch64953_
                         _arity64954_)
                  (if _inline64952_
                      (let ((_$e64956_ _typedecl64951_))
                        (if _$e64956_
                            _$e64956_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp67965
                             (let ((__tmp67966
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch64953_ '()))))
                               (declare (not safe))
                               (cons _arity64954_ __tmp67966))))
                        (declare (not safe))
                        (cons '@lambda __tmp67965))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6493464944_ 'gxc#!lambda::t))
              (let* ((_e6493864962_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6493464944_ '1)))
                     (_e6493964965_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6493464944_ '2)))
                     (_arity64968_ _e6493964965_)
                     (_e6494064970_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6493464944_ '3)))
                     (_dispatch64973_ _e6494064970_)
                     (_e6494164975_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6493464944_ '4)))
                     (_inline64978_ _e6494164975_)
                     (_e6494264980_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6493464944_ '5)))
                     (_typedecl64983_ _e6494264980_))
                (declare (not safe))
                (_K6493764959_
                 _typedecl64983_
                 _inline64978_
                 _dispatch64973_
                 _arity64968_))
              (let () (declare (not safe)) (_E6493664948_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self64744_)
        (letrec ((_clause-e64746_
                  (lambda (_clause64776_)
                    (let* ((_clause6477764785_ _clause64776_)
                           (_E6477964789_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause6477764785_)))
                           (_K6478064795_
                            (lambda (_dispatch64792_ _arity64793_)
                              (let ((__tmp67967
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch64792_ '()))))
                                (declare (not safe))
                                (cons _arity64793_ __tmp67967)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause6477764785_
                             'gxc#!lambda::t))
                          (let* ((_e6478164798_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6477764785_ '1)))
                                 (_e6478264801_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6477764785_ '2)))
                                 (_arity64804_ _e6478264801_)
                                 (_e6478364806_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6477764785_ '3)))
                                 (_dispatch64809_ _e6478364806_))
                            (declare (not safe))
                            (_K6478064795_ _dispatch64809_ _arity64804_))
                          (let () (declare (not safe)) (_E6477964789_)))))))
          (let* ((_self6474764754_ _self64744_)
                 (_E6474964758_
                  (lambda () (error '"No clause matching" _self6474764754_)))
                 (_K6475064765_
                  (lambda (_clauses64761_)
                    (let ((_clauses64763_
                           (let ()
                             (declare (not safe))
                             (map _clause-e64746_ _clauses64761_))))
                      (declare (not safe))
                      (cons '@case-lambda _clauses64763_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self6474764754_
                   'gxc#!case-lambda::t))
                (let* ((_e6475164768_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6474764754_ '1)))
                       (_e6475264771_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6474764754_ '2)))
                       (_clauses64774_ _e6475264771_))
                  (declare (not safe))
                  (_K6475064765_ _clauses64774_))
                (let () (declare (not safe)) (_E6474964758_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self64587_)
        (let* ((_self6458864596_ _self64587_)
               (_E6459064600_
                (lambda () (error '"No clause matching" _self6458864596_)))
               (_K6459164606_
                (lambda (_dispatch64603_ _table64604_)
                  (let ((__tmp67968
                         (let ((__tmp67969
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch64603_ '()))))
                           (declare (not safe))
                           (cons _table64604_ __tmp67969))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp67968)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6458864596_ 'gxc#!kw-lambda::t))
              (let* ((_e6459264609_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6458864596_ '1)))
                     (_e6459364612_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6458864596_ '2)))
                     (_table64615_ _e6459364612_)
                     (_e6459464617_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6458864596_ '3)))
                     (_dispatch64620_ _e6459464617_))
                (declare (not safe))
                (_K6459164606_ _dispatch64620_ _table64615_))
              (let () (declare (not safe)) (_E6459064600_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self64430_)
        (let* ((_self6443164439_ _self64430_)
               (_E6443364443_
                (lambda () (error '"No clause matching" _self6443164439_)))
               (_K6443464449_
                (lambda (_main64446_ _keys64447_)
                  (let ((__tmp67970
                         (let ((__tmp67971
                                (let ()
                                  (declare (not safe))
                                  (cons _main64446_ '()))))
                           (declare (not safe))
                           (cons _keys64447_ __tmp67971))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp67970)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6443164439_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e6443564452_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6443164439_ '1)))
                     (_e6443664455_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6443164439_ '2)))
                     (_keys64458_ _e6443664455_)
                     (_e6443764460_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6443164439_ '3)))
                     (_main64463_ _e6443764460_))
                (declare (not safe))
                (_K6443464449_ _main64463_ _keys64458_))
              (let () (declare (not safe)) (_E6443364443_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
