(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj49414 (make-object gxc#optimizer-info::t '2)))
             (gxc#optimizer-info:::init! __obj49414)
             __obj49414)))))
  (define gxc#optimize!
    (lambda (_ctx49107_)
      (call-with-parameters
       (lambda ()
         (gxc#optimizer-load-ssxi-deps _ctx49107_)
         (table-set!
          (##structure-ref
           (gxc#current-compile-optimizer-info)
           '2
           gxc#optimizer-info::t
           '#f)
          (##structure-ref _ctx49107_ '1 gx#expander-context::t '#f)
          '#t)
         (let ((_code49110_
                (gxc#optimize-source
                 (##structure-ref _ctx49107_ '11 gx#module-context::t '#f))))
           (##structure-set!
            _ctx49107_
            _code49110_
            '11
            gx#module-context::t
            '#f)))
       gxc#current-compile-mutators
       (make-table 'test: eq?)
       gxc#current-compile-local-type
       (make-table 'test: eq?))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx49052_)
      (letrec* ((_deps49054_
                 (let* ((_imports49098_
                         (##structure-ref
                          _ctx49052_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e49100_ (gx#core-context-prelude__% _ctx49052_)))
                   (if _$e49100_
                       ((lambda (_g4910249104_)
                          (cons _g4910249104_ _imports49098_))
                        _$e49100_)
                       _imports49098_))))
        (let _lp49056_ ((_rest49058_ _deps49054_))
          (let* ((_rest4905949067_ _rest49058_)
                 (_else4906149075_ (lambda () '#!void))
                 (_K4906349086_
                  (lambda (_rest49078_ _hd49079_)
                    (if (##structure-instance-of?
                         _hd49079_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd49079_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e49081_
                                       (gx#core-context-prelude__% _hd49079_)))
                                  (if _$e49081_
                                      ((lambda (_pre49084_)
                                         (_lp49056_
                                          (cons _pre49084_
                                                (##structure-ref
                                                 _hd49079_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e49081_)
                                      (_lp49056_
                                       (##structure-ref
                                        _hd49079_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd49079_)))
                          (_lp49056_ _rest49078_))
                        (if (##structure-instance-of?
                             _hd49079_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd49079_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp49056_
                                     (##structure-ref
                                      _hd49079_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd49079_)))
                              (_lp49056_ _rest49078_))
                            (if (##structure-direct-instance-of?
                                 _hd49079_
                                 'gx#module-import::t)
                                (_lp49056_
                                 (cons (##direct-structure-ref
                                        _hd49079_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest49078_))
                                (if (##structure-direct-instance-of?
                                     _hd49079_
                                     'gx#module-export::t)
                                    (_lp49056_
                                     (cons (##direct-structure-ref
                                            _hd49079_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest49078_))
                                    (if (##structure-direct-instance-of?
                                         _hd49079_
                                         'gx#import-set::t)
                                        (_lp49056_
                                         (cons (##direct-structure-ref
                                                _hd49079_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest49078_))
                                        (error '"Unexpected module import"
                                               _hd49079_)))))))))
            (if (##pair? _rest4905949067_)
                (let ((_hd4906449089_ (##car _rest4905949067_))
                      (_tl4906549091_ (##cdr _rest4905949067_)))
                  (let* ((_hd49094_ _hd4906449089_)
                         (_rest49096_ _tl4906549091_))
                    (_K4906349086_ _rest49096_ _hd49094_)))
                '#!void))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx49032_)
      (if (and (##structure-instance-of? _ctx49032_ 'gx#module-context::t)
               (list? (##structure-ref
                       _ctx49032_
                       '7
                       gx#module-context::t
                       '#f)))
          '#!void
          (let* ((_ht49034_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id49036_
                  (##structure-ref _ctx49032_ '1 gx#expander-context::t '#f))
                 (_mod49038_ (table-ref _ht49034_ _id49036_ '#f)))
            (let ((_$e49041_ _mod49038_))
              (if _$e49041_
                  _$e49041_
                  (let* ((_mod49044_ (gxc#optimizer-import-ssxi _ctx49032_))
                         (_val49049_
                          (let ((_$e49046_ _mod49044_))
                            (if _$e49046_ _$e49046_ '#!void))))
                    (table-set! _ht49034_ _id49036_ _val49049_)
                    _val49049_)))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx49009_)
      (letrec ((_catch-e49011_
                (lambda (_exn49030_)
                  (if (gxc#current-compile-verbose)
                      (begin
                        (displayln
                         '"Failed to load ssxi module for "
                         (##structure-ref
                          _ctx49009_
                          '1
                          gx#expander-context::t
                          '#f))
                        (display-exception _exn49030_))
                      '#!void)
                  '#f))
               (_import-e49012_
                (lambda ()
                  (let* ((_str-id49015_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx49009_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path49023_
                          (let ((_odir4901649018_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4901649018_
                                (let ((_odir49021_ _odir4901649018_))
                                  (path-expand
                                   (string-append _str-id49015_ '".ss")
                                   _odir49021_))
                                '#f)))
                         (_library-path49025_
                          (string->symbol
                           (string-append '":" _str-id49015_ '".ss")))
                         (_ssxi-path49027_
                          (if (and _artefact-path49023_
                                   (file-exists? _artefact-path49023_))
                              _artefact-path49023_
                              _library-path49025_)))
                    (gxc#verbose '"Loading ssxi module " _ssxi-path49027_)
                    (gx#import-module__% _ssxi-path49027_ '#t '#t)))))
        (if (##structure-ref _ctx49009_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e49011_ _import-e49012_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx49003_)
      (gxc#apply-collect-mutators _stx49003_)
      (let ((_stx49005_ (gxc#apply-lift-top-lambdas _stx49003_)))
        (gxc#apply-collect-type-info _stx49005_)
        (let ((_stx49007_ (gxc#apply-optimize-annotated _stx49005_)))
          (gxc#apply-optimize-call _stx49007_)))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl49000_ (make-table 'test: eq?)))
         (hash-copy! _tbl49000_ (force gxc#&generate-runtime-empty))
         (table-set! _tbl49000_ '%#begin gxc#generate-runtime-begin%)
         (table-set!
          _tbl49000_
          '%#begin-syntax
          gxc#generate-ssxi-begin-syntax%)
         (table-set! _tbl49000_ '%#module gxc#generate-ssxi-module%)
         (table-set!
          _tbl49000_
          '%#define-values
          gxc#generate-ssxi-define-values%)
         (table-set! _tbl49000_ '%#call gxc#generate-ssxi-call%)
         _tbl49000_))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx48993_ . _args48995_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx48993_ _args48995_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx48954_)
      (let* ((_g4895648966_
              (lambda (_g4895748963_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4895748963_)))
             (_g4895548990_
              (lambda (_g4895748969_)
                (if (gx#stx-pair? _g4895748969_)
                    (let ((_e4895948971_ (gx#stx-e _g4895748969_)))
                      (let ((_hd4896048974_ (##car _e4895948971_))
                            (_tl4896148976_ (##cdr _e4895948971_)))
                        ((lambda (_L48979_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx48954_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4896148976_)))
                    (_g4895648966_ _g4895748969_)))))
        (_g4895548990_ _stx48954_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx48894_)
      (let* ((_g4889648910_
              (lambda (_g4889748907_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4889748907_)))
             (_g4889548951_
              (lambda (_g4889748913_)
                (if (gx#stx-pair? _g4889748913_)
                    (let ((_e4890048915_ (gx#stx-e _g4889748913_)))
                      (let ((_hd4890148918_ (##car _e4890048915_))
                            (_tl4890248920_ (##cdr _e4890048915_)))
                        (if (gx#stx-pair? _tl4890248920_)
                            (let ((_e4890348923_ (gx#stx-e _tl4890248920_)))
                              (let ((_hd4890448926_ (##car _e4890348923_))
                                    (_tl4890548928_ (##cdr _e4890348923_)))
                                ((lambda (_L48931_ _L48932_)
                                   (let* ((_ctx48945_
                                           (gx#syntax-local-e__0 _L48932_))
                                          (_code48947_
                                           (##structure-ref
                                            _ctx48945_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code48947_))
                                      gx#current-expander-context
                                      _ctx48945_)))
                                 _tl4890548928_
                                 _hd4890448926_)))
                            (_g4889648910_ _g4889748913_))))
                    (_g4889648910_ _g4889748913_)))))
        (_g4889548951_ _stx48894_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx48704_)
      (letrec ((_generate-e48706_
                (lambda (_id48883_)
                  (let* ((_sym48885_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id48883_)
                              '#f))
                         (_$e48887_
                          (if _sym48885_
                              (gxc#optimizer-lookup-type _sym48885_)
                              '#f)))
                    (if _$e48887_
                        ((lambda (_type48890_)
                           (gxc#verbose '"generate typedecl " _sym48885_)
                           (let ((_typedecl48892_
                                  (call-method _type48890_ 'typedecl)))
                             (cons 'declare-type
                                   (cons _sym48885_
                                         (cons _typedecl48892_ '())))))
                         _$e48887_)
                        '(begin))))))
        (let* ((___stx4911349114_ _stx48704_)
               (_g4870948747_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4911349114_))))
          (let ((___kont4911549116_
                 (lambda (_L48865_) (_generate-e48706_ _L48865_)))
                (___kont4911749118_
                 (lambda (_L48800_)
                   (let ((_types48826_
                          (map _generate-e48706_
                               (foldr1 (lambda (_g4881848821_ _g4881948823_)
                                         (cons _g4881848821_ _g4881948823_))
                                       '()
                                       _L48800_))))
                     (cons 'begin _types48826_)))))
            (let ((___match4916849169_
                   (lambda (_e4872548752_
                            _hd4872648755_
                            _tl4872748757_
                            _e4872848760_
                            _hd4872948763_
                            _tl4873048765_
                            ___splice4911949120_
                            _target4873148768_
                            _tl4873348770_)
                     (letrec ((_loop4873448773_
                               (lambda (_hd4873248776_ _id4873848778_)
                                 (if (gx#stx-pair? _hd4873248776_)
                                     (let ((_e4873548781_
                                            (gx#stx-e _hd4873248776_)))
                                       (let ((_lp-tl4873748786_
                                              (##cdr _e4873548781_))
                                             (_lp-hd4873648784_
                                              (##car _e4873548781_)))
                                         (_loop4873448773_
                                          _lp-tl4873748786_
                                          (cons _lp-hd4873648784_
                                                _id4873848778_))))
                                     (let ((_id4873948789_
                                            (reverse _id4873848778_)))
                                       (if (gx#stx-pair? _tl4873048765_)
                                           (let ((_e4874048792_
                                                  (gx#stx-e _tl4873048765_)))
                                             (let ((_tl4874248797_
                                                    (##cdr _e4874048792_))
                                                   (_hd4874148795_
                                                    (##car _e4874048792_)))
                                               (if (gx#stx-null?
                                                    _tl4874248797_)
                                                   (___kont4911749118_
                                                    _id4873948789_)
                                                   (_g4870948747_))))
                                           (_g4870948747_)))))))
                       (_loop4873448773_ _target4873148768_ '())))))
              (if (gx#stx-pair? ___stx4911349114_)
                  (let ((_e4871248833_ (gx#stx-e ___stx4911349114_)))
                    (let ((_tl4871448838_ (##cdr _e4871248833_))
                          (_hd4871348836_ (##car _e4871248833_)))
                      (if (gx#stx-pair? _tl4871448838_)
                          (let ((_e4871548841_ (gx#stx-e _tl4871448838_)))
                            (let ((_tl4871748846_ (##cdr _e4871548841_))
                                  (_hd4871648844_ (##car _e4871548841_)))
                              (if (gx#stx-pair? _hd4871648844_)
                                  (let ((_e4871848849_
                                         (gx#stx-e _hd4871648844_)))
                                    (let ((_tl4872048854_
                                           (##cdr _e4871848849_))
                                          (_hd4871948852_
                                           (##car _e4871848849_)))
                                      (if (gx#stx-null? _tl4872048854_)
                                          (if (gx#stx-pair? _tl4871748846_)
                                              (let ((_e4872148857_
                                                     (gx#stx-e
                                                      _tl4871748846_)))
                                                (let ((_tl4872348862_
                                                       (##cdr _e4872148857_))
                                                      (_hd4872248860_
                                                       (##car _e4872148857_)))
                                                  (if (gx#stx-null?
                                                       _tl4872348862_)
                                                      (___kont4911549116_
                                                       _hd4871948852_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4871648844_)
                                                          (let ((___splice4911949120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4871648844_ '0)))
                    (let ((_tl4873348770_
                           (##vector-ref ___splice4911949120_ '1))
                          (_target4873148768_
                           (##vector-ref ___splice4911949120_ '0)))
                      (if (gx#stx-null? _tl4873348770_)
                          (___match4916849169_
                           _e4871248833_
                           _hd4871348836_
                           _tl4871448838_
                           _e4871548841_
                           _hd4871648844_
                           _tl4871748846_
                           ___splice4911949120_
                           _target4873148768_
                           _tl4873348770_)
                          (_g4870948747_))))
                  (_g4870948747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4871648844_)
                                                  (let ((___splice4911949120_
                                                         (gx#syntax-split-splice
                                                          _hd4871648844_
                                                          '0)))
                                                    (let ((_tl4873348770_
                                                           (##vector-ref
                                                            ___splice4911949120_
                                                            '1))
                                                          (_target4873148768_
                                                           (##vector-ref
                                                            ___splice4911949120_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4873348770_)
                                                          (___match4916849169_
                                                           _e4871248833_
                                                           _hd4871348836_
                                                           _tl4871448838_
                                                           _e4871548841_
                                                           _hd4871648844_
                                                           _tl4871748846_
                                                           ___splice4911949120_
                                                           _target4873148768_
                                                           _tl4873348770_)
                                                          (_g4870948747_))))
                                                  (_g4870948747_)))
                                          (if (gx#stx-pair/null?
                                               _hd4871648844_)
                                              (let ((___splice4911949120_
                                                     (gx#syntax-split-splice
                                                      _hd4871648844_
                                                      '0)))
                                                (let ((_tl4873348770_
                                                       (##vector-ref
                                                        ___splice4911949120_
                                                        '1))
                                                      (_target4873148768_
                                                       (##vector-ref
                                                        ___splice4911949120_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4873348770_)
                                                      (___match4916849169_
                                                       _e4871248833_
                                                       _hd4871348836_
                                                       _tl4871448838_
                                                       _e4871548841_
                                                       _hd4871648844_
                                                       _tl4871748846_
                                                       ___splice4911949120_
                                                       _target4873148768_
                                                       _tl4873348770_)
                                                      (_g4870948747_))))
                                              (_g4870948747_)))))
                                  (if (gx#stx-pair/null? _hd4871648844_)
                                      (let ((___splice4911949120_
                                             (gx#syntax-split-splice
                                              _hd4871648844_
                                              '0)))
                                        (let ((_tl4873348770_
                                               (##vector-ref
                                                ___splice4911949120_
                                                '1))
                                              (_target4873148768_
                                               (##vector-ref
                                                ___splice4911949120_
                                                '0)))
                                          (if (gx#stx-null? _tl4873348770_)
                                              (___match4916849169_
                                               _e4871248833_
                                               _hd4871348836_
                                               _tl4871448838_
                                               _e4871548841_
                                               _hd4871648844_
                                               _tl4871748846_
                                               ___splice4911949120_
                                               _target4873148768_
                                               _tl4873348770_)
                                              (_g4870948747_))))
                                      (_g4870948747_)))))
                          (_g4870948747_))))
                  (_g4870948747_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx48258_)
      (let* ((___stx4917149172_ _stx48258_)
             (_g4826248364_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4917149172_))))
        (let ((___kont4917349174_
               (lambda (_L48654_ _L48655_ _L48656_ _L48657_ _L48658_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L48657_)
                             (cons (gx#stx-e _L48656_)
                                   (cons (gxc#identifier-symbol _L48655_)
                                         (cons (gx#stx-e _L48654_) '())))))))
              (___kont4917549176_
               (lambda (_L48480_ _L48481_ _L48482_ _L48483_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L48482_)
                             (cons (gx#stx-e _L48481_)
                                   (cons (gxc#identifier-symbol _L48480_)
                                         (cons '#f '())))))))
              (___kont4917749178_ (lambda () '(begin))))
          (let ((___match4930649307_
                 (lambda (_e4826948526_
                          _hd4827048529_
                          _tl4827148531_
                          _e4827248534_
                          _hd4827348537_
                          _tl4827448539_
                          _e4827548542_
                          _hd4827648545_
                          _tl4827748547_
                          _e4827848550_
                          _hd4827948553_
                          _tl4828048555_
                          _e4828148558_
                          _hd4828248561_
                          _tl4828348563_
                          _e4828448566_
                          _hd4828548569_
                          _tl4828648571_
                          _e4828748574_
                          _hd4828848577_
                          _tl4828948579_
                          _e4829048582_
                          _hd4829148585_
                          _tl4829248587_
                          _e4829348590_
                          _hd4829448593_
                          _tl4829548595_
                          _e4829648598_
                          _hd4829748601_
                          _tl4829848603_
                          _e4829948606_
                          _hd4830048609_
                          _tl4830148611_
                          _e4830248614_
                          _hd4830348617_
                          _tl4830448619_
                          _e4830548622_
                          _hd4830648625_
                          _tl4830748627_
                          _e4830848630_
                          _hd4830948633_
                          _tl4831048635_
                          _e4831148638_
                          _hd4831248641_
                          _tl4831348643_
                          _e4831448646_
                          _hd4831548649_
                          _tl4831648651_)
                   (let ((_L48654_ _hd4831548649_)
                         (_L48655_ _hd4830648625_)
                         (_L48656_ _hd4829748601_)
                         (_L48657_ _hd4828848577_)
                         (_L48658_ _hd4827948553_))
                     (if (gxc#runtime-identifier=? _L48658_ 'bind-method!)
                         (___kont4917349174_
                          _L48654_
                          _L48655_
                          _L48656_
                          _L48657_
                          _L48658_)
                         (___kont4917749178_))))))
            (if (gx#stx-pair? ___stx4917149172_)
                (let ((_e4826948526_ (gx#stx-e ___stx4917149172_)))
                  (let ((_tl4827148531_ (##cdr _e4826948526_))
                        (_hd4827048529_ (##car _e4826948526_)))
                    (if (gx#stx-pair? _tl4827148531_)
                        (let ((_e4827248534_ (gx#stx-e _tl4827148531_)))
                          (let ((_tl4827448539_ (##cdr _e4827248534_))
                                (_hd4827348537_ (##car _e4827248534_)))
                            (if (gx#stx-pair? _hd4827348537_)
                                (let ((_e4827548542_
                                       (gx#stx-e _hd4827348537_)))
                                  (let ((_tl4827748547_ (##cdr _e4827548542_))
                                        (_hd4827648545_ (##car _e4827548542_)))
                                    (if (gx#identifier? _hd4827648545_)
                                        (if (gx#stx-eq? '%#ref _hd4827648545_)
                                            (if (gx#stx-pair? _tl4827748547_)
                                                (let ((_e4827848550_
                                                       (gx#stx-e
                                                        _tl4827748547_)))
                                                  (let ((_tl4828048555_
                                                         (##cdr _e4827848550_))
                                                        (_hd4827948553_
                                                         (##car _e4827848550_)))
                                                    (if (gx#stx-null?
                                                         _tl4828048555_)
                                                        (if (gx#stx-pair?
                                                             _tl4827448539_)
                                                            (let ((_e4828148558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4827448539_)))
                      (let ((_tl4828348563_ (##cdr _e4828148558_))
                            (_hd4828248561_ (##car _e4828148558_)))
                        (if (gx#stx-pair? _hd4828248561_)
                            (let ((_e4828448566_ (gx#stx-e _hd4828248561_)))
                              (let ((_tl4828648571_ (##cdr _e4828448566_))
                                    (_hd4828548569_ (##car _e4828448566_)))
                                (if (gx#identifier? _hd4828548569_)
                                    (if (gx#stx-eq? '%#ref _hd4828548569_)
                                        (if (gx#stx-pair? _tl4828648571_)
                                            (let ((_e4828748574_
                                                   (gx#stx-e _tl4828648571_)))
                                              (let ((_tl4828948579_
                                                     (##cdr _e4828748574_))
                                                    (_hd4828848577_
                                                     (##car _e4828748574_)))
                                                (if (gx#stx-null?
                                                     _tl4828948579_)
                                                    (if (gx#stx-pair?
                                                         _tl4828348563_)
                                                        (let ((_e4829048582_
                                                               (gx#stx-e
                                                                _tl4828348563_)))
                                                          (let ((_tl4829248587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4829048582_))
                        (_hd4829148585_ (##car _e4829048582_)))
                    (if (gx#stx-pair? _hd4829148585_)
                        (let ((_e4829348590_ (gx#stx-e _hd4829148585_)))
                          (let ((_tl4829548595_ (##cdr _e4829348590_))
                                (_hd4829448593_ (##car _e4829348590_)))
                            (if (gx#identifier? _hd4829448593_)
                                (if (gx#stx-eq? '%#quote _hd4829448593_)
                                    (if (gx#stx-pair? _tl4829548595_)
                                        (let ((_e4829648598_
                                               (gx#stx-e _tl4829548595_)))
                                          (let ((_tl4829848603_
                                                 (##cdr _e4829648598_))
                                                (_hd4829748601_
                                                 (##car _e4829648598_)))
                                            (if (gx#stx-null? _tl4829848603_)
                                                (if (gx#stx-pair?
                                                     _tl4829248587_)
                                                    (let ((_e4829948606_
                                                           (gx#stx-e
                                                            _tl4829248587_)))
                                                      (let ((_tl4830148611_
                                                             (##cdr _e4829948606_))
                                                            (_hd4830048609_
                                                             (##car _e4829948606_)))
                                                        (if (gx#stx-pair?
                                                             _hd4830048609_)
                                                            (let ((_e4830248614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4830048609_)))
                      (let ((_tl4830448619_ (##cdr _e4830248614_))
                            (_hd4830348617_ (##car _e4830248614_)))
                        (if (gx#identifier? _hd4830348617_)
                            (if (gx#stx-eq? '%#ref _hd4830348617_)
                                (if (gx#stx-pair? _tl4830448619_)
                                    (let ((_e4830548622_
                                           (gx#stx-e _tl4830448619_)))
                                      (let ((_tl4830748627_
                                             (##cdr _e4830548622_))
                                            (_hd4830648625_
                                             (##car _e4830548622_)))
                                        (if (gx#stx-null? _tl4830748627_)
                                            (if (gx#stx-pair? _tl4830148611_)
                                                (let ((_e4830848630_
                                                       (gx#stx-e
                                                        _tl4830148611_)))
                                                  (let ((_tl4831048635_
                                                         (##cdr _e4830848630_))
                                                        (_hd4830948633_
                                                         (##car _e4830848630_)))
                                                    (if (gx#stx-pair?
                                                         _hd4830948633_)
                                                        (let ((_e4831148638_
                                                               (gx#stx-e
                                                                _hd4830948633_)))
                                                          (let ((_tl4831348643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4831148638_))
                        (_hd4831248641_ (##car _e4831148638_)))
                    (if (gx#identifier? _hd4831248641_)
                        (if (gx#stx-eq? '%#quote _hd4831248641_)
                            (if (gx#stx-pair? _tl4831348643_)
                                (let ((_e4831448646_
                                       (gx#stx-e _tl4831348643_)))
                                  (let ((_tl4831648651_ (##cdr _e4831448646_))
                                        (_hd4831548649_ (##car _e4831448646_)))
                                    (if (gx#stx-null? _tl4831648651_)
                                        (if (gx#stx-null? _tl4831048635_)
                                            (___match4930649307_
                                             _e4826948526_
                                             _hd4827048529_
                                             _tl4827148531_
                                             _e4827248534_
                                             _hd4827348537_
                                             _tl4827448539_
                                             _e4827548542_
                                             _hd4827648545_
                                             _tl4827748547_
                                             _e4827848550_
                                             _hd4827948553_
                                             _tl4828048555_
                                             _e4828148558_
                                             _hd4828248561_
                                             _tl4828348563_
                                             _e4828448566_
                                             _hd4828548569_
                                             _tl4828648571_
                                             _e4828748574_
                                             _hd4828848577_
                                             _tl4828948579_
                                             _e4829048582_
                                             _hd4829148585_
                                             _tl4829248587_
                                             _e4829348590_
                                             _hd4829448593_
                                             _tl4829548595_
                                             _e4829648598_
                                             _hd4829748601_
                                             _tl4829848603_
                                             _e4829948606_
                                             _hd4830048609_
                                             _tl4830148611_
                                             _e4830248614_
                                             _hd4830348617_
                                             _tl4830448619_
                                             _e4830548622_
                                             _hd4830648625_
                                             _tl4830748627_
                                             _e4830848630_
                                             _hd4830948633_
                                             _tl4831048635_
                                             _e4831148638_
                                             _hd4831248641_
                                             _tl4831348643_
                                             _e4831448646_
                                             _hd4831548649_
                                             _tl4831648651_)
                                            (___kont4917749178_))
                                        (___kont4917749178_))))
                                (___kont4917749178_))
                            (___kont4917749178_))
                        (___kont4917749178_))))
                (___kont4917749178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4830148611_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L48480_
                                                               _hd4830648625_)
                                                              (_L48481_
                                                               _hd4829748601_)
                                                              (_L48482_
                                                               _hd4828848577_)
                                                              (_L48483_
                                                               _hd4827948553_))
                                                          (___kont4917549176_
                                                           _L48480_
                                                           _L48481_
                                                           _L48482_
                                                           _L48483_))
                                                        (___kont4917749178_))
                                                    (___kont4917749178_)))
                                            (___kont4917749178_))))
                                    (___kont4917749178_))
                                (___kont4917749178_))
                            (___kont4917749178_))))
                    (___kont4917749178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4917749178_))
                                                (___kont4917749178_))))
                                        (___kont4917749178_))
                                    (___kont4917749178_))
                                (___kont4917749178_))))
                        (___kont4917749178_))))
                (___kont4917749178_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4917749178_))))
                                            (___kont4917749178_))
                                        (___kont4917749178_))
                                    (___kont4917749178_))))
                            (___kont4917749178_))))
                    (___kont4917749178_))
                (___kont4917749178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4917749178_))
                                            (___kont4917749178_))
                                        (___kont4917749178_))))
                                (___kont4917749178_))))
                        (___kont4917749178_))))
                (___kont4917749178_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self48234_)
      (let* ((_self4823548241_ _self48234_)
             (_E4823748245_
              (lambda () (error '"No clause matching" _self4823548241_)))
             (_K4823848250_
              (lambda (_alias-id48248_)
                (cons '@alias (cons _alias-id48248_ '())))))
        (if (##structure-instance-of? _self4823548241_ 'gxc#!alias::t)
            (let* ((_e4823948253_ (##vector-ref _self4823548241_ '1))
                   (_alias-id48256_ _e4823948253_))
              (_K4823848250_ _alias-id48256_))
            (_E4823748245_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self48056_)
      (let* ((_self4805748068_ _self48056_)
             (_E4805948072_
              (lambda () (error '"No clause matching" _self4805748068_)))
             (_K4806048081_
              (lambda (_plist48075_
                       _ctor48076_
                       _fields48077_
                       _super48078_
                       _type-id48079_)
                (cons '@struct-type
                      (cons _type-id48079_
                            (cons _super48078_
                                  (cons _fields48077_
                                        (cons _ctor48076_
                                              (cons _plist48075_ '())))))))))
        (if (##structure-instance-of? _self4805748068_ 'gxc#!struct-type::t)
            (let* ((_e4806148084_ (##vector-ref _self4805748068_ '1))
                   (_type-id48087_ _e4806148084_)
                   (_e4806248089_ (##vector-ref _self4805748068_ '2))
                   (_super48092_ _e4806248089_)
                   (_e4806348094_ (##vector-ref _self4805748068_ '3))
                   (_fields48097_ _e4806348094_)
                   (_e4806448099_ (##vector-ref _self4805748068_ '4))
                   (_e4806548102_ (##vector-ref _self4805748068_ '5))
                   (_ctor48105_ _e4806548102_)
                   (_e4806648107_ (##vector-ref _self4805748068_ '6))
                   (_plist48110_ _e4806648107_))
              (_K4806048081_
               _plist48110_
               _ctor48105_
               _fields48097_
               _super48092_
               _type-id48087_))
            (_E4805948072_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self47910_)
      (let* ((_self4791147917_ _self47910_)
             (_E4791347921_
              (lambda () (error '"No clause matching" _self4791147917_)))
             (_K4791447926_
              (lambda (_struct-t47924_)
                (cons '@struct-pred (cons _struct-t47924_ '())))))
        (if (##structure-instance-of? _self4791147917_ 'gxc#!struct-pred::t)
            (let* ((_e4791547929_ (##vector-ref _self4791147917_ '1))
                   (_struct-t47932_ _e4791547929_))
              (_K4791447926_ _struct-t47932_))
            (_E4791347921_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self47764_)
      (let* ((_self4776547771_ _self47764_)
             (_E4776747775_
              (lambda () (error '"No clause matching" _self4776547771_)))
             (_K4776847780_
              (lambda (_struct-t47778_)
                (cons '@struct-cons (cons _struct-t47778_ '())))))
        (if (##structure-instance-of? _self4776547771_ 'gxc#!struct-cons::t)
            (let* ((_e4776947783_ (##vector-ref _self4776547771_ '1))
                   (_struct-t47786_ _e4776947783_))
              (_K4776847780_ _struct-t47786_))
            (_E4776747775_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self47604_)
      (let* ((_self4760547613_ _self47604_)
             (_E4760747617_
              (lambda () (error '"No clause matching" _self4760547613_)))
             (_K4760847624_
              (lambda (_unchecked?47620_ _off47621_ _struct-t47622_)
                (cons '@struct-getf
                      (cons _struct-t47622_
                            (cons _off47621_ (cons _unchecked?47620_ '())))))))
        (if (##structure-instance-of? _self4760547613_ 'gxc#!struct-getf::t)
            (let* ((_e4760947627_ (##vector-ref _self4760547613_ '1))
                   (_struct-t47630_ _e4760947627_)
                   (_e4761047632_ (##vector-ref _self4760547613_ '2))
                   (_off47635_ _e4761047632_)
                   (_e4761147637_ (##vector-ref _self4760547613_ '3))
                   (_unchecked?47640_ _e4761147637_))
              (_K4760847624_ _unchecked?47640_ _off47635_ _struct-t47630_))
            (_E4760747617_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self47444_)
      (let* ((_self4744547453_ _self47444_)
             (_E4744747457_
              (lambda () (error '"No clause matching" _self4744547453_)))
             (_K4744847464_
              (lambda (_unchecked?47460_ _off47461_ _struct-t47462_)
                (cons '@struct-setf
                      (cons _struct-t47462_
                            (cons _off47461_ (cons _unchecked?47460_ '())))))))
        (if (##structure-instance-of? _self4744547453_ 'gxc#!struct-setf::t)
            (let* ((_e4744947467_ (##vector-ref _self4744547453_ '1))
                   (_struct-t47470_ _e4744947467_)
                   (_e4745047472_ (##vector-ref _self4744547453_ '2))
                   (_off47475_ _e4745047472_)
                   (_e4745147477_ (##vector-ref _self4744547453_ '3))
                   (_unchecked?47480_ _e4745147477_))
              (_K4744847464_ _unchecked?47480_ _off47475_ _struct-t47470_))
            (_E4744747457_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self47270_)
      (let* ((_self4727147281_ _self47270_)
             (_E4727347285_
              (lambda () (error '"No clause matching" _self4727147281_)))
             (_K4727447296_
              (lambda (_typedecl47288_
                       _inline47289_
                       _dispatch47290_
                       _arity47291_)
                (if _inline47289_
                    (let ((_$e47293_ _typedecl47288_))
                      (if _$e47293_
                          _$e47293_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity47291_ (cons _dispatch47290_ '())))))))
        (if (##structure-instance-of? _self4727147281_ 'gxc#!lambda::t)
            (let* ((_e4727547299_ (##vector-ref _self4727147281_ '1))
                   (_e4727647302_ (##vector-ref _self4727147281_ '2))
                   (_arity47305_ _e4727647302_)
                   (_e4727747307_ (##vector-ref _self4727147281_ '3))
                   (_dispatch47310_ _e4727747307_)
                   (_e4727847312_ (##vector-ref _self4727147281_ '4))
                   (_inline47315_ _e4727847312_)
                   (_e4727947317_ (##vector-ref _self4727147281_ '5))
                   (_typedecl47320_ _e4727947317_))
              (_K4727447296_
               _typedecl47320_
               _inline47315_
               _dispatch47310_
               _arity47305_))
            (_E4727347285_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self47081_)
      (letrec ((_clause-e47083_
                (lambda (_clause47113_)
                  (let* ((_clause4711447122_ _clause47113_)
                         (_E4711647126_
                          (lambda ()
                            (error '"No clause matching" _clause4711447122_)))
                         (_K4711747132_
                          (lambda (_dispatch47129_ _arity47130_)
                            (cons _arity47130_ (cons _dispatch47129_ '())))))
                    (if (##structure-instance-of?
                         _clause4711447122_
                         'gxc#!lambda::t)
                        (let* ((_e4711847135_
                                (##vector-ref _clause4711447122_ '1))
                               (_e4711947138_
                                (##vector-ref _clause4711447122_ '2))
                               (_arity47141_ _e4711947138_)
                               (_e4712047143_
                                (##vector-ref _clause4711447122_ '3))
                               (_dispatch47146_ _e4712047143_))
                          (_K4711747132_ _dispatch47146_ _arity47141_))
                        (_E4711647126_))))))
        (let* ((_self4708447091_ _self47081_)
               (_E4708647095_
                (lambda () (error '"No clause matching" _self4708447091_)))
               (_K4708747102_
                (lambda (_clauses47098_)
                  (let ((_clauses47100_ (map _clause-e47083_ _clauses47098_)))
                    (cons '@case-lambda _clauses47100_)))))
          (if (##structure-instance-of? _self4708447091_ 'gxc#!case-lambda::t)
              (let* ((_e4708847105_ (##vector-ref _self4708447091_ '1))
                     (_e4708947108_ (##vector-ref _self4708447091_ '2))
                     (_clauses47111_ _e4708947108_))
                (_K4708747102_ _clauses47111_))
              (_E4708647095_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self46924_)
      (let* ((_self4692546933_ _self46924_)
             (_E4692746937_
              (lambda () (error '"No clause matching" _self4692546933_)))
             (_K4692846943_
              (lambda (_dispatch46940_ _table46941_)
                (cons '@kw-lambda
                      (cons _table46941_ (cons _dispatch46940_ '()))))))
        (if (##structure-instance-of? _self4692546933_ 'gxc#!kw-lambda::t)
            (let* ((_e4692946946_ (##vector-ref _self4692546933_ '1))
                   (_e4693046949_ (##vector-ref _self4692546933_ '2))
                   (_table46952_ _e4693046949_)
                   (_e4693146954_ (##vector-ref _self4692546933_ '3))
                   (_dispatch46957_ _e4693146954_))
              (_K4692846943_ _dispatch46957_ _table46952_))
            (_E4692746937_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self46767_)
      (let* ((_self4676846776_ _self46767_)
             (_E4677046780_
              (lambda () (error '"No clause matching" _self4676846776_)))
             (_K4677146786_
              (lambda (_main46783_ _keys46784_)
                (cons '@kw-lambda-dispatch
                      (cons _keys46784_ (cons _main46783_ '()))))))
        (if (##structure-instance-of?
             _self4676846776_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4677246789_ (##vector-ref _self4676846776_ '1))
                   (_e4677346792_ (##vector-ref _self4676846776_ '2))
                   (_keys46795_ _e4677346792_)
                   (_e4677446797_ (##vector-ref _self4676846776_ '3))
                   (_main46800_ _e4677446797_))
              (_K4677146786_ _main46800_ _keys46795_))
            (_E4677046780_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
