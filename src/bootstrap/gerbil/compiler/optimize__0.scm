(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708337971)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj292871
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj292871)
               __obj292871)))))
    (define gxc#optimize!
      (lambda (_ctx288578_)
        (let ((__tmp292875
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx288578_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp292877
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp292876
                        (##structure-ref
                         _ctx288578_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp292877 __tmp292876 '#t))
                 (let ((_code288581_
                        (let ((__tmp292878
                               (##structure-ref
                                _ctx288578_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp292878))))
                   (##structure-set!
                    _ctx288578_
                    _code288581_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp292874 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp292873 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp292875
           gxc#current-compile-mutators
           __tmp292874
           gxc#current-compile-local-type
           __tmp292873))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!288574_
                  (lambda (_id288576_)
                    (if (let ((__tmp292880
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp292880 _id288576_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id288576_))
                          (let ((__tmp292879
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp292879 _id288576_ '#t)))))))
          (for-each
           _load-it!288574_
           '(gerbil/runtime/gambit
             gerbil/runtime/util
             gerbil/runtime/table
             gerbil/runtime/control
             gerbil/runtime/system
             gerbil/runtime/c3
             gerbil/runtime/mop
             gerbil/runtime/error
             gerbil/runtime/interface
             gerbil/runtime/hash
             gerbil/runtime/thread
             gerbil/runtime/syntax
             gerbil/runtime/eval
             gerbil/runtime/repl
             gerbil/runtime/loader
             gerbil/runtime/init
             gerbil/runtime
             gerbil/builtin)))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx288518_)
        (letrec* ((_deps288520_
                   (let* ((_imports288564_
                           (##structure-ref
                            _ctx288518_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e288566_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx288518_))))
                     (if _$e288566_
                         ((lambda (_g288568288570_)
                            (let ()
                              (declare (not safe))
                              (cons _g288568288570_ _imports288564_)))
                          _$e288566_)
                         _imports288564_))))
          (let _lp288522_ ((_rest288524_ _deps288520_))
            (let* ((_rest288525288533_ _rest288524_)
                   (_else288527288541_ (lambda () '#!void))
                   (_K288529288552_
                    (lambda (_rest288544_ _hd288545_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd288545_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp292894
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp292893
                                       (##structure-ref
                                        _hd288545_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp292894 __tmp292893))
                                '#!void
                                (begin
                                  (let ((_$e288547_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd288545_))))
                                    (if _$e288547_
                                        ((lambda (_pre288550_)
                                           (let ((__tmp292891
                                                  (let ((__tmp292892
                                                         (##structure-ref
                                                          _hd288545_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre288550_
                                                          __tmp292892))))
                                             (declare (not safe))
                                             (_lp288522_ __tmp292891)))
                                         _$e288547_)
                                        (let ((__tmp292890
                                               (##structure-ref
                                                _hd288545_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp288522_ __tmp292890))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd288545_))))
                            (let ()
                              (declare (not safe))
                              (_lp288522_ _rest288544_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd288545_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp292889
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp292888
                                           (##structure-ref
                                            _hd288545_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp292889 __tmp292888))
                                    '#!void
                                    (begin
                                      (let ((__tmp292887
                                             (##structure-ref
                                              _hd288545_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp288522_ __tmp292887))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd288545_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp288522_ _rest288544_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd288545_
                                     'gx#module-import::t))
                                  (let ((__tmp292885
                                         (let ((__tmp292886
                                                (##direct-structure-ref
                                                 _hd288545_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp292886 _rest288544_))))
                                    (declare (not safe))
                                    (_lp288522_ __tmp292885))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd288545_
                                         'gx#module-export::t))
                                      (let ((__tmp292883
                                             (let ((__tmp292884
                                                    (##direct-structure-ref
                                                     _hd288545_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp292884
                                                     _rest288544_))))
                                        (declare (not safe))
                                        (_lp288522_ __tmp292883))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd288545_
                                             'gx#import-set::t))
                                          (let ((__tmp292881
                                                 (let ((__tmp292882
                                                        (##direct-structure-ref
                                                         _hd288545_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp292882
                                                         _rest288544_))))
                                            (declare (not safe))
                                            (_lp288522_ __tmp292881))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd288545_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest288525288533_))
                  (let ((_hd288530288555_
                         (let ()
                           (declare (not safe))
                           (##car _rest288525288533_)))
                        (_tl288531288557_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest288525288533_))))
                    (let* ((_hd288560_ _hd288530288555_)
                           (_rest288562_ _tl288531288557_))
                      (declare (not safe))
                      (_K288529288552_ _rest288562_ _hd288560_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx288498_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx288498_
                    'gx#module-context::t))
                 (let ((__tmp292895
                        (##structure-ref
                         _ctx288498_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp292895)))
            '#!void
            (let* ((_ht288500_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id288502_
                    (##structure-ref
                     _ctx288498_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod288504_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht288500_ _id288502_))))
              (let ((_$e288507_ _mod288504_))
                (if _$e288507_
                    _$e288507_
                    (let* ((_mod288510_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx288498_)))
                           (_val288515_
                            (let ((_$e288512_ _mod288510_))
                              (if _$e288512_ _$e288512_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht288500_ _id288502_ _val288515_))
                      _val288515_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx288496_)
        (if (##structure-ref _ctx288496_ '1 gx#expander-context::t '#f)
            (let ((__tmp292896
                   (##structure-ref
                    _ctx288496_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp292896))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id288473_)
        (letrec ((_catch-e288475_
                  (lambda (_exn288494_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id288473_))
                          (display-exception _exn288494_))
                        '#!void)
                    '#f))
                 (_import-e288476_
                  (lambda ()
                    (let* ((_str-id288479_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id288473_))
                             '".ssxi"))
                           (_artefact-path288487_
                            (let ((_odir288480288482_
                                   (gxc#current-compile-output-dir)))
                              (if _odir288480288482_
                                  (let ((_odir288485_ _odir288480288482_))
                                    (path-expand
                                     (string-append _str-id288479_ '".ss")
                                     _odir288485_))
                                  '#f)))
                           (_library-path288489_
                            (string->symbol
                             (string-append '":" _str-id288479_ '".ss")))
                           (_ssxi-path288491_
                            (if (and _artefact-path288487_
                                     (file-exists? _artefact-path288487_))
                                _artefact-path288487_
                                _library-path288489_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path288491_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path288491_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e288475_ _import-e288476_)))))
    (define gxc#optimize-source
      (lambda (_stx288464_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx288464_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx288464_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx288464_))
        (let* ((_stx288466_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx288464_)))
               (_stx288468_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx288466_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx288468_))
          (let ((_stx288471_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx288468_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx288471_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl288461_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp292897 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl288461_ __tmp292897))
           (let ()
             (declare (not safe))
             (hash-put! _tbl288461_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl288461_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl288461_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl288461_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl288461_ '%#call gxc#generate-ssxi-call%))
           _tbl288461_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx288444_ . _args288446_)
        (let ((__tmp292899
               (lambda ()
                 (declare (not safe))
                 (if (null? _args288446_)
                     (gxc#compile-e__0 _stx288444_)
                     (let ((_arg1288451_ (car _args288446_))
                           (_rest288453_ (cdr _args288446_)))
                       (if (null? _rest288453_)
                           (gxc#compile-e__1 _stx288444_ _arg1288451_)
                           (let ((_arg2288456_ (car _rest288453_))
                                 (_rest288458_ (cdr _rest288453_)))
                             (if (null? _rest288458_)
                                 (gxc#compile-e__2
                                  _stx288444_
                                  _arg1288451_
                                  _arg2288456_)
                                 (apply gxc#compile-e
                                        _stx288444_
                                        _arg1288451_
                                        _arg2288456_
                                        _rest288458_))))))))
              (__tmp292898 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp292899
           gxc#current-compile-methods
           __tmp292898))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx288405_)
        (let* ((_g288407288417_
                (lambda (_g288408288414_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g288408288414_))))
               (_g288406288441_
                (lambda (_g288408288420_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g288408288420_))
                      (let ((_e288412288422_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g288408288420_))))
                        (let ((_hd288411288425_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288412288422_)))
                              (_tl288410288427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288412288422_))))
                          ((lambda (_L288430_)
                             (let ((__tmp292902
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx288405_))))
                                   (__tmp292900
                                    (let ((__tmp292901
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp292901 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp292902
                                gx#current-expander-phi
                                __tmp292900)))
                           _tl288410288427_)))
                      (let ()
                        (declare (not safe))
                        (_g288407288417_ _g288408288420_))))))
          (declare (not safe))
          (_g288406288441_ _stx288405_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx288345_)
        (let* ((_g288347288361_
                (lambda (_g288348288358_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g288348288358_))))
               (_g288346288402_
                (lambda (_g288348288364_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g288348288364_))
                      (let ((_e288353288366_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g288348288364_))))
                        (let ((_hd288352288369_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288353288366_)))
                              (_tl288351288371_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288353288366_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl288351288371_))
                              (let ((_e288356288374_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl288351288371_))))
                                (let ((_hd288355288377_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e288356288374_)))
                                      (_tl288354288379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e288356288374_))))
                                  ((lambda (_L288382_ _L288383_)
                                     (let* ((_ctx288396_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L288383_)))
                                            (_code288398_
                                             (##structure-ref
                                              _ctx288396_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp292903
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code288398_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp292903
                                          gx#current-expander-context
                                          _ctx288396_))))
                                   _tl288354288379_
                                   _hd288355288377_)))
                              (let ()
                                (declare (not safe))
                                (_g288347288361_ _g288348288364_)))))
                      (let ()
                        (declare (not safe))
                        (_g288347288361_ _g288348288364_))))))
          (declare (not safe))
          (_g288346288402_ _stx288345_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx288155_)
        (letrec ((_generate-e288157_
                  (lambda (_id288334_)
                    (let* ((_sym288336_
                            (if (let ((__tmp292904
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp292904))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id288334_))
                                '#f))
                           (_$e288338_
                            (if _sym288336_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym288336_))
                                '#f)))
                      (if _$e288338_
                          ((lambda (_type288341_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym288336_))
                             (let* ((_typedecl288343_
                                     (let ((__method292872
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type288341_
                                               'typedecl))))
                                       (if __method292872
                                           (__method292872 _type288341_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type288341_
                                                    'typedecl)))))
                                    (__tmp292905
                                     (let ((__tmp292906
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl288343_ '()))))
                                       (declare (not safe))
                                       (cons _sym288336_ __tmp292906))))
                               (declare (not safe))
                               (cons 'declare-type __tmp292905)))
                           _$e288338_)
                          '(begin))))))
          (let* ((___stx292570292571_ _stx288155_)
                 (_g288160288198_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx292570292571_)))))
            (let ((___kont292572292573_
                   (lambda (_L288316_)
                     (let ()
                       (declare (not safe))
                       (_generate-e288157_ _L288316_))))
                  (___kont292574292575_
                   (lambda (_L288251_)
                     (let ((_types288277_
                            (map _generate-e288157_
                                 (let ((__tmp292907
                                        (lambda (_g288269288272_
                                                 _g288270288274_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g288269288272_
                                                  _g288270288274_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp292907 '() _L288251_)))))
                       (declare (not safe))
                       (cons 'begin _types288277_)))))
              (let ((___match292625292626_
                     (lambda (_e288178288203_
                              _hd288177288206_
                              _tl288176288208_
                              _e288181288211_
                              _hd288180288214_
                              _tl288179288216_
                              ___splice292576292577_
                              _target288182288219_
                              _tl288184288221_)
                       (letrec ((_loop288185288224_
                                 (lambda (_hd288183288227_ _id288189288229_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd288183288227_))
                                       (let ((_e288186288232_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd288183288227_))))
                                         (let ((_lp-tl288188288237_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e288186288232_)))
                                               (_lp-hd288187288235_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e288186288232_))))
                                           (let ((__tmp292908
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd288187288235_
                                                          _id288189288229_))))
                                             (declare (not safe))
                                             (_loop288185288224_
                                              _lp-tl288188288237_
                                              __tmp292908))))
                                       (let ((_id288190288240_
                                              (reverse _id288189288229_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl288179288216_))
                                             (let ((_e288193288243_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl288179288216_))))
                                               (let ((_tl288191288248_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e288193288243_)))
                                                     (_hd288192288246_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e288193288243_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl288191288248_))
                                                     (___kont292574292575_
                                                      _id288190288240_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g288160288198_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g288160288198_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop288185288224_ _target288182288219_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx292570292571_))
                    (let ((_e288165288284_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx292570292571_))))
                      (let ((_tl288163288289_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288165288284_)))
                            (_hd288164288287_
                             (let ()
                               (declare (not safe))
                               (##car _e288165288284_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288163288289_))
                            (let ((_e288168288292_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl288163288289_))))
                              (let ((_tl288166288297_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288168288292_)))
                                    (_hd288167288295_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288168288292_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd288167288295_))
                                    (let ((_e288171288300_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd288167288295_))))
                                      (let ((_tl288169288305_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288171288300_)))
                                            (_hd288170288303_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288171288300_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl288169288305_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl288166288297_))
                                                (let ((_e288174288308_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl288166288297_))))
                                                  (let ((_tl288172288313_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e288174288308_)))
                                                        (_hd288173288311_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e288174288308_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl288172288313_))
                                                        (___kont292572292573_
                                                         _hd288170288303_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd288167288295_))
                                                            (let ((___splice292576292577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd288167288295_ '0))))
                      (let ((_tl288184288221_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice292576292577_ '1)))
                            (_target288182288219_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice292576292577_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl288184288221_))
                            (___match292625292626_
                             _e288165288284_
                             _hd288164288287_
                             _tl288163288289_
                             _e288168288292_
                             _hd288167288295_
                             _tl288166288297_
                             ___splice292576292577_
                             _target288182288219_
                             _tl288184288221_)
                            (let () (declare (not safe)) (_g288160288198_)))))
                    (let () (declare (not safe)) (_g288160288198_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd288167288295_))
                                                    (let ((___splice292576292577_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd288167288295_
                                                              '0))))
                                                      (let ((_tl288184288221_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice292576292577_ '1)))
                    (_target288182288219_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice292576292577_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl288184288221_))
                    (___match292625292626_
                     _e288165288284_
                     _hd288164288287_
                     _tl288163288289_
                     _e288168288292_
                     _hd288167288295_
                     _tl288166288297_
                     ___splice292576292577_
                     _target288182288219_
                     _tl288184288221_)
                    (let () (declare (not safe)) (_g288160288198_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g288160288198_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd288167288295_))
                                                (let ((___splice292576292577_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd288167288295_
                                                          '0))))
                                                  (let ((_tl288184288221_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice292576292577_
                                                            '1)))
                                                        (_target288182288219_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice292576292577_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl288184288221_))
                                                        (___match292625292626_
                                                         _e288165288284_
                                                         _hd288164288287_
                                                         _tl288163288289_
                                                         _e288168288292_
                                                         _hd288167288295_
                                                         _tl288166288297_
                                                         ___splice292576292577_
                                                         _target288182288219_
                                                         _tl288184288221_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g288160288198_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g288160288198_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd288167288295_))
                                        (let ((___splice292576292577_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd288167288295_
                                                  '0))))
                                          (let ((_tl288184288221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice292576292577_
                                                    '1)))
                                                (_target288182288219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice292576292577_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl288184288221_))
                                                (___match292625292626_
                                                 _e288165288284_
                                                 _hd288164288287_
                                                 _tl288163288289_
                                                 _e288168288292_
                                                 _hd288167288295_
                                                 _tl288166288297_
                                                 ___splice292576292577_
                                                 _target288182288219_
                                                 _tl288184288221_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g288160288198_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g288160288198_))))))
                            (let () (declare (not safe)) (_g288160288198_)))))
                    (let () (declare (not safe)) (_g288160288198_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx287709_)
        (let* ((___stx292628292629_ _stx287709_)
               (_g287713287815_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx292628292629_)))))
          (let ((___kont292630292631_
                 (lambda (_L288105_ _L288106_ _L288107_ _L288108_ _L288109_)
                   (let ((__tmp292909
                          (let ((__tmp292916
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L288108_)))
                                (__tmp292910
                                 (let ((__tmp292915
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L288107_)))
                                       (__tmp292911
                                        (let ((__tmp292914
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L288106_)))
                                              (__tmp292912
                                               (let ((__tmp292913
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L288105_))))
                                                 (declare (not safe))
                                                 (cons __tmp292913 '()))))
                                          (declare (not safe))
                                          (cons __tmp292914 __tmp292912))))
                                   (declare (not safe))
                                   (cons __tmp292915 __tmp292911))))
                            (declare (not safe))
                            (cons __tmp292916 __tmp292910))))
                     (declare (not safe))
                     (cons 'declare-method __tmp292909))))
                (___kont292632292633_
                 (lambda (_L287931_ _L287932_ _L287933_ _L287934_)
                   (let ((__tmp292917
                          (let ((__tmp292923
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L287933_)))
                                (__tmp292918
                                 (let ((__tmp292922
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L287932_)))
                                       (__tmp292919
                                        (let ((__tmp292921
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L287931_)))
                                              (__tmp292920
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp292921 __tmp292920))))
                                   (declare (not safe))
                                   (cons __tmp292922 __tmp292919))))
                            (declare (not safe))
                            (cons __tmp292923 __tmp292918))))
                     (declare (not safe))
                     (cons 'declare-method __tmp292917))))
                (___kont292634292635_ (lambda () '(begin))))
            (let ((___match292763292764_
                   (lambda (_e287722287977_
                            _hd287721287980_
                            _tl287720287982_
                            _e287725287985_
                            _hd287724287988_
                            _tl287723287990_
                            _e287728287993_
                            _hd287727287996_
                            _tl287726287998_
                            _e287731288001_
                            _hd287730288004_
                            _tl287729288006_
                            _e287734288009_
                            _hd287733288012_
                            _tl287732288014_
                            _e287737288017_
                            _hd287736288020_
                            _tl287735288022_
                            _e287740288025_
                            _hd287739288028_
                            _tl287738288030_
                            _e287743288033_
                            _hd287742288036_
                            _tl287741288038_
                            _e287746288041_
                            _hd287745288044_
                            _tl287744288046_
                            _e287749288049_
                            _hd287748288052_
                            _tl287747288054_
                            _e287752288057_
                            _hd287751288060_
                            _tl287750288062_
                            _e287755288065_
                            _hd287754288068_
                            _tl287753288070_
                            _e287758288073_
                            _hd287757288076_
                            _tl287756288078_
                            _e287761288081_
                            _hd287760288084_
                            _tl287759288086_
                            _e287764288089_
                            _hd287763288092_
                            _tl287762288094_
                            _e287767288097_
                            _hd287766288100_
                            _tl287765288102_)
                     (let ((_L288105_ _hd287766288100_)
                           (_L288106_ _hd287757288076_)
                           (_L288107_ _hd287748288052_)
                           (_L288108_ _hd287739288028_)
                           (_L288109_ _hd287730288004_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L288109_
                              'bind-method!))
                           (___kont292630292631_
                            _L288105_
                            _L288106_
                            _L288107_
                            _L288108_
                            _L288109_)
                           (___kont292634292635_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx292628292629_))
                  (let ((_e287722287977_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx292628292629_))))
                    (let ((_tl287720287982_
                           (let ()
                             (declare (not safe))
                             (##cdr _e287722287977_)))
                          (_hd287721287980_
                           (let ()
                             (declare (not safe))
                             (##car _e287722287977_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl287720287982_))
                          (let ((_e287725287985_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl287720287982_))))
                            (let ((_tl287723287990_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e287725287985_)))
                                  (_hd287724287988_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e287725287985_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd287724287988_))
                                  (let ((_e287728287993_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd287724287988_))))
                                    (let ((_tl287726287998_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e287728287993_)))
                                          (_hd287727287996_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e287728287993_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd287727287996_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd287727287996_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl287726287998_))
                                                  (let ((_e287731288001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl287726287998_))))
                                                    (let ((_tl287729288006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e287731288001_)))
                                                          (_hd287730288004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e287731288001_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl287729288006_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl287723287990_))
                      (let ((_e287734288009_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl287723287990_))))
                        (let ((_tl287732288014_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287734288009_)))
                              (_hd287733288012_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287734288009_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd287733288012_))
                              (let ((_e287737288017_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd287733288012_))))
                                (let ((_tl287735288022_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287737288017_)))
                                      (_hd287736288020_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287737288017_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd287736288020_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd287736288020_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl287735288022_))
                                              (let ((_e287740288025_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl287735288022_))))
                                                (let ((_tl287738288030_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e287740288025_)))
                                                      (_hd287739288028_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e287740288025_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl287738288030_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl287732288014_))
                                                          (let ((_e287743288033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl287732288014_))))
                    (let ((_tl287741288038_
                           (let ()
                             (declare (not safe))
                             (##cdr _e287743288033_)))
                          (_hd287742288036_
                           (let ()
                             (declare (not safe))
                             (##car _e287743288033_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd287742288036_))
                          (let ((_e287746288041_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd287742288036_))))
                            (let ((_tl287744288046_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e287746288041_)))
                                  (_hd287745288044_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e287746288041_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd287745288044_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd287745288044_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl287744288046_))
                                          (let ((_e287749288049_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl287744288046_))))
                                            (let ((_tl287747288054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e287749288049_)))
                                                  (_hd287748288052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e287749288049_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl287747288054_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl287741288038_))
                                                      (let ((_e287752288057_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl287741288038_))))
                (let ((_tl287750288062_
                       (let () (declare (not safe)) (##cdr _e287752288057_)))
                      (_hd287751288060_
                       (let () (declare (not safe)) (##car _e287752288057_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd287751288060_))
                      (let ((_e287755288065_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd287751288060_))))
                        (let ((_tl287753288070_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287755288065_)))
                              (_hd287754288068_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287755288065_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd287754288068_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd287754288068_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl287753288070_))
                                      (let ((_e287758288073_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl287753288070_))))
                                        (let ((_tl287756288078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e287758288073_)))
                                              (_hd287757288076_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e287758288073_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287756288078_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl287750288062_))
                                                  (let ((_e287761288081_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl287750288062_))))
                                                    (let ((_tl287759288086_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e287761288081_)))
                                                          (_hd287760288084_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e287761288081_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd287760288084_))
                                                          (let ((_e287764288089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd287760288084_))))
                    (let ((_tl287762288094_
                           (let ()
                             (declare (not safe))
                             (##cdr _e287764288089_)))
                          (_hd287763288092_
                           (let ()
                             (declare (not safe))
                             (##car _e287764288089_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd287763288092_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd287763288092_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl287762288094_))
                                  (let ((_e287767288097_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl287762288094_))))
                                    (let ((_tl287765288102_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e287767288097_)))
                                          (_hd287766288100_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e287767288097_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl287765288102_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287759288086_))
                                              (___match292763292764_
                                               _e287722287977_
                                               _hd287721287980_
                                               _tl287720287982_
                                               _e287725287985_
                                               _hd287724287988_
                                               _tl287723287990_
                                               _e287728287993_
                                               _hd287727287996_
                                               _tl287726287998_
                                               _e287731288001_
                                               _hd287730288004_
                                               _tl287729288006_
                                               _e287734288009_
                                               _hd287733288012_
                                               _tl287732288014_
                                               _e287737288017_
                                               _hd287736288020_
                                               _tl287735288022_
                                               _e287740288025_
                                               _hd287739288028_
                                               _tl287738288030_
                                               _e287743288033_
                                               _hd287742288036_
                                               _tl287741288038_
                                               _e287746288041_
                                               _hd287745288044_
                                               _tl287744288046_
                                               _e287749288049_
                                               _hd287748288052_
                                               _tl287747288054_
                                               _e287752288057_
                                               _hd287751288060_
                                               _tl287750288062_
                                               _e287755288065_
                                               _hd287754288068_
                                               _tl287753288070_
                                               _e287758288073_
                                               _hd287757288076_
                                               _tl287756288078_
                                               _e287761288081_
                                               _hd287760288084_
                                               _tl287759288086_
                                               _e287764288089_
                                               _hd287763288092_
                                               _tl287762288094_
                                               _e287767288097_
                                               _hd287766288100_
                                               _tl287765288102_)
                                              (___kont292634292635_))
                                          (___kont292634292635_))))
                                  (___kont292634292635_))
                              (___kont292634292635_))
                          (___kont292634292635_))))
                  (___kont292634292635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl287750288062_))
                                                      (if (let ((__tmp292924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp292924 'bind-method!))
                  (let ((_L287931_ _hd287757288076_)
                        (_L287932_ _hd287748288052_)
                        (_L287933_ _hd287739288028_)
                        (_L287934_ _hd287730288004_))
                    (___kont292632292633_
                     _L287931_
                     _L287932_
                     _L287933_
                     _L287934_))
                  (___kont292634292635_))
              (___kont292634292635_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont292634292635_))))
                                      (___kont292634292635_))
                                  (___kont292634292635_))
                              (___kont292634292635_))))
                      (___kont292634292635_))))
              (___kont292634292635_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont292634292635_))))
                                          (___kont292634292635_))
                                      (___kont292634292635_))
                                  (___kont292634292635_))))
                          (___kont292634292635_))))
                  (___kont292634292635_))
              (___kont292634292635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont292634292635_))
                                          (___kont292634292635_))
                                      (___kont292634292635_))))
                              (___kont292634292635_))))
                      (___kont292634292635_))
                  (___kont292634292635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont292634292635_))
                                              (___kont292634292635_))
                                          (___kont292634292635_))))
                                  (___kont292634292635_))))
                          (___kont292634292635_))))
                  (___kont292634292635_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self287685_)
        (let* ((_self287686287692_ _self287685_)
               (_E287688287696_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self287686287692_))))
               (_K287689287701_
                (lambda (_alias-id287699_)
                  (let ((__tmp292925
                         (let ()
                           (declare (not safe))
                           (cons _alias-id287699_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp292925)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self287686287692_ 'gxc#!alias::t))
              (let* ((_e287690287704_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287686287692_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id287707_ _e287690287704_))
                (declare (not safe))
                (_K287689287701_ _alias-id287707_))
              (let () (declare (not safe)) (_E287688287696_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self287476_)
        (let* ((_self287477287492_ _self287476_)
               (_E287479287496_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self287477287492_))))
               (_K287480287510_
                (lambda (_methods287499_
                         _metaclass287500_
                         _final?287501_
                         _struct?287502_
                         _constructor287503_
                         _fields287504_
                         _slots287505_
                         _precendence-list287506_
                         _super287507_
                         _id287508_)
                  (let ((__tmp292926
                         (let ((__tmp292927
                                (let ((__tmp292928
                                       (let ((__tmp292929
                                              (let ((__tmp292930
                                                     (let ((__tmp292931
                                                            (let ((__tmp292932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp292933
                                  (let ((__tmp292934
                                         (let ((__tmp292935
                                                (let ((__tmp292936
                                                       (if _methods287499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods287499_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp292936 '()))))
                                           (declare (not safe))
                                           (cons _metaclass287500_
                                                 __tmp292935))))
                                    (declare (not safe))
                                    (cons _final?287501_ __tmp292934))))
                             (declare (not safe))
                             (cons _struct?287502_ __tmp292933))))
                      (declare (not safe))
                      (cons _constructor287503_ __tmp292932))))
               (declare (not safe))
               (cons _fields287504_ __tmp292931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots287505_
                                                      __tmp292930))))
                                         (declare (not safe))
                                         (cons _precendence-list287506_
                                               __tmp292929))))
                                  (declare (not safe))
                                  (cons _super287507_ __tmp292928))))
                           (declare (not safe))
                           (cons _id287508_ __tmp292927))))
                    (declare (not safe))
                    (cons '@class __tmp292926)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self287477287492_ 'gxc#!class::t))
              (let* ((_e287481287513_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287477287492_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id287516_ _e287481287513_)
                     (_e287482287518_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287477287492_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super287521_ _e287482287518_)
                     (_e287483287523_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287477287492_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list287526_ _e287483287523_)
                     (_e287484287528_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287477287492_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots287531_ _e287484287528_)
                     (_e287485287533_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287477287492_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields287536_ _e287485287533_)
                     (_e287486287538_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287477287492_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor287541_ _e287486287538_)
                     (_e287487287543_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287477287492_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?287546_ _e287487287543_)
                     (_e287488287548_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287477287492_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?287551_ _e287488287548_)
                     (_e287489287553_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287477287492_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass287556_ _e287489287553_)
                     (_e287490287558_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287477287492_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods287561_ _e287490287558_))
                (declare (not safe))
                (_K287480287510_
                 _methods287561_
                 _metaclass287556_
                 _final?287551_
                 _struct?287546_
                 _constructor287541_
                 _fields287536_
                 _slots287531_
                 _precendence-list287526_
                 _super287521_
                 _id287516_))
              (let () (declare (not safe)) (_E287479287496_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self287330_)
        (let* ((_self287331287337_ _self287330_)
               (_E287333287341_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self287331287337_))))
               (_K287334287346_
                (lambda (_klass-id287344_)
                  (let ((__tmp292937
                         (let ()
                           (declare (not safe))
                           (cons _klass-id287344_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp292937)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self287331287337_
                 'gxc#!predicate::t))
              (let* ((_e287335287349_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287331287337_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id287352_ _e287335287349_))
                (declare (not safe))
                (_K287334287346_ _klass-id287352_))
              (let () (declare (not safe)) (_E287333287341_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self287184_)
        (let* ((_self287185287191_ _self287184_)
               (_E287187287195_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self287185287191_))))
               (_K287188287200_
                (lambda (_klass-id287198_)
                  (let ((__tmp292938
                         (let ()
                           (declare (not safe))
                           (cons _klass-id287198_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp292938)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self287185287191_
                 'gxc#!constructor::t))
              (let* ((_e287189287203_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287185287191_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id287206_ _e287189287203_))
                (declare (not safe))
                (_K287188287200_ _klass-id287206_))
              (let () (declare (not safe)) (_E287187287195_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self287024_)
        (let* ((_self287025287033_ _self287024_)
               (_E287027287037_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self287025287033_))))
               (_K287028287044_
                (lambda (_checked?287040_ _slot287041_ _klass-id287042_)
                  (let ((__tmp292939
                         (let ((__tmp292940
                                (let ((__tmp292941
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?287040_ '()))))
                                  (declare (not safe))
                                  (cons _slot287041_ __tmp292941))))
                           (declare (not safe))
                           (cons _klass-id287042_ __tmp292940))))
                    (declare (not safe))
                    (cons '@accessor __tmp292939)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self287025287033_
                 'gxc#!accessor::t))
              (let* ((_e287029287047_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287025287033_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id287050_ _e287029287047_)
                     (_e287030287052_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287025287033_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot287055_ _e287030287052_)
                     (_e287031287057_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287025287033_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?287060_ _e287031287057_))
                (declare (not safe))
                (_K287028287044_
                 _checked?287060_
                 _slot287055_
                 _klass-id287050_))
              (let () (declare (not safe)) (_E287027287037_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self286864_)
        (let* ((_self286865286873_ _self286864_)
               (_E286867286877_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self286865286873_))))
               (_K286868286884_
                (lambda (_checked?286880_ _slot286881_ _klass-id286882_)
                  (let ((__tmp292942
                         (let ((__tmp292943
                                (let ((__tmp292944
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?286880_ '()))))
                                  (declare (not safe))
                                  (cons _slot286881_ __tmp292944))))
                           (declare (not safe))
                           (cons _klass-id286882_ __tmp292943))))
                    (declare (not safe))
                    (cons '@mutator __tmp292942)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self286865286873_ 'gxc#!mutator::t))
              (let* ((_e286869286887_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286865286873_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id286890_ _e286869286887_)
                     (_e286870286892_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286865286873_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot286895_ _e286870286892_)
                     (_e286871286897_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286865286873_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?286900_ _e286871286897_))
                (declare (not safe))
                (_K286868286884_
                 _checked?286900_
                 _slot286895_
                 _klass-id286890_))
              (let () (declare (not safe)) (_E286867286877_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self286690_)
        (let* ((_self286691286701_ _self286690_)
               (_E286693286705_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self286691286701_))))
               (_K286694286716_
                (lambda (_typedecl286708_
                         _inline286709_
                         _dispatch286710_
                         _arity286711_)
                  (if _inline286709_
                      (let ((_$e286713_ _typedecl286708_))
                        (if _$e286713_
                            _$e286713_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp292945
                             (let ((__tmp292946
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch286710_ '()))))
                               (declare (not safe))
                               (cons _arity286711_ __tmp292946))))
                        (declare (not safe))
                        (cons '@lambda __tmp292945))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self286691286701_ 'gxc#!lambda::t))
              (let* ((_e286695286719_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286691286701_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e286696286722_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286691286701_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity286725_ _e286696286722_)
                     (_e286697286727_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286691286701_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch286730_ _e286697286727_)
                     (_e286698286732_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286691286701_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline286735_ _e286698286732_)
                     (_e286699286737_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286691286701_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl286740_ _e286699286737_))
                (declare (not safe))
                (_K286694286716_
                 _typedecl286740_
                 _inline286735_
                 _dispatch286730_
                 _arity286725_))
              (let () (declare (not safe)) (_E286693286705_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self286501_)
        (letrec ((_clause-e286503_
                  (lambda (_clause286533_)
                    (let* ((_clause286534286542_ _clause286533_)
                           (_E286536286546_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause286534286542_))))
                           (_K286537286552_
                            (lambda (_dispatch286549_ _arity286550_)
                              (let ((__tmp292947
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch286549_ '()))))
                                (declare (not safe))
                                (cons _arity286550_ __tmp292947)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause286534286542_
                             'gxc#!lambda::t))
                          (let* ((_e286538286555_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause286534286542_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e286539286558_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause286534286542_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity286561_ _e286539286558_)
                                 (_e286540286563_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause286534286542_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch286566_ _e286540286563_))
                            (declare (not safe))
                            (_K286537286552_ _dispatch286566_ _arity286561_))
                          (let () (declare (not safe)) (_E286536286546_)))))))
          (let* ((_self286504286511_ _self286501_)
                 (_E286506286515_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self286504286511_))))
                 (_K286507286522_
                  (lambda (_clauses286518_)
                    (let ((_clauses286520_
                           (map _clause-e286503_ _clauses286518_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses286520_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self286504286511_
                   'gxc#!case-lambda::t))
                (let* ((_e286508286525_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self286504286511_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e286509286528_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self286504286511_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses286531_ _e286509286528_))
                  (declare (not safe))
                  (_K286507286522_ _clauses286531_))
                (let () (declare (not safe)) (_E286506286515_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self286344_)
        (let* ((_self286345286353_ _self286344_)
               (_E286347286357_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self286345286353_))))
               (_K286348286363_
                (lambda (_dispatch286360_ _table286361_)
                  (let ((__tmp292948
                         (let ((__tmp292949
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch286360_ '()))))
                           (declare (not safe))
                           (cons _table286361_ __tmp292949))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp292948)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self286345286353_
                 'gxc#!kw-lambda::t))
              (let* ((_e286349286366_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286345286353_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e286350286369_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286345286353_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table286372_ _e286350286369_)
                     (_e286351286374_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286345286353_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch286377_ _e286351286374_))
                (declare (not safe))
                (_K286348286363_ _dispatch286377_ _table286372_))
              (let () (declare (not safe)) (_E286347286357_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self286187_)
        (let* ((_self286188286196_ _self286187_)
               (_E286190286200_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self286188286196_))))
               (_K286191286206_
                (lambda (_main286203_ _keys286204_)
                  (let ((__tmp292950
                         (let ((__tmp292951
                                (let ()
                                  (declare (not safe))
                                  (cons _main286203_ '()))))
                           (declare (not safe))
                           (cons _keys286204_ __tmp292951))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp292950)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self286188286196_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e286192286209_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286188286196_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e286193286212_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286188286196_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys286215_ _e286193286212_)
                     (_e286194286217_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286188286196_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main286220_ _e286194286217_))
                (declare (not safe))
                (_K286191286206_ _main286220_ _keys286215_))
              (let () (declare (not safe)) (_E286190286200_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
