(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#module-import::t
    (make-struct-type
     'gx#module-import::t
     '#f
     '4
     'module-import
     '((final: . #t))
     '#f))
  (define gx#module-import? (make-struct-predicate gx#module-import::t))
  (define gx#make-module-import
    (lambda _$args10719_
      (apply make-struct-instance gx#module-import::t _$args10719_)))
  (define gx#module-import-source
    (make-struct-field-accessor gx#module-import::t '0))
  (define gx#module-import-name
    (make-struct-field-accessor gx#module-import::t '1))
  (define gx#module-import-phi
    (make-struct-field-accessor gx#module-import::t '2))
  (define gx#module-import-weak?
    (make-struct-field-accessor gx#module-import::t '3))
  (define gx#module-import-source-set!
    (make-struct-field-mutator gx#module-import::t '0))
  (define gx#module-import-name-set!
    (make-struct-field-mutator gx#module-import::t '1))
  (define gx#module-import-phi-set!
    (make-struct-field-mutator gx#module-import::t '2))
  (define gx#module-import-weak?-set!
    (make-struct-field-mutator gx#module-import::t '3))
  (define gx#module-export::t
    (make-struct-type
     'gx#module-export::t
     '#f
     '5
     'module-export
     '((final: . #t))
     '#f))
  (define gx#module-export? (make-struct-predicate gx#module-export::t))
  (define gx#make-module-export
    (lambda _$args10716_
      (apply make-struct-instance gx#module-export::t _$args10716_)))
  (define gx#module-export-context
    (make-struct-field-accessor gx#module-export::t '0))
  (define gx#module-export-key
    (make-struct-field-accessor gx#module-export::t '1))
  (define gx#module-export-phi
    (make-struct-field-accessor gx#module-export::t '2))
  (define gx#module-export-name
    (make-struct-field-accessor gx#module-export::t '3))
  (define gx#module-export-weak?
    (make-struct-field-accessor gx#module-export::t '4))
  (define gx#module-export-context-set!
    (make-struct-field-mutator gx#module-export::t '0))
  (define gx#module-export-key-set!
    (make-struct-field-mutator gx#module-export::t '1))
  (define gx#module-export-phi-set!
    (make-struct-field-mutator gx#module-export::t '2))
  (define gx#module-export-name-set!
    (make-struct-field-mutator gx#module-export::t '3))
  (define gx#module-export-weak?-set!
    (make-struct-field-mutator gx#module-export::t '4))
  (define gx#import-set::t
    (make-struct-type
     'gx#import-set::t
     '#f
     '3
     'import-set
     '((final: . #t))
     '#f))
  (define gx#import-set? (make-struct-predicate gx#import-set::t))
  (define gx#make-import-set
    (lambda _$args10713_
      (apply make-struct-instance gx#import-set::t _$args10713_)))
  (define gx#import-set-source
    (make-struct-field-accessor gx#import-set::t '0))
  (define gx#import-set-phi (make-struct-field-accessor gx#import-set::t '1))
  (define gx#import-set-imports
    (make-struct-field-accessor gx#import-set::t '2))
  (define gx#import-set-source-set!
    (make-struct-field-mutator gx#import-set::t '0))
  (define gx#import-set-phi-set!
    (make-struct-field-mutator gx#import-set::t '1))
  (define gx#import-set-imports-set!
    (make-struct-field-mutator gx#import-set::t '2))
  (define gx#export-set::t
    (make-struct-type
     'gx#export-set::t
     '#f
     '3
     'export-set
     '((final: . #t))
     '#f))
  (define gx#export-set? (make-struct-predicate gx#export-set::t))
  (define gx#make-export-set
    (lambda _$args10710_
      (apply make-struct-instance gx#export-set::t _$args10710_)))
  (define gx#export-set-source
    (make-struct-field-accessor gx#export-set::t '0))
  (define gx#export-set-phi (make-struct-field-accessor gx#export-set::t '1))
  (define gx#export-set-exports
    (make-struct-field-accessor gx#export-set::t '2))
  (define gx#export-set-source-set!
    (make-struct-field-mutator gx#export-set::t '0))
  (define gx#export-set-phi-set!
    (make-struct-field-mutator gx#export-set::t '1))
  (define gx#export-set-exports-set!
    (make-struct-field-mutator gx#export-set::t '2))
  (define gx#import-expander::t
    (make-struct-type
     'gx#import-expander::t
     gx#user-expander::t
     '0
     'import-expander
     '()
     ':init!))
  (define gx#import-expander? (make-struct-predicate gx#import-expander::t))
  (define gx#make-import-expander
    (lambda _$args10707_
      (apply make-struct-instance gx#import-expander::t _$args10707_)))
  (define gx#export-expander::t
    (make-struct-type
     'gx#export-expander::t
     gx#user-expander::t
     '0
     'export-expander
     '()
     ':init!))
  (define gx#export-expander? (make-struct-predicate gx#export-expander::t))
  (define gx#make-export-expander
    (lambda _$args10704_
      (apply make-struct-instance gx#export-expander::t _$args10704_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self10698_ _id10699_ _super10700_ _ns10701_ _path10702_)
      (direct-struct-instance-init!
       _self10698_
       _id10699_
       (make-hash-table-eq)
       _super10700_
       '#f
       '#f
       _ns10701_
       _path10702_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda10662
      (lambda (_self10664_ _ctx10665_ _root10666_)
        (let ((_super10674_
               (let ((_$e10668_ _root10666_))
                 (if _$e10668_
                     _$e10668_
                     (let ((_$e10671_ (gx#core-context-root__0)))
                       (if _$e10671_
                           _$e10671_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx10665_
              (let ((_id10677_
                     (##structure-ref
                      _ctx10665_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path10678_
                     (##structure-ref _ctx10665_ '7 gx#module-context::t '#f))
                    (_in10679_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx10665_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e10680_
                     (make-promise (lambda () (gx#eval-module _ctx10665_)))))
                (begin
                  (direct-struct-instance-init!
                   _self10664_
                   _id10677_
                   (make-hash-table-eq)
                   _super10674_
                   '#f
                   '#f
                   _path10678_
                   _in10679_
                   _e10680_)
                  (for-each
                   (lambda (_g1068110683_)
                     (gx#core-bind-weak-import!__opt-lambda10187
                      _g1068110683_
                      _self10664_))
                   _in10679_)))
              (direct-struct-instance-init!
               _self10664_
               '#f
               (make-hash-table-eq)
               _super10674_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self10689_ _ctx10690_)
          (let ((_root10692_ '#f))
            (gx#prelude-context:::init!__opt-lambda10662
             _self10689_
             _ctx10690_
             _root10692_))))
      (define gx#prelude-context:::init!
        (lambda _g10726_
          (let ((_g10725_ (length _g10726_)))
            (cond ((fx= _g10725_ 2)
                   (apply gx#prelude-context:::init!__0 _g10726_))
                  ((fx= _g10725_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda10662
                          _g10726_))
                  (else (error "No clause matching arguments" _g10726_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self10660_ _e10661_)
      (direct-struct-instance-init!
       _self10660_
       _e10661_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self10657_ _e10658_)
      (direct-struct-instance-init!
       _self10657_
       _e10658_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1064910652_ _g1065010654_)
      (gx#core-apply-user-expander__opt-lambda4209
       _g1064910652_
       _g1065010654_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1064210645_ _g1064310647_)
      (gx#core-apply-user-expander__opt-lambda4209
       _g1064210645_
       _g1064310647_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx10636_)
      (let ((_path10638_
             (##structure-ref _ctx10636_ '7 gx#module-context::t '#f)))
        (let ((_path10640_
               (if (pair? _path10638_) (last _path10638_) _path10638_)))
          (let () (if (string? _path10640_) _path10640_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda10610
      (lambda (_path10612_ _reload?10613_ _eval?10614_)
        (let ((_ctx10616_
               ((gx#current-expander-module-import)
                _path10612_
                _reload?10613_)))
          (begin
            (if (if _ctx10616_ _eval?10614_ '#f)
                (gx#eval-module _ctx10616_)
                '#!void)
            _ctx10616_))))
    (begin
      (define gx#import-module__0
        (lambda (_path10621_)
          (let ((_reload?10623_ '#f))
            (let ((_eval?10625_ '#f))
              (gx#import-module__opt-lambda10610
               _path10621_
               _reload?10623_
               _eval?10625_)))))
      (define gx#import-module__1
        (lambda (_path10627_ _reload?10628_)
          (let ((_eval?10630_ '#f))
            (gx#import-module__opt-lambda10610
             _path10627_
             _reload?10628_
             _eval?10630_))))
      (define gx#import-module
        (lambda _g10728_
          (let ((_g10727_ (length _g10728_)))
            (cond ((fx= _g10727_ 1) (apply gx#import-module__0 _g10728_))
                  ((fx= _g10727_ 2) (apply gx#import-module__1 _g10728_))
                  ((fx= _g10727_ 3)
                   (apply gx#import-module__opt-lambda10610 _g10728_))
                  (else (error "No clause matching arguments" _g10728_))))))))
  (define gx#eval-module
    (lambda (_mod10609_) ((gx#current-expander-module-eval) _mod10609_)))
  (define gx#core-eval-module
    (lambda (_obj10594_)
      (let ((_force-e10596_
             (lambda (_getf10605_ _e10606_)
               (call-with-parameters
                (lambda () (force (_getf10605_ _e10606_)))
                gx#current-expander-context
                _e10606_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur10598_
                   (lambda (_e10600_)
                     (if (##structure-instance-of?
                          _e10600_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e10602_
                                  (gx#core-context-prelude__opt-lambda10575
                                   _e10600_)))
                             (if _$e10602_ (_recur10598_ _$e10602_) '#!void))
                           (_force-e10596_ gx#module-context-e _e10600_))
                         (if (##structure-instance-of?
                              _e10600_
                              'gx#prelude-context::t)
                             (_force-e10596_ gx#prelude-context-e _e10600_)
                             (if (gx#stx-string? _e10600_)
                                 (_recur10598_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e10600_)))
                                 (if (gx#core-library-module-path? _e10600_)
                                     (_recur10598_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e10600_)))
                                     (error '"Cannot eval module"
                                            _obj10594_))))))))
           _recur10598_)
         _obj10594_))))
  (begin
    (define gx#core-context-prelude__opt-lambda10575
      (lambda (_ctx10577_)
        ((letrec ((_lp10579_
                   (lambda (_e10581_)
                     (if (let ((_$e10583_
                                (##structure-instance-of?
                                 _e10581_
                                 'gx#module-context::t)))
                           (if _$e10583_
                               _$e10583_
                               (##structure-instance-of?
                                _e10581_
                                'gx#local-context::t)))
                         (_lp10579_
                          (##structure-ref _e10581_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e10581_
                              'gx#prelude-context::t)
                             _e10581_
                             '#f)))))
           _lp10579_)
         _ctx10577_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx10590_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda10575 _ctx10590_))))
      (define gx#core-context-prelude
        (lambda _g10730_
          (let ((_g10729_ (length _g10730_)))
            (cond ((fx= _g10729_ 0)
                   (apply gx#core-context-prelude__0 _g10730_))
                  ((fx= _g10729_ 1)
                   (apply gx#core-context-prelude__opt-lambda10575 _g10730_))
                  (else (error "No clause matching arguments" _g10730_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx10567_)
      (let ((_ht10569_ (gx#current-expander-module-registry)))
        (let ((_$e10571_ (table-ref _ht10569_ _ctx10567_ '#f)))
          (if _$e10571_
              (values _$e10571_)
              (let ((_pre10574_
                     (let ((__obj10721 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj10721 _ctx10567_)
                         __obj10721))))
                (begin
                  (hash-put! _ht10569_ _ctx10567_ _pre10574_)
                  _pre10574_)))))))
  (begin
    (define gx#core-import-module__opt-lambda10519
      (lambda (_rpath10521_ _reload?10522_)
        (let ((_import-source10524_
               (lambda (_path10536_)
                 (begin
                   (if (member _path10536_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path10536_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g10731_ (gx#core-read-module _path10536_)))
                        (begin
                          (let ((_g10732_ (values-count _g10731_)))
                            (if (not (fx= _g10732_ 4))
                                (error "Context expects 4 values" _g10732_)))
                          (let ((_pre10539_ (values-ref _g10731_ 0))
                                (_id10540_ (values-ref _g10731_ 1))
                                (_ns10541_ (values-ref _g10731_ 2))
                                (_body10542_ (values-ref _g10731_ 3)))
                            (let ((_prelude10547_
                                   (if (##structure-instance-of?
                                        _pre10539_
                                        'gx#prelude-context::t)
                                       _pre10539_
                                       (if (##structure-instance-of?
                                            _pre10539_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre10539_)
                                           (if (string? _pre10539_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre10539_))
                                               (if (not _pre10539_)
                                                   (let ((_$e10544_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e10544_
                                                         _$e10544_
                                                         (let ((__obj10722
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj10722 '#f)
                     __obj10722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath10521_
                                                          _pre10539_)))))))
                              (let ((_ctx10549_
                                     (let ((__obj10723
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj10723
                                          _id10540_
                                          _prelude10547_
                                          _ns10541_
                                          _path10536_)
                                         __obj10723))))
                                (let ((_body10551_
                                       (gx#core-expand-module-begin
                                        _body10542_
                                        _ctx10549_)))
                                  (let ((_body10553_
                                         (gx#core-quote-syntax__opt-lambda3569
                                          (gx#core-cons '%#begin _body10551_)
                                          _path10536_
                                          _ctx10549_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx10549_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body10553_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx10549_
                                         _body10553_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (hash-put!
                                         (gx#current-expander-module-registry)
                                         _path10536_
                                         _ctx10549_)
                                        (hash-put!
                                         (gx#current-expander-module-registry)
                                         _id10540_
                                         _ctx10549_)
                                        _ctx10549_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path10536_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e10526_
                 (if (not _reload?10522_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath10521_
                      '#f)
                     '#f)))
            (if _$e10526_
                (values _$e10526_)
                (if (gx#core-library-module-path? _rpath10521_)
                    (let ((_ctx10529_
                           (gx#core-import-module__opt-lambda10519
                            (gx#core-resolve-library-module-path _rpath10521_)
                            _reload?10522_)))
                      (begin
                        (hash-put!
                         (gx#current-expander-module-registry)
                         _rpath10521_
                         _ctx10529_)
                        _ctx10529_))
                    (let ((_npath10531_ (path-normalize _rpath10521_)))
                      (let ((_$e10533_
                             (if (not _reload?10522_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath10531_
                                  '#f)
                                 '#f)))
                        (if _$e10533_
                            (values _$e10533_)
                            (_import-source10524_ _npath10531_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath10560_)
          (let ((_reload?10562_ '#f))
            (gx#core-import-module__opt-lambda10519
             _rpath10560_
             _reload?10562_))))
      (define gx#core-import-module
        (lambda _g10734_
          (let ((_g10733_ (length _g10734_)))
            (cond ((fx= _g10733_ 1) (apply gx#core-import-module__0 _g10734_))
                  ((fx= _g10733_ 2)
                   (apply gx#core-import-module__opt-lambda10519 _g10734_))
                  (else (error "No clause matching arguments" _g10734_))))))))
  (define gx#core-read-module
    (lambda (_path10384_)
      ((letrec ((_lp10386_
                 (lambda (_body10388_ _pre10389_ _ns10390_ _pkg10391_)
                   (let ((_e1039210416_ _body10388_))
                     (let ((_E1040810434_
                            (lambda ()
                              (let ((_prelude10420_
                                     (if (gx#core-bound-module-prelude?
                                          _pre10389_)
                                         (gx#syntax-local-e__0 _pre10389_)
                                         (if (gx#core-library-module-path?
                                              _pre10389_)
                                             (gx#core-resolve-library-module-path
                                              _pre10389_)
                                             (if (gx#stx-string? _pre10389_)
                                                 (gx#core-resolve-module-path__opt-lambda10357
                                                  _pre10389_
                                                  _path10384_)
                                                 (gx#stx-e _pre10389_))))))
                                (let ((_path-id10422_
                                       (gx#core-module-path->namespace
                                        _path10384_)))
                                  (let ((_pkg-id10424_
                                         (if _pkg10391_
                                             (string-append
                                              _pkg10391_
                                              '"/"
                                              _path-id10422_)
                                             _path-id10422_)))
                                    (let ((_module-id10426_
                                           (string->symbol _pkg-id10424_)))
                                      (let ((_module-ns10431_
                                             (let ((_$e10428_ _ns10390_))
                                               (if _$e10428_
                                                   _$e10428_
                                                   _pkg-id10424_))))
                                        (let ()
                                          (values _prelude10420_
                                                  _module-id10426_
                                                  _module-ns10431_
                                                  _body10388_))))))))))
                       (let ((_E1040110463_
                              (lambda ()
                                (if (gx#stx-pair? _e1039210416_)
                                    (let ((_e1040910438_
                                           (gx#syntax-e _e1039210416_)))
                                      (let ((_hd1041010441_
                                             (##car _e1040910438_))
                                            (_tl1041110443_
                                             (##cdr _e1040910438_)))
                                        (if (eq? (gx#stx-e _hd1041010441_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1041110443_)
                                                (let ((_e1041210446_
                                                       (gx#syntax-e
                                                        _tl1041110443_)))
                                                  (let ((_hd1041310449_
                                                         (##car _e1041210446_))
                                                        (_tl1041410451_
                                                         (##cdr _e1041210446_)))
                                                    (let ((_pkg10454_
                                                           _hd1041310449_))
                                                      (let ((_rest10456_
                                                             _tl1041410451_))
                                                        (if '#t
                                                            (let ((_pkg10461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg10454_)
                               (symbol->string (gx#stx-e _pkg10454_))
                               (if (let ((_$e10458_
                                          (gx#stx-string? _pkg10454_)))
                                     (if _$e10458_
                                         _$e10458_
                                         (gx#stx-false? _pkg10454_)))
                                   (gx#stx-e _pkg10454_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg10454_)))))
                      (_lp10386_ _rest10456_ _pre10389_ _ns10390_ _pkg10461_))
                    (_E1040810434_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1040810434_))
                                            (_E1040810434_))))
                                    (_E1040810434_)))))
                         (let ((_E1039410492_
                                (lambda ()
                                  (if (gx#stx-pair? _e1039210416_)
                                      (let ((_e1040210467_
                                             (gx#syntax-e _e1039210416_)))
                                        (let ((_hd1040310470_
                                               (##car _e1040210467_))
                                              (_tl1040410472_
                                               (##cdr _e1040210467_)))
                                          (if (eq? (gx#stx-e _hd1040310470_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1040410472_)
                                                  (let ((_e1040510475_
                                                         (gx#syntax-e
                                                          _tl1040410472_)))
                                                    (let ((_hd1040610478_
                                                           (##car _e1040510475_))
                                                          (_tl1040710480_
                                                           (##cdr _e1040510475_)))
                                                      (let ((_ns10483_
                                                             _hd1040610478_))
                                                        (let ((_rest10485_
                                                               _tl1040710480_))
                                                          (if '#t
                                                              (let ((_ns10490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns10483_)
                                 (symbol->string (gx#stx-e _ns10483_))
                                 (if (let ((_$e10487_
                                            (gx#stx-string? _ns10483_)))
                                       (if _$e10487_
                                           _$e10487_
                                           (gx#stx-false? _ns10483_)))
                                     (gx#stx-e _ns10483_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns10483_)))))
                        (_lp10386_
                         _rest10485_
                         _pre10389_
                         _ns10490_
                         _pkg10391_))
                      (_E1040110463_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1040110463_))
                                              (_E1040110463_))))
                                      (_E1040110463_)))))
                           (let ((_E1039310516_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1039210416_)
                                        (let ((_e1039510496_
                                               (gx#syntax-e _e1039210416_)))
                                          (let ((_hd1039610499_
                                                 (##car _e1039510496_))
                                                (_tl1039710501_
                                                 (##cdr _e1039510496_)))
                                            (if (eq? (gx#stx-e _hd1039610499_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1039710501_)
                                                    (let ((_e1039810504_
                                                           (gx#syntax-e
                                                            _tl1039710501_)))
                                                      (let ((_hd1039910507_
                                                             (##car _e1039810504_))
                                                            (_tl1040010509_
                                                             (##cdr _e1039810504_)))
                                                        (let ((_prelude10512_
                                                               _hd1039910507_))
                                                          (let ((_rest10514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1040010509_))
                    (if '#t
                        (_lp10386_
                         _rest10514_
                         _prelude10512_
                         _ns10390_
                         _pkg10391_)
                        (_E1039410492_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1039410492_))
                                                (_E1039410492_))))
                                        (_E1039410492_)))))
                             (let () (_E1039310516_))))))))))
         _lp10386_)
       (read-syntax-from-file _path10384_)
       '#f
       '#f
       '#f)))
  (define gx#core-module-path->namespace
    (lambda (_path10382_)
      (path-strip-extension (path-strip-directory _path10382_))))
  (define gx#core-module-path->id
    (lambda (_path10380_)
      (string->symbol (gx#core-module-path->namespace _path10380_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10357
      (lambda (_stx-path10359_ _rel10360_)
        (let ((_path10362_ (gx#stx-e _stx-path10359_)))
          (let ((_path10364_
                 (if (equal? (path-extension _path10362_) '".ss")
                     _path10362_
                     (string-append _path10362_ '".ss"))))
            (let ()
              (gx#core-resolve-path__opt-lambda3533
               _path10364_
               (let ((_$e10367_ (gx#stx-source _stx-path10359_)))
                 (if _$e10367_ _$e10367_ _rel10360_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10373_)
          (let ((_rel10375_ '#f))
            (gx#core-resolve-module-path__opt-lambda10357
             _stx-path10373_
             _rel10375_))))
      (define gx#core-resolve-module-path
        (lambda _g10736_
          (let ((_g10735_ (length _g10736_)))
            (cond ((fx= _g10735_ 1)
                   (apply gx#core-resolve-module-path__0 _g10736_))
                  ((fx= _g10735_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10357
                          _g10736_))
                  (else (error "No clause matching arguments" _g10736_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10305_)
      (let ((_spath10307_ (symbol->string (gx#stx-e _libpath10305_))))
        (let ((_spath10309_
               (substring _spath10307_ '1 (string-length _spath10307_))))
          (let ()
            ((letrec ((_lp10312_
                       (lambda (_rest10314_)
                         (let ((_rest1031510324_ _rest10314_))
                           (let ((_E1031810328_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _rest1031510324_))))
                             (let ((_try-match1031710336_
                                    (lambda ()
                                      (let ((_K1031910333_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Cannot find library module"
                                                _libpath10305_))))
                                        (if (##null? _rest1031510324_)
                                            (_K1031910333_)
                                            (_E1031810328_))))))
                               (let ((_K1032010346_
                                      (lambda (_rest10339_ _dir10340_)
                                        (let ((_compiled-path10342_
                                               (path-expand
                                                (string-append
                                                 _spath10309_
                                                 '".ssi")
                                                _dir10340_)))
                                          (if (file-exists?
                                               _compiled-path10342_)
                                              (path-normalize
                                               _compiled-path10342_)
                                              (let ((_src-path10344_
                                                     (path-expand
                                                      (string-append
                                                       _spath10309_
                                                       '".ss")
                                                      _dir10340_)))
                                                (if (file-exists?
                                                     _src-path10344_)
                                                    (path-normalize
                                                     _src-path10344_)
                                                    (_lp10312_
                                                     _rest10339_))))))))
                                 (if (##pair? _rest1031510324_)
                                     (let ((_hd1032110349_
                                            (##car _rest1031510324_))
                                           (_tl1032210351_
                                            (##cdr _rest1031510324_)))
                                       (let ((_dir10354_ _hd1032110349_))
                                         (let ((_rest10356_ _tl1032210351_))
                                           (_K1032010346_
                                            _rest10356_
                                            _dir10354_))))
                                     (_try-match1031710336_)))))))))
               _lp10312_)
             (gx#current-expander-module-library-path)))))))
  (define gx#core-library-module-path?
    (lambda (_stx10303_) (gx#core-special-module-path? _stx10303_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10298_ _char10299_)
      (if (gx#identifier? _stx10298_)
          (if (interned-symbol? (gx#stx-e _stx10298_))
              (let ((_str10301_ (symbol->string (gx#stx-e _stx10298_))))
                (if (fx> (string-length _str10301_) '1)
                    (eq? (string-ref _str10301_ '0) _char10299_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10292_)
      (gx#core-bound-identifier?__opt-lambda3623
       _stx10292_
       (lambda (_g1029310295_)
         (gx#expander-binding?__opt-lambda3654
          _g1029310295_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10286_)
      (gx#core-bound-identifier?__opt-lambda3623
       _stx10286_
       (lambda (_g1028710289_)
         (gx#expander-binding?__opt-lambda3654
          _g1028710289_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10273_)
      (let ((_module-prelude?10275_
             (lambda (_e10281_)
               (let ((_$e10283_
                      (##structure-instance-of?
                       _e10281_
                       'gx#module-context::t)))
                 (if _$e10283_
                     _$e10283_
                     (##structure-instance-of?
                      _e10281_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda3623
         _stx10273_
         (lambda (_g1027610278_)
           (gx#expander-binding?__opt-lambda3654
            _g1027610278_
            _module-prelude?10275_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10201
      (lambda (_in10203_ _ctx10204_ _force-weak?10205_)
        (let ((_in1020610215_ _in10203_))
          (let ((_E1020810219_
                 (lambda () (error '"No clause matching" _in1020610215_))))
            (let ((_K1020910232_
                   (lambda (_weak?10222_ _phi10223_ _key10224_ _source10225_)
                     (gx#core-bind!__opt-lambda3893
                      _key10224_
                      (let ((_e10227_
                             (gx#core-resolve-module-export _source10225_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10227_ '1 gx#binding::t '#f)
                         _key10224_
                         _phi10223_
                         _e10227_
                         (##structure-ref
                          _source10225_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10229_ _force-weak?10205_))
                           (if _$e10229_ _$e10229_ _weak?10222_))))
                      gx#core-context-rebind?
                      _phi10223_
                      _ctx10204_))))
              (if (direct-struct-instance? gx#module-import::t _in1020610215_)
                  (let ((_e1021010235_ (##vector-ref _in1020610215_ '1)))
                    (let ((_source10238_ _e1021010235_))
                      (let ((_e1021110240_ (##vector-ref _in1020610215_ '2)))
                        (let ((_key10243_ _e1021110240_))
                          (let ((_e1021210245_
                                 (##vector-ref _in1020610215_ '3)))
                            (let ((_phi10248_ _e1021210245_))
                              (let ((_e1021310250_
                                     (##vector-ref _in1020610215_ '4)))
                                (let ((_weak?10253_ _e1021310250_))
                                  (_K1020910232_
                                   _weak?10253_
                                   _phi10248_
                                   _key10243_
                                   _source10238_)))))))))
                  (_E1020810219_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10258_)
          (let ((_ctx10260_ (gx#current-expander-context)))
            (let ((_force-weak?10262_ '#f))
              (gx#core-bind-import!__opt-lambda10201
               _in10258_
               _ctx10260_
               _force-weak?10262_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10264_ _ctx10265_)
          (let ((_force-weak?10267_ '#f))
            (gx#core-bind-import!__opt-lambda10201
             _in10264_
             _ctx10265_
             _force-weak?10267_))))
      (define gx#core-bind-import!
        (lambda _g10738_
          (let ((_g10737_ (length _g10738_)))
            (cond ((fx= _g10737_ 1) (apply gx#core-bind-import!__0 _g10738_))
                  ((fx= _g10737_ 2) (apply gx#core-bind-import!__1 _g10738_))
                  ((fx= _g10737_ 3)
                   (apply gx#core-bind-import!__opt-lambda10201 _g10738_))
                  (else (error "No clause matching arguments" _g10738_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10187
      (lambda (_in10189_ _ctx10190_)
        (gx#core-bind-import!__opt-lambda10201 _in10189_ _ctx10190_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10195_)
          (let ((_ctx10197_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10187
             _in10195_
             _ctx10197_))))
      (define gx#core-bind-weak-import!
        (lambda _g10740_
          (let ((_g10739_ (length _g10740_)))
            (cond ((fx= _g10739_ 1)
                   (apply gx#core-bind-weak-import!__0 _g10740_))
                  ((fx= _g10739_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10187 _g10740_))
                  (else (error "No clause matching arguments" _g10740_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10080_)
      (let ((_subst10082_
             (lambda (_key10128_)
               (let ((_key1012910137_ _key10128_))
                 (let ((_E1013210141_
                        (lambda ()
                          (error '"No clause matching" _key1012910137_))))
                   (let ((_else1013110145_ (lambda () _key10128_)))
                     (let ((_K1013310176_
                            (lambda (_mark10148_ _id10149_)
                              (let ((_mark1015010156_ _mark10148_))
                                (let ((_E1015210160_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1015010156_))))
                                  (let ((_K1015310168_
                                         (lambda (_subst10163_)
                                           (let ((_$e10165_
                                                  (if _subst10163_
                                                      (table-ref
                                                       _subst10163_
                                                       _id10149_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10165_
                                                 _$e10165_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10128_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark1015010156_)
                                        (let ((_e1015410171_
                                               (##vector-ref
                                                _mark1015010156_
                                                '1)))
                                          (let ((_subst10174_ _e1015410171_))
                                            (_K1015310168_ _subst10174_)))
                                        (_E1015210160_))))))))
                       (if (##pair? _key1012910137_)
                           (let ((_hd1013410179_ (##car _key1012910137_))
                                 (_tl1013510181_ (##cdr _key1012910137_)))
                             (let ((_id10184_ _hd1013410179_))
                               (let ((_mark10186_ _tl1013510181_))
                                 (_K1013310176_ _mark10186_ _id10184_))))
                           (_else1013110145_)))))))))
        (let ((_out1008310093_ _out10080_))
          (let ((_E1008510097_
                 (lambda () (error '"No clause matching" _out1008310093_))))
            (let ((_K1008610104_
                   (lambda (_phi10100_ _key10101_ _ctx10102_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10102_ _phi10100_)
                      (_subst10082_ _key10101_)))))
              (if (direct-struct-instance? gx#module-export::t _out1008310093_)
                  (let ((_e1008710107_ (##vector-ref _out1008310093_ '1)))
                    (let ((_ctx10110_ _e1008710107_))
                      (let ((_e1008810112_ (##vector-ref _out1008310093_ '2)))
                        (let ((_key10115_ _e1008810112_))
                          (let ((_e1008910117_
                                 (##vector-ref _out1008310093_ '3)))
                            (let ((_phi10120_ _e1008910117_))
                              (let ((_e1009010122_
                                     (##vector-ref _out1008310093_ '4)))
                                (let ((_e1009110125_
                                       (##vector-ref _out1008310093_ '5)))
                                  (_K1008610104_
                                   _phi10120_
                                   _key10115_
                                   _ctx10110_)))))))))
                  (_E1008510097_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10003
      (lambda (_out10005_ _rename10006_ _dphi10007_)
        (let ((_out1000810018_ _out10005_))
          (let ((_E1001010022_
                 (lambda () (error '"No clause matching" _out1000810018_))))
            (let ((_K1001110034_
                   (lambda (_weak?10025_
                            _name10026_
                            _phi10027_
                            _key10028_
                            _ctx10029_)
                     (##structure
                      gx#module-import::t
                      _out10005_
                      (let ((_$e10031_ _rename10006_))
                        (if _$e10031_ _$e10031_ _name10026_))
                      (fx+ _phi10027_ _dphi10007_)
                      _weak?10025_))))
              (if (direct-struct-instance? gx#module-export::t _out1000810018_)
                  (let ((_e1001210037_ (##vector-ref _out1000810018_ '1)))
                    (let ((_ctx10040_ _e1001210037_))
                      (let ((_e1001310042_ (##vector-ref _out1000810018_ '2)))
                        (let ((_key10045_ _e1001310042_))
                          (let ((_e1001410047_
                                 (##vector-ref _out1000810018_ '3)))
                            (let ((_phi10050_ _e1001410047_))
                              (let ((_e1001510052_
                                     (##vector-ref _out1000810018_ '4)))
                                (let ((_name10055_ _e1001510052_))
                                  (let ((_e1001610057_
                                         (##vector-ref _out1000810018_ '5)))
                                    (let ((_weak?10060_ _e1001610057_))
                                      (_K1001110034_
                                       _weak?10060_
                                       _name10055_
                                       _phi10050_
                                       _key10045_
                                       _ctx10040_)))))))))))
                  (_E1001010022_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10065_)
          (let ((_rename10067_ '#f))
            (let ((_dphi10069_ '0))
              (gx#core-module-export->import__opt-lambda10003
               _out10065_
               _rename10067_
               _dphi10069_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10071_ _rename10072_)
          (let ((_dphi10074_ '0))
            (gx#core-module-export->import__opt-lambda10003
             _out10071_
             _rename10072_
             _dphi10074_))))
      (define gx#core-module-export->import
        (lambda _g10742_
          (let ((_g10741_ (length _g10742_)))
            (cond ((fx= _g10741_ 1)
                   (apply gx#core-module-export->import__0 _g10742_))
                  ((fx= _g10741_ 2)
                   (apply gx#core-module-export->import__1 _g10742_))
                  ((fx= _g10741_ 3)
                   (apply gx#core-module-export->import__opt-lambda10003
                          _g10742_))
                  (else (error "No clause matching arguments" _g10742_))))))))
  (define gx#core-expand-module%
    (lambda (_stx9933_)
      (let ((_make-context9935_
             (lambda (_id9986_)
               (let ((_super9988_ (gx#current-expander-context)))
                 (let ((_bind-id9990_ (gx#stx-e _id9986_)))
                   (let ((_mod-id9992_
                          (if (##structure-instance-of?
                               _super9988_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super9988_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id9990_)
                              _bind-id9990_)))
                     (let ((_ns9994_ (symbol->string _mod-id9992_)))
                       (let ((_path10001_
                              (if (##structure-instance-of?
                                   _super9988_
                                   'gx#module-context::t)
                                  (let ((_path9996_
                                         (##structure-ref
                                          _super9988_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e9998_ (pair? _path9996_)))
                                          (if _$e9998_
                                              _$e9998_
                                              (null? _path9996_)))
                                        (cons _bind-id9990_ _path9996_)
                                        (if (not _path9996_)
                                            _bind-id9990_
                                            (cons _bind-id9990_
                                                  (cons _path9996_ '())))))
                                  _bind-id9990_)))
                         (let ()
                           (let ((__obj10724
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj10724
                                _mod-id9992_
                                _super9988_
                                _ns9994_
                                _path10001_)
                               __obj10724)))))))))))
        (let ((_e99369946_ _stx9933_))
          (let ((_E99389950_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e99369946_))))
            (let ((_E99379982_
                   (lambda ()
                     (if (gx#stx-pair? _e99369946_)
                         (let ((_e99399954_ (gx#syntax-e _e99369946_)))
                           (let ((_hd99409957_ (##car _e99399954_))
                                 (_tl99419959_ (##cdr _e99399954_)))
                             (if (gx#stx-pair? _tl99419959_)
                                 (let ((_e99429962_
                                        (gx#syntax-e _tl99419959_)))
                                   (let ((_hd99439965_ (##car _e99429962_))
                                         (_tl99449967_ (##cdr _e99429962_)))
                                     (let ((_id9970_ _hd99439965_))
                                       (let ((_body9972_ _tl99449967_))
                                         (if (if (gx#identifier? _id9970_)
                                                 (gx#stx-list? _body9972_)
                                                 '#f)
                                             (let ((_ctx9974_
                                                    (_make-context9935_
                                                     _id9970_)))
                                               (let ((_body9976_
                                                      (gx#core-expand-module-begin
                                                       _body9972_
                                                       _ctx9974_)))
                                                 (let ((_body9978_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body9976_)
                                                         (gx#stx-source
                                                          _stx9933_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx9974_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body9978_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx9974_
                                                        _body9978_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id9970_
                                                        _ctx9974_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id9970_)
                                                         _body9978_)
                                                        (gx#stx-source
                                                         _stx9933_)))))))
                                             (_E99389950_))))))
                                 (_E99389950_))))
                         (_E99389950_)))))
              (let () (_E99379982_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body9929_ _ctx9930_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (gx#core-expand-module-body _body9929_)))
       gx#current-expander-context
       _ctx9930_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body9725_)
      (let ((_expand-special9727_
             (lambda (_hd9856_ _K9857_ _rest9858_ _r9859_)
               (let ((_e98609877_ _hd9856_))
                 (let ((_E98729881_
                        (lambda ()
                          (_K9857_ _rest9858_
                                   (cons (gx#core-expand-top _hd9856_)
                                         _r9859_)))))
                   (let ((_E98629893_
                          (lambda ()
                            (if (gx#stx-pair? _e98609877_)
                                (let ((_e98739885_ (gx#syntax-e _e98609877_)))
                                  (let ((_hd98749888_ (##car _e98739885_))
                                        (_tl98759890_ (##cdr _e98739885_)))
                                    (if (if (gx#identifier? _hd98749888_)
                                            (gx#core-identifier=?
                                             _hd98749888_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K9857_ _rest9858_
                                                     (cons _hd9856_ _r9859_))
                                            (_E98729881_))
                                        (_E98729881_))))
                                (_E98729881_)))))
                     (let ((_E98619925_
                            (lambda ()
                              (if (gx#stx-pair? _e98609877_)
                                  (let ((_e98639897_
                                         (gx#syntax-e _e98609877_)))
                                    (let ((_hd98649900_ (##car _e98639897_))
                                          (_tl98659902_ (##cdr _e98639897_)))
                                      (if (if (gx#identifier? _hd98649900_)
                                              (gx#core-identifier=?
                                               _hd98649900_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl98659902_)
                                              (let ((_e98669905_
                                                     (gx#syntax-e
                                                      _tl98659902_)))
                                                (let ((_hd98679908_
                                                       (##car _e98669905_))
                                                      (_tl98689910_
                                                       (##cdr _e98669905_)))
                                                  (let ((_hd-bind9913_
                                                         _hd98679908_))
                                                    (if (gx#stx-pair?
                                                         _tl98689910_)
                                                        (let ((_e98699915_
                                                               (gx#syntax-e
                                                                _tl98689910_)))
                                                          (let ((_hd98709918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e98699915_))
                        (_tl98719920_ (##cdr _e98699915_)))
                    (let ((_expr9923_ _hd98709918_))
                      (if (gx#stx-null? _tl98719920_)
                          (if (gx#core-bind-values? _hd-bind9913_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind9913_)
                                (_K9857_ _rest9858_ (cons _hd9856_ _r9859_)))
                              (_E98629893_))
                          (_E98629893_)))))
                (_E98629893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E98629893_))
                                          (_E98629893_))))
                                  (_E98629893_)))))
                       (let () (_E98619925_)))))))))
        (let ((_expand-body9728_
               (lambda (_rbody9730_)
                 ((letrec ((_lp9732_
                            (lambda (_rest9734_ _body9735_)
                              (let ((_rest97369744_ _rest9734_))
                                (let ((_E97399748_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest97369744_))))
                                  (let ((_else97389752_
                                         (lambda () _body9735_)))
                                    (let ((_K97409844_
                                           (lambda (_rest9755_ _hd9756_)
                                             (let ((_e97579778_ _hd9756_))
                                               (let ((_E97739782_
                                                      (lambda ()
                                                        (_lp9732_
                                                         _rest9755_
                                                         (cons (gx#core-expand-expression
                                                                _hd9756_)
                                                               _body9735_)))))
                                                 (let ((_E97699796_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e97579778_)
                                                              (let ((_e97749786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e97579778_)))
                        (let ((_hd97759789_ (##car _e97749786_))
                              (_tl97769791_ (##cdr _e97749786_)))
                          (let ((_form9794_ _hd97759789_))
                            (if (gx#core-bound-identifier?__opt-lambda3623
                                 _form9794_
                                 gx#special-form-binding?)
                                (_lp9732_
                                 _rest9755_
                                 (cons _hd9756_ _body9735_))
                                (_E97739782_)))))
                      (_E97739782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E97599808_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e97579778_)
                        (let ((_e97709800_ (gx#syntax-e _e97579778_)))
                          (let ((_hd97719803_ (##car _e97709800_))
                                (_tl97729805_ (##cdr _e97709800_)))
                            (if (if (gx#identifier? _hd97719803_)
                                    (gx#core-identifier=?
                                     _hd97719803_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp9732_
                                     _rest9755_
                                     (cons (gx#core-expand-export%__0 _hd9756_)
                                           _body9735_))
                                    (_E97699796_))
                                (_E97699796_))))
                        (_E97699796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E97589840_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e97579778_)
                          (let ((_e97609812_ (gx#syntax-e _e97579778_)))
                            (let ((_hd97619815_ (##car _e97609812_))
                                  (_tl97629817_ (##cdr _e97609812_)))
                              (if (if (gx#identifier? _hd97619815_)
                                      (gx#core-identifier=?
                                       _hd97619815_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl97629817_)
                                      (let ((_e97639820_
                                             (gx#syntax-e _tl97629817_)))
                                        (let ((_hd97649823_
                                               (##car _e97639820_))
                                              (_tl97659825_
                                               (##cdr _e97639820_)))
                                          (let ((_hd-bind9828_ _hd97649823_))
                                            (if (gx#stx-pair? _tl97659825_)
                                                (let ((_e97669830_
                                                       (gx#syntax-e
                                                        _tl97659825_)))
                                                  (let ((_hd97679833_
                                                         (##car _e97669830_))
                                                        (_tl97689835_
                                                         (##cdr _e97669830_)))
                                                    (let ((_expr9838_
                                                           _hd97679833_))
                                                      (if (gx#stx-null?
                                                           _tl97689835_)
                                                          (if '#t
                                                              (_lp9732_
                                                               _rest9755_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind9828_)
                               (gx#core-expand-expression _expr9838_))
                              (gx#stx-source _hd9756_))
                             _body9735_))
                      (_E97599808_))
                  (_E97599808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E97599808_)))))
                                      (_E97599808_))
                                  (_E97599808_))))
                          (_E97599808_)))))
               (let () (_E97589840_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest97369744_)
                                          (let ((_hd97419847_
                                                 (##car _rest97369744_))
                                                (_tl97429849_
                                                 (##cdr _rest97369744_)))
                                            (let ((_hd9852_ _hd97419847_))
                                              (let ((_rest9854_ _tl97429849_))
                                                (_K97409844_
                                                 _rest9854_
                                                 _hd9852_))))
                                          (_else97389752_)))))))))
                    _lp9732_)
                  _rbody9730_
                  '()))))
          (_expand-body9728_
           (gx#core-expand-block__opt-lambda4670
            (cons '%#begin-module _body9725_)
            _expand-special9727_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx9568_
             _expanded?9569_
             _method9570_
             _current-phi9571_
             _expand19572_)
      (letrec ((_K9574_ (lambda (_rest9692_ _r9693_)
                          (let ((_e96949701_ _rest9692_))
                            (let ((_E96969705_ (lambda () _r9693_)))
                              (let ((_E96959721_
                                     (lambda ()
                                       (if (gx#stx-pair? _e96949701_)
                                           (let ((_e96979709_
                                                  (gx#syntax-e _e96949701_)))
                                             (let ((_hd96989712_
                                                    (##car _e96979709_))
                                                   (_tl96999714_
                                                    (##cdr _e96979709_)))
                                               (let ((_hd9717_ _hd96989712_))
                                                 (let ((_rest9719_
                                                        _tl96999714_))
                                                   (if '#t
                                                       (_step9575_
                                                        _hd9717_
                                                        _rest9719_
                                                        _r9693_)
                                                       (_E96969705_))))))
                                           (_E96969705_)))))
                                (let () (_E96959721_)))))))
               (_step9575_
                (lambda (_hd9606_ _rest9607_ _r9608_)
                  (let ((_e96099627_ _hd9606_))
                    (let ((_E96229631_
                           (lambda ()
                             (if (_expanded?9569_ (gx#stx-e _hd9606_))
                                 (_K9574_ _rest9607_
                                          (cons (gx#stx-e _hd9606_) _r9608_))
                                 (_expand19572_
                                  _hd9606_
                                  _K9574_
                                  _rest9607_
                                  _r9608_)))))
                      (let ((_E96189647_
                             (lambda ()
                               (if (gx#stx-pair? _e96099627_)
                                   (let ((_e96239635_
                                          (gx#syntax-e _e96099627_)))
                                     (let ((_hd96249638_ (##car _e96239635_))
                                           (_tl96259640_ (##cdr _e96239635_)))
                                       (let ((_macro9643_ _hd96249638_))
                                         (let ((_body9645_ _tl96259640_))
                                           (if (gx#core-bound-identifier?__opt-lambda3623
                                                _macro9643_
                                                gx#syntax-binding?)
                                               (_K9574_ (cons (gx#core-apply-expander__opt-lambda4388
                                                               (gx#syntax-local-e__0
                                                                _macro9643_)
                                                               _hd9606_
                                                               _method9570_)
                                                              _rest9607_)
                                                        _r9608_)
                                               (_E96229631_))))))
                                   (_E96229631_)))))
                        (let ((_E96119661_
                               (lambda ()
                                 (if (gx#stx-pair? _e96099627_)
                                     (let ((_e96199651_
                                            (gx#syntax-e _e96099627_)))
                                       (let ((_hd96209654_ (##car _e96199651_))
                                             (_tl96219656_
                                              (##cdr _e96199651_)))
                                         (if (eq? (gx#stx-e _hd96209654_)
                                                  'begin:)
                                             (let ((_body9659_ _tl96219656_))
                                               (if '#t
                                                   (_K9574_ (gx#stx-foldr
                                                             cons
                                                             _rest9607_
                                                             _body9659_)
                                                            _r9608_)
                                                   (_E96189647_)))
                                             (_E96189647_))))
                                     (_E96189647_)))))
                          (let ((_E96109688_
                                 (lambda ()
                                   (if (gx#stx-pair? _e96099627_)
                                       (let ((_e96129665_
                                              (gx#syntax-e _e96099627_)))
                                         (let ((_hd96139668_
                                                (##car _e96129665_))
                                               (_tl96149670_
                                                (##cdr _e96129665_)))
                                           (if (eq? (gx#stx-e _hd96139668_)
                                                    'phi:)
                                               (if (gx#stx-pair? _tl96149670_)
                                                   (let ((_e96159673_
                                                          (gx#syntax-e
                                                           _tl96149670_)))
                                                     (let ((_hd96169676_
                                                            (##car _e96159673_))
                                                           (_tl96179678_
                                                            (##cdr _e96159673_)))
                                                       (let ((_dphi9681_
                                                              _hd96169676_))
                                                         (let ((_body9683_
                                                                _tl96179678_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi9681_)
                                                               (let ((_rbody9686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K9574_ _body9683_ '()))
                               _current-phi9571_
                               (fx+ (gx#stx-e _dphi9681_)
                                    (_current-phi9571_)))))
                         (_K9574_ _rest9607_ (foldr cons _r9608_ _rbody9686_)))
                       (_E96119661_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E96119661_))
                                               (_E96119661_))))
                                       (_E96119661_)))))
                            (let () (_E96109688_))))))))))
        (let ((_e95769583_ _stx9568_))
          (let ((_E95789587_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e95769583_))))
            (let ((_E95779602_
                   (lambda ()
                     (if (gx#stx-pair? _e95769583_)
                         (let ((_e95799591_ (gx#syntax-e _e95769583_)))
                           (let ((_hd95809594_ (##car _e95799591_))
                                 (_tl95819596_ (##cdr _e95799591_)))
                             (let ((_body9599_ _tl95819596_))
                               (if '#t
                                   (if (_current-phi9571_)
                                       (_K9574_ _body9599_ '())
                                       (call-with-parameters
                                        (lambda () (_K9574_ _body9599_ '()))
                                        _current-phi9571_
                                        (gx#current-expander-phi)))
                                   (_E95789587_)))))
                         (_E95789587_)))))
              (let () (_E95779602_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9105
      (lambda (_stx9107_ _internal-expand?9108_)
        (let ((_import19111_
               (lambda (_ctx9542_ _K9543_ _rest9544_ _r9545_)
                 (let ((_dphi9547_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K9543_ _rest9544_
                            (cons (##structure
                                   gx#import-set::t
                                   _ctx9542_
                                   _dphi9547_
                                   (map (lambda (_g95489550_)
                                          (gx#core-module-export->import__opt-lambda10003
                                           _g95489550_
                                           '#f
                                           _dphi9547_))
                                        (##structure-ref
                                         _ctx9542_
                                         '9
                                         gx#module-context::t
                                         '#f)))
                                  _r9545_))))))
          (let ((_import-spec?9112_
                 (lambda (_hd9499_)
                   (let ((_e95009510_ _hd9499_))
                     (let ((_E95029514_ (lambda () '#f)))
                       (let ((_E95019538_
                              (lambda ()
                                (if (gx#stx-pair? _e95009510_)
                                    (let ((_e95039518_
                                           (gx#syntax-e _e95009510_)))
                                      (let ((_hd95049521_ (##car _e95039518_))
                                            (_tl95059523_ (##cdr _e95039518_)))
                                        (if (eq? (gx#stx-e _hd95049521_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl95059523_)
                                                (let ((_e95069526_
                                                       (gx#syntax-e
                                                        _tl95059523_)))
                                                  (let ((_hd95079529_
                                                         (##car _e95069526_))
                                                        (_tl95089531_
                                                         (##cdr _e95069526_)))
                                                    (let ((_spath9534_
                                                           _hd95079529_))
                                                      (let ((_specs9536_
                                                             _tl95089531_))
                                                        (if '#t
                                                            '#t
                                                            (_E95029514_))))))
                                                (_E95029514_))
                                            (_E95029514_))))
                                    (_E95029514_)))))
                         (let () (_E95019538_))))))))
            (let ((_import-submodule?9113_
                   (lambda (_hd9456_)
                     (let ((_e94579467_ _hd9456_))
                       (let ((_E94599471_ (lambda () '#f)))
                         (let ((_E94589495_
                                (lambda ()
                                  (if (gx#stx-pair? _e94579467_)
                                      (let ((_e94609475_
                                             (gx#syntax-e _e94579467_)))
                                        (let ((_hd94619478_
                                               (##car _e94609475_))
                                              (_tl94629480_
                                               (##cdr _e94609475_)))
                                          (if (eq? (gx#stx-e _hd94619478_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl94629480_)
                                                  (let ((_e94639483_
                                                         (gx#syntax-e
                                                          _tl94629480_)))
                                                    (let ((_hd94649486_
                                                           (##car _e94639483_))
                                                          (_tl94659488_
                                                           (##cdr _e94639483_)))
                                                      (let ((_top9491_
                                                             _hd94649486_))
                                                        (let ((_sub9493_
                                                               _tl94659488_))
                                                          (if '#t
                                                              '#t
                                                              (_E94599471_))))))
                                                  (_E94599471_))
                                              (_E94599471_))))
                                      (_E94599471_)))))
                           (let () (_E94589495_))))))))
              (let ((_import-runtime?9114_
                     (lambda (_hd9413_)
                       (let ((_e94149424_ _hd9413_))
                         (let ((_E94169428_ (lambda () '#f)))
                           (let ((_E94159452_
                                  (lambda ()
                                    (if (gx#stx-pair? _e94149424_)
                                        (let ((_e94179432_
                                               (gx#syntax-e _e94149424_)))
                                          (let ((_hd94189435_
                                                 (##car _e94179432_))
                                                (_tl94199437_
                                                 (##cdr _e94179432_)))
                                            (if (eq? (gx#stx-e _hd94189435_)
                                                     'runtime:)
                                                (if (gx#stx-pair? _tl94199437_)
                                                    (let ((_e94209440_
                                                           (gx#syntax-e
                                                            _tl94199437_)))
                                                      (let ((_hd94219443_
                                                             (##car _e94209440_))
                                                            (_tl94229445_
                                                             (##cdr _e94209440_)))
                                                        (let ((_top9448_
                                                               _hd94219443_))
                                                          (let ((_spath9450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94229445_))
                    (if '#t '#t (_E94169428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E94169428_))
                                                (_E94169428_))))
                                        (_E94169428_)))))
                             (let () (_E94159452_))))))))
                (let ((_import-spec-source9118_
                       (lambda (_spath9184_)
                         (gx#core-import-nested-module
                          _spath9184_
                          _stx9107_))))
                  (let ((_import!9119_
                         (lambda (_rbody9132_)
                           (let ((_current-ctx9134_
                                  (gx#current-expander-context)))
                             (let ((_deps9135_ (make-hash-table-eq)))
                               (let ((_bind!9136_
                                      (lambda (_hd9182_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9182_
                                           _current-ctx9134_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd9182_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd9182_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (hash-put!
                                               _deps9135_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd9182_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9137_
                                        (lambda (_in9179_ _r9180_)
                                          (if (##structure-direct-instance-of?
                                               _in9179_
                                               'gx#module-import::t)
                                              (cons _in9179_ _r9180_)
                                              (if (##structure-direct-instance-of?
                                                   _in9179_
                                                   'gx#import-set::t)
                                                  (foldl cons
                                                         _r9180_
                                                         (##structure-ref
                                                          _in9179_
                                                          '3
                                                          gx#import-set::t
                                                          '#f))
                                                  _r9180_)))))
                                   ((letrec ((_lp9139_
                                              (lambda (_rest9141_ _body9142_)
                                                (let ((_rest91439151_
                                                       _rest9141_))
                                                  (let ((_E91469155_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest91439151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else91459161_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9134_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9134_
                            (foldl _fold-e9137_
                                   (##structure-ref
                                    _current-ctx9134_
                                    '8
                                    gx#module-context::t
                                    '#f)
                                   _body9142_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9159_ _g10743_)
                          (gx#eval-module _ctx9159_))
                        _deps9135_)
                       _body9142_))))
              (let ((_K91479167_
                     (lambda (_rest9164_ _hd9165_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9165_
                              'gx#module-import::t)
                             (_bind!9136_ _hd9165_)
                             (if (##structure-direct-instance-of?
                                  _hd9165_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9136_
                                  (##structure-ref
                                   _hd9165_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9165_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9107_
                                      _hd9165_))))
                         (_lp9139_ _rest9164_ (cons _hd9165_ _body9142_))))))
                (if (##pair? _rest91439151_)
                    (let ((_hd91489170_ (##car _rest91439151_))
                          (_tl91499172_ (##cdr _rest91439151_)))
                      (let ((_hd9175_ _hd91489170_))
                        (let ((_rest9177_ _tl91499172_))
                          (_K91479167_ _rest9177_ _hd9175_))))
                    (_else91459161_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9139_)
                                    _rbody9132_
                                    '()))))))))
                    (let ((_expanded-import?9120_
                           (lambda (_e9124_)
                             (let ((_$e9126_
                                    (##structure-direct-instance-of?
                                     _e9124_
                                     'gx#import-set::t)))
                               (if _$e9126_
                                   _$e9126_
                                   (let ((_$e9129_
                                          (##structure-direct-instance-of?
                                           _e9124_
                                           'gx#module-import::t)))
                                     (if _$e9129_
                                         _$e9129_
                                         (##structure-instance-of?
                                          _e9124_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9115_
                             (lambda (_hd9380_ _K9381_ _rest9382_ _r9383_)
                               (let ((_e93849391_ _hd9380_))
                                 (let ((_E93869395_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e93849391_))))
                                   (let ((_E93859409_
                                          (lambda ()
                                            (if (gx#stx-pair? _e93849391_)
                                                (let ((_e93879399_
                                                       (gx#syntax-e
                                                        _e93849391_)))
                                                  (let ((_hd93889402_
                                                         (##car _e93879399_))
                                                        (_tl93899404_
                                                         (##cdr _e93879399_)))
                                                    (let ((_spath9407_
                                                           _tl93899404_))
                                                      (if '#t
                                                          (_import19111_
                                                           (_import-spec-source9118_
                                                            _spath9407_)
                                                           _K9381_
                                                           _rest9382_
                                                           _r9383_)
                                                          (_E93869395_)))))
                                                (_E93869395_)))))
                                     (let () (_E93859409_))))))))
                        (let ((_import-runtime9116_
                               (lambda (_hd9347_ _K9348_ _rest9349_ _r9350_)
                                 (let ((_e93519358_ _hd9347_))
                                   (let ((_E93539362_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e93519358_))))
                                     (let ((_E93529376_
                                            (lambda ()
                                              (if (gx#stx-pair? _e93519358_)
                                                  (let ((_e93549366_
                                                         (gx#syntax-e
                                                          _e93519358_)))
                                                    (let ((_hd93559369_
                                                           (##car _e93549366_))
                                                          (_tl93569371_
                                                           (##cdr _e93549366_)))
                                                      (let ((_spath9374_
                                                             _tl93569371_))
                                                        (if '#t
                                                            (_K9348_ _rest9349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9118_ _spath9374_)
                                   _r9350_))
                    (_E93539362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E93539362_)))))
                                       (let () (_E93529376_))))))))
                          (let ((_import-spec9117_
                                 (lambda (_hd9186_ _K9187_ _rest9188_ _r9189_)
                                   (let ((_e91909207_ _hd9186_))
                                     (let ((_E91999211_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e91909207_))))
                                       (let ((_E91929321_
                                              (lambda ()
                                                (if (gx#stx-pair? _e91909207_)
                                                    (let ((_e92009215_
                                                           (gx#syntax-e
                                                            _e91909207_)))
                                                      (let ((_hd92019218_
                                                             (##car _e92009215_))
                                                            (_tl92029220_
                                                             (##cdr _e92009215_)))
                                                        (if (gx#stx-pair?
                                                             _tl92029220_)
                                                            (let ((_e92039223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl92029220_)))
                      (let ((_hd92049226_ (##car _e92039223_))
                            (_tl92059228_ (##cdr _e92039223_)))
                        (let ((_path9231_ _hd92049226_))
                          (let ((_specs9233_ _tl92059228_))
                            (if '#t
                                (let ((_src-ctx9235_
                                       (_import-spec-source9118_ _path9231_))
                                      (_exports9236_ (make-table))
                                      (_specs9237_
                                       (gx#syntax->list _specs9233_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9239_)
                                       (hash-put!
                                        _exports9236_
                                        (cons (##structure-ref
                                               _out9239_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out9239_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9239_))
                                     (##structure-ref
                                      _src-ctx9235_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9187_ _rest9188_
                                             (foldl (lambda (_spec9241_
                                                             _r9242_)
                                                      (let ((_e92439259_
                                                             _spec9241_))
                                                        (let ((_E92459263_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _e92439259_))))
                  (let ((_E92449317_
                         (lambda ()
                           (if (gx#stx-pair? _e92439259_)
                               (let ((_e92469267_ (gx#syntax-e _e92439259_)))
                                 (let ((_hd92479270_ (##car _e92469267_))
                                       (_tl92489272_ (##cdr _e92469267_)))
                                   (let ((_phi9275_ _hd92479270_))
                                     (if (gx#stx-pair? _tl92489272_)
                                         (let ((_e92499277_
                                                (gx#syntax-e _tl92489272_)))
                                           (let ((_hd92509280_
                                                  (##car _e92499277_))
                                                 (_tl92519282_
                                                  (##cdr _e92499277_)))
                                             (let ((_name9285_ _hd92509280_))
                                               (if (gx#stx-pair? _tl92519282_)
                                                   (let ((_e92529287_
                                                          (gx#syntax-e
                                                           _tl92519282_)))
                                                     (let ((_hd92539290_
                                                            (##car _e92529287_))
                                                           (_tl92549292_
                                                            (##cdr _e92529287_)))
                                                       (let ((_src-phi9295_
                                                              _hd92539290_))
                                                         (if (gx#stx-pair?
                                                              _tl92549292_)
                                                             (let ((_e92559297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl92549292_)))
                       (let ((_hd92569300_ (##car _e92559297_))
                             (_tl92579302_ (##cdr _e92559297_)))
                         (let ((_src-name9305_ _hd92569300_))
                           (if (gx#stx-null? _tl92579302_)
                               (if (if (gx#stx-fixnum? _src-phi9295_)
                                       (if (gx#identifier? _src-name9305_)
                                           (if (gx#stx-fixnum? _phi9275_)
                                               (gx#identifier? _name9285_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   (let ((_src-phi9307_
                                          (gx#stx-e _src-phi9295_))
                                         (_src-name9308_
                                          (gx#core-identifier-key
                                           _src-name9305_))
                                         (_phi9309_ (gx#stx-e _phi9275_))
                                         (_name9310_
                                          (gx#core-identifier-key _name9285_)))
                                     (let ((_$e9312_
                                            (table-ref
                                             _exports9236_
                                             (cons _src-phi9307_
                                                   _src-name9308_)
                                             '#f)))
                                       (if _$e9312_
                                           ((lambda (_out9315_)
                                              (cons (gx#core-module-export->import__opt-lambda10003
                                                     _out9315_
                                                     _name9310_
                                                     (fx- _phi9309_
                                                          _src-phi9307_))
                                                    _r9242_))
                                            _$e9312_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; no matching export"
                                            _stx9107_
                                            _hd9186_))))
                                   (_E92459263_))
                               (_E92459263_)))))
                     (_E92459263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E92459263_)))))
                                         (_E92459263_)))))
                               (_E92459263_)))))
                    (let () (_E92449317_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r9189_
                                                    _specs9237_))))
                                (_E91999211_))))))
                    (_E91999211_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E91999211_)))))
                                         (let ((_E91919343_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e91909207_)
                                                      (let ((_e91939325_
                                                             (gx#syntax-e
                                                              _e91909207_)))
                                                        (let ((_hd91949328_
                                                               (##car _e91939325_))
                                                              (_tl91959330_
                                                               (##cdr _e91939325_)))
                                                          (if (gx#stx-pair?
                                                               _tl91959330_)
                                                              (let ((_e91969333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl91959330_)))
                        (let ((_hd91979336_ (##car _e91969333_))
                              (_tl91989338_ (##cdr _e91969333_)))
                          (let ((_path9341_ _hd91979336_))
                            (if (gx#stx-null? _tl91989338_)
                                (if '#t
                                    (_K9187_ _rest9188_
                                             (cons (_import-spec-source9118_
                                                    _path9341_)
                                                   _r9189_))
                                    (_E91929321_))
                                (_E91929321_)))))
                      (_E91929321_))))
              (_E91929321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E91919343_)))))))))
                            (let ((_expand19110_
                                   (lambda (_hd9553_
                                            _K9554_
                                            _rest9555_
                                            _r9556_)
                                     (if (gx#core-bound-module? _hd9553_)
                                         (_import19111_
                                          (gx#syntax-local-e__0 _hd9553_)
                                          _K9554_
                                          _rest9555_
                                          _r9556_)
                                         (if (gx#core-library-module-path?
                                              _hd9553_)
                                             (_import19111_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd9553_))
                                              _K9554_
                                              _rest9555_
                                              _r9556_)
                                             (if (gx#stx-string? _hd9553_)
                                                 (_import19111_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10357
                                                    _hd9553_
                                                    (gx#stx-source _stx9107_)))
                                                  _K9554_
                                                  _rest9555_
                                                  _r9556_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd9553_)
                                                      'gx#module-context::t)
                                                     (_K9554_ _rest9555_
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd9553_)
                            _r9556_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (_import-spec?9112_
                                                          _hd9553_)
                                                         (_import-spec9117_
                                                          _hd9553_
                                                          _K9554_
                                                          _rest9555_
                                                          _r9556_)
                                                         (if (_import-submodule?9113_
                                                              _hd9553_)
                                                             (_import-submodule9115_
                                                              _hd9553_
                                                              _K9554_
                                                              _rest9555_
                                                              _r9556_)
                                                             (if (_import-runtime?9114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd9553_)
                         (_import-runtime9116_
                          _hd9553_
                          _K9554_
                          _rest9555_
                          _r9556_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9107_
                          _hd9553_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9122_
                                     (gx#core-expand-import/export
                                      _stx9107_
                                      _expanded-import?9120_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19110_)))
                                (if _internal-expand?9108_
                                    (reverse _rbody9122_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9119_ _rbody9122_))
                                     (gx#stx-source _stx9107_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx9561_)
          (let ((_internal-expand?9563_ '#f))
            (gx#core-expand-import%__opt-lambda9105
             _stx9561_
             _internal-expand?9563_))))
      (define gx#core-expand-import%
        (lambda _g10745_
          (let ((_g10744_ (length _g10745_)))
            (cond ((fx= _g10744_ 1) (apply gx#core-expand-import%__0 _g10745_))
                  ((fx= _g10744_ 2)
                   (apply gx#core-expand-import%__opt-lambda9105 _g10745_))
                  (else (error "No clause matching arguments" _g10745_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9034_ _where9035_)
      (let ((_e90369043_ _spath9034_))
        (let ((_E90389047_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e90369043_))))
          (let ((_E90379102_
                 (lambda ()
                   (if (gx#stx-pair? _e90369043_)
                       (let ((_e90399051_ (gx#syntax-e _e90369043_)))
                         (let ((_hd90409054_ (##car _e90399051_))
                               (_tl90419056_ (##cdr _e90399051_)))
                           (let ((_origin9059_ _hd90409054_))
                             (let ((_sub9061_ _tl90419056_))
                               (if '#t
                                   (let ((_origin-ctx9063_
                                          (if (gx#stx-false? _origin9059_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9059_))))
                                     ((letrec ((_lp9065_
                                                (lambda (_rest9067_ _ctx9068_)
                                                  (let ((_e90699076_
                                                         _rest9067_))
                                                    (let ((_E90719080_
                                                           (lambda ()
                                                             _ctx9068_)))
                                                      (let ((_E90709098_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e90699076_)
                           (let ((_e90729084_ (gx#syntax-e _e90699076_)))
                             (let ((_hd90739087_ (##car _e90729084_))
                                   (_tl90749089_ (##cdr _e90729084_)))
                               (let ((_id9092_ _hd90739087_))
                                 (let ((_rest9094_ _tl90749089_))
                                   (if '#t
                                       (let ((_bind9096_
                                              (gx#resolve-identifier__opt-lambda4173
                                               _id9092_
                                               '0
                                               _ctx9068_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9096_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind9096_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9035_
                                                _spath9034_
                                                _id9092_))
                                           (_lp9065_
                                            _rest9094_
                                            (##structure-ref
                                             _bind9096_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E90719080_))))))
                           (_E90719080_)))))
                (let () (_E90709098_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9065_)
                                      _sub9061_
                                      _origin-ctx9063_))
                                   (_E90389047_))))))
                       (_E90389047_)))))
            (let () (_E90379102_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9032_)
      (gx#core-expand-import%__opt-lambda9105
       (cons 'import-internal% (cons _hd9032_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda8614
      (lambda (_stx8616_ _internal-expand?8617_)
        (let ((_make-export8619_
               (let ((_opt-lambda89788993_
                      (lambda (_bind8980_ _phi8981_ _ctx8982_ _name8983_)
                        (let ((_key8985_
                               (##structure-ref
                                _bind8980_
                                '2
                                gx#binding::t
                                '#f)))
                          (let ((_export-key8987_
                                 (if _name8983_
                                     (gx#core-identifier-key _name8983_)
                                     _key8985_)))
                            (let ()
                              (##structure
                               gx#module-export::t
                               _ctx8982_
                               _key8985_
                               _phi8981_
                               _export-key8987_
                               (let ((_$e8990_
                                      (##structure-instance-of?
                                       _bind8980_
                                       'gx#extern-binding::t)))
                                 (if _$e8990_
                                     _$e8990_
                                     (##structure-direct-instance-of?
                                      _bind8980_
                                      'gx#import-binding::t))))))))))
                 (lambda _g10747_
                   (let ((_g10746_ (length _g10747_)))
                     (cond ((fx= _g10746_ 1)
                            (apply (lambda (_bind8996_)
                                     (let ((_phi8998_
                                            (gx#current-export-expander-phi)))
                                       (let ((_ctx9000_
                                              (gx#current-expander-context)))
                                         (let ((_name9002_ '#f))
                                           (_opt-lambda89788993_
                                            _bind8996_
                                            _phi8998_
                                            _ctx9000_
                                            _name9002_)))))
                                   _g10747_))
                           ((fx= _g10746_ 2)
                            (apply (lambda (_bind9004_ _phi9005_)
                                     (let ((_ctx9007_
                                            (gx#current-expander-context)))
                                       (let ((_name9009_ '#f))
                                         (_opt-lambda89788993_
                                          _bind9004_
                                          _phi9005_
                                          _ctx9007_
                                          _name9009_))))
                                   _g10747_))
                           ((fx= _g10746_ 3)
                            (apply (lambda (_bind9011_ _phi9012_ _ctx9013_)
                                     (let ((_name9015_ '#f))
                                       (_opt-lambda89788993_
                                        _bind9011_
                                        _phi9012_
                                        _ctx9013_
                                        _name9015_)))
                                   _g10747_))
                           ((fx= _g10746_ 4)
                            (apply _opt-lambda89788993_ _g10747_))
                           (else
                            (error "No clause matching arguments"
                                   _g10747_))))))))
          (let ((_export-imports8621_
                 (lambda (_src8642_ _r8643_)
                   (let ((_current-ctx8645_ (gx#current-expander-context)))
                     (let ((_current-phi8646_
                            (gx#current-export-expander-phi)))
                       (let ((_import->export8647_
                              (lambda (_in8655_)
                                (let ((_in86568664_ _in8655_))
                                  (let ((_E86588668_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _in86568664_))))
                                    (let ((_K86598675_
                                           (lambda (_phi8671_
                                                    _key8672_
                                                    _out8673_)
                                             (if (fx= _phi8671_
                                                      _current-phi8646_)
                                                 (if (eq? _src8642_
                                                          (##structure-ref
                                                           _out8673_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     (##structure
                                                      gx#module-export::t
                                                      _current-ctx8645_
                                                      _key8672_
                                                      _phi8671_
                                                      _key8672_
                                                      '#t)
                                                     '#f)
                                                 '#f))))
                                      (if (direct-struct-instance?
                                           gx#module-import::t
                                           _in86568664_)
                                          (let ((_e86608678_
                                                 (##vector-ref
                                                  _in86568664_
                                                  '1)))
                                            (let ((_out8681_ _e86608678_))
                                              (let ((_e86618683_
                                                     (##vector-ref
                                                      _in86568664_
                                                      '2)))
                                                (let ((_key8686_ _e86618683_))
                                                  (let ((_e86628688_
                                                         (##vector-ref
                                                          _in86568664_
                                                          '3)))
                                                    (let ((_phi8691_
                                                           _e86628688_))
                                                      (_K86598675_
                                                       _phi8691_
                                                       _key8686_
                                                       _out8681_)))))))
                                          (_E86588668_))))))))
                         (let ((_fold-e8648_
                                (lambda (_in8650_ _r8651_)
                                  (let ((_out8653_
                                         (_import->export8647_ _in8650_)))
                                    (if _out8653_
                                        (cons _out8653_ _r8651_)
                                        _r8651_)))))
                           (cons (##structure
                                  gx#export-set::t
                                  _src8642_
                                  _current-phi8646_
                                  (foldl _fold-e8648_
                                         '()
                                         (##structure-ref
                                          _current-ctx8645_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _r8643_))))))))
            (let ((_export!8622_
                   (lambda (_rbody8632_)
                     (let ((_current-ctx8634_ (gx#current-expander-context)))
                       (let ((_fold-e8635_
                              (lambda (_out8639_ _r8640_)
                                (if (##structure-direct-instance-of?
                                     _out8639_
                                     'gx#module-export::t)
                                    (cons _out8639_ _r8640_)
                                    (if (##structure-direct-instance-of?
                                         _out8639_
                                         'gx#export-set::t)
                                        (foldl cons
                                               _r8640_
                                               (##structure-ref
                                                _out8639_
                                                '3
                                                gx#export-set::t
                                                '#f))
                                        _r8640_)))))
                         (let ((_body8637_ (reverse _rbody8632_)))
                           (begin
                             (##structure-set!
                              _current-ctx8634_
                              (foldl _fold-e8635_
                                     (##structure-ref
                                      _current-ctx8634_
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body8637_)
                              '9
                              gx#module-context::t
                              '#f)
                             _body8637_)))))))
              (let ((_expanded-export?8623_
                     (lambda (_e8627_)
                       (let ((_$e8629_
                              (##structure-direct-instance-of?
                               _e8627_
                               'gx#module-export::t)))
                         (if _$e8629_
                             _$e8629_
                             (##structure-direct-instance-of?
                              _e8627_
                              'gx#export-set::t))))))
                (let ((_expand18620_
                       (lambda (_hd8693_ _K8694_ _rest8695_ _r8696_)
                         (let ((_e86978729_ _hd8693_))
                           (let ((_E87248733_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; illegal export"
                                     _stx8616_
                                     _hd8693_))))
                             (let ((_E87148812_
                                    (lambda ()
                                      (if (gx#stx-pair? _e86978729_)
                                          (let ((_e87258737_
                                                 (gx#syntax-e _e86978729_)))
                                            (let ((_hd87268740_
                                                   (##car _e87258737_))
                                                  (_tl87278742_
                                                   (##cdr _e87258737_)))
                                              (if (eq? (gx#stx-e _hd87268740_)
                                                       'import:)
                                                  (let ((_in8745_
                                                         _tl87278742_))
                                                    (if (gx#stx-list? _in8745_)
                                                        ((letrec ((_lp8747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_in-rest8749_ _r8750_)
                             (let ((_e87518758_ _in-rest8749_))
                               (let ((_E87538762_
                                      (lambda ()
                                        (_K8694_ _rest8695_ _r8750_))))
                                 (let ((_E87528808_
                                        (lambda ()
                                          (if (gx#stx-pair? _e87518758_)
                                              (let ((_e87548766_
                                                     (gx#syntax-e
                                                      _e87518758_)))
                                                (let ((_hd87558769_
                                                       (##car _e87548766_))
                                                      (_tl87568771_
                                                       (##cdr _e87548766_)))
                                                  (let ((_hd8774_
                                                         _hd87558769_))
                                                    (let ((_in-rest8776_
                                                           _tl87568771_))
                                                      (if '#t
                                                          (let ((_src8806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#core-bound-module? _hd8774_)
                             (gx#syntax-local-e__0 _hd8774_)
                             (if (gx#core-library-module-path? _hd8774_)
                                 (gx#import-module__0
                                  (gx#core-resolve-library-module-path
                                   _hd8774_))
                                 (if (gx#stx-string? _hd8774_)
                                     (gx#import-module__0
                                      (gx#core-resolve-module-path__opt-lambda10357
                                       _hd8774_
                                       (gx#stx-source _stx8616_)))
                                     (let ((_e87778784_ _hd8774_))
                                       (let ((_E87798788_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal re-export"
                                                 _stx8616_
                                                 _hd8774_))))
                                         (let ((_E87788802_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e87778784_)
                                                      (let ((_e87808792_
                                                             (gx#syntax-e
                                                              _e87778784_)))
                                                        (let ((_hd87818795_
                                                               (##car _e87808792_))
                                                              (_tl87828797_
                                                               (##cdr _e87808792_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd87818795_)
                           'in:)
                      (let ((_spath8800_ _tl87828797_))
                        (if '#t
                            (gx#core-import-nested-module
                             _spath8800_
                             _stx8616_)
                            (_E87798788_)))
                      (_E87798788_))))
              (_E87798788_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E87788802_))))))))))
                    (_lp8747_
                     _in-rest8776_
                     (_export-imports8621_ _src8806_ _r8750_)))
                  (_E87538762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E87538762_)))))
                                   (let () (_E87528808_))))))))
                   _lp8747_)
                 _in8745_
                 _r8696_)
                (_E87248733_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E87248733_))))
                                          (_E87248733_)))))
                               (let ((_E87018851_
                                      (lambda ()
                                        (if (gx#stx-pair? _e86978729_)
                                            (let ((_e87158816_
                                                   (gx#syntax-e _e86978729_)))
                                              (let ((_hd87168819_
                                                     (##car _e87158816_))
                                                    (_tl87178821_
                                                     (##cdr _e87158816_)))
                                                (if (eq? (gx#stx-e
                                                          _hd87168819_)
                                                         'rename:)
                                                    (if (gx#stx-pair?
                                                         _tl87178821_)
                                                        (let ((_e87188824_
                                                               (gx#syntax-e
                                                                _tl87178821_)))
                                                          (let ((_hd87198827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e87188824_))
                        (_tl87208829_ (##cdr _e87188824_)))
                    (let ((_id8832_ _hd87198827_))
                      (if (gx#stx-pair? _tl87208829_)
                          (let ((_e87218834_ (gx#syntax-e _tl87208829_)))
                            (let ((_hd87228837_ (##car _e87218834_))
                                  (_tl87238839_ (##cdr _e87218834_)))
                              (let ((_name8842_ _hd87228837_))
                                (if (gx#stx-null? _tl87238839_)
                                    (if '#t
                                        (let ((_phi8844_
                                               (gx#current-export-expander-phi)))
                                          (let ((_$e8846_
                                                 (gx#core-resolve-identifier__1
                                                  _id8832_
                                                  _phi8844_)))
                                            (if _$e8846_
                                                ((lambda (_bind8849_)
                                                   (_K8694_ _rest8695_
                                                            (cons (_make-export8619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind8849_
                           _phi8844_
                           (gx#current-expander-context)
                           _name8842_)
                          _r8696_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e8846_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Reference to unbound identifier"
                                                 _stx8616_
                                                 _hd8693_
                                                 _id8832_))))
                                        (_E87148812_))
                                    (_E87148812_)))))
                          (_E87148812_)))))
                (_E87148812_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87148812_))))
                                            (_E87148812_)))))
                                 (let ((_E87008900_
                                        (lambda ()
                                          (if (gx#stx-pair? _e86978729_)
                                              (let ((_e87028855_
                                                     (gx#syntax-e
                                                      _e86978729_)))
                                                (let ((_hd87038858_
                                                       (##car _e87028855_))
                                                      (_tl87048860_
                                                       (##cdr _e87028855_)))
                                                  (if (eq? (gx#stx-e
                                                            _hd87038858_)
                                                           'spec:)
                                                      (if (gx#stx-pair?
                                                           _tl87048860_)
                                                          (let ((_e87058863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl87048860_)))
                    (let ((_hd87068866_ (##car _e87058863_))
                          (_tl87078868_ (##cdr _e87058863_)))
                      (let ((_phi8871_ _hd87068866_))
                        (if (gx#stx-pair? _tl87078868_)
                            (let ((_e87088873_ (gx#syntax-e _tl87078868_)))
                              (let ((_hd87098876_ (##car _e87088873_))
                                    (_tl87108878_ (##cdr _e87088873_)))
                                (let ((_id8881_ _hd87098876_))
                                  (if (gx#stx-pair? _tl87108878_)
                                      (let ((_e87118883_
                                             (gx#syntax-e _tl87108878_)))
                                        (let ((_hd87128886_
                                               (##car _e87118883_))
                                              (_tl87138888_
                                               (##cdr _e87118883_)))
                                          (let ((_name8891_ _hd87128886_))
                                            (if (gx#stx-null? _tl87138888_)
                                                (if (if (gx#stx-fixnum?
                                                         _phi8871_)
                                                        (if (gx#identifier?
                                                             _id8881_)
                                                            (gx#identifier?
                                                             _name8891_)
                                                            '#f)
                                                        '#f)
                                                    (let ((_phi8893_
                                                           (gx#stx-e
                                                            _phi8871_)))
                                                      (let ((_$e8895_
                                                             (gx#core-resolve-identifier__1
                                                              _id8881_
                                                              _phi8893_)))
                                                        (if _$e8895_
                                                            ((lambda (_bind8898_)
                                                               (_K8694_ _rest8695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (_make-export8619_
                                       _bind8898_
                                       _phi8893_
                                       (gx#current-expander-context)
                                       _name8891_)
                                      _r8696_)))
                     _$e8895_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _stx8616_
                     _hd8693_
                     _id8881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87018851_))
                                                (_E87018851_)))))
                                      (_E87018851_)))))
                            (_E87018851_)))))
                  (_E87018851_))
              (_E87018851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E87018851_)))))
                                   (let ((_E86998911_
                                          (lambda ()
                                            (let ((_id8904_ _e86978729_))
                                              (if (gx#identifier? _id8904_)
                                                  (let ((_$e8906_
                                                         (gx#core-resolve-identifier__1
                                                          _id8904_
                                                          (gx#current-export-expander-phi))))
                                                    (if _$e8906_
                                                        ((lambda (_bind8909_)
                                                           (_K8694_ _rest8695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export8619_ _bind8909_) _r8696_)))
                 _$e8906_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx8616_
                 _hd8693_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E87008900_))))))
                                     (let ((_E86988975_
                                            (lambda ()
                                              (if (eq? (gx#stx-e _e86978729_)
                                                       '#t)
                                                  (if '#t
                                                      (let ((_current-ctx8915_
                                                             (gx#current-expander-context)))
                                                        (let ((_current-phi8917_
                                                               (gx#current-export-expander-phi)))
                                                          (let ((_phi-ctx8919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-context-shift
                          _current-ctx8915_
                          _current-phi8917_)))
                    (let ((_phi-bind8921_
                           (table->list
                            (##structure-ref
                             _phi-ctx8919_
                             '2
                             gx#expander-context::t
                             '#f))))
                      (let ()
                        ((letrec ((_lp8924_
                                   (lambda (_bind-rest8926_ _set8927_)
                                     (let ((_bind-rest89288938_
                                            _bind-rest8926_))
                                       (let ((_E89318942_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _bind-rest89288938_))))
                                         (let ((_else89308946_
                                                (lambda ()
                                                  (_K8694_ _rest8695_
                                                           (cons (##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#export-set::t
                          '#f
                          _current-phi8917_
                          _set8927_)
                         _r8696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_K89328956_
                                                  (lambda (_bind-rest8949_
                                                           _bind8950_
                                                           _key8951_)
                                                    (if (let ((_$e8953_
                                                               (##structure-direct-instance-of?
                                                                _bind8950_
                                                                'gx#import-binding::t)))
                                                          (if _$e8953_
                                                              _$e8953_
                                                              (gx#private-feature-binding?
                                                               _bind8950_)))
                                                        (_lp8924_
                                                         _bind-rest8949_
                                                         _set8927_)
                                                        (_lp8924_
                                                         _bind-rest8949_
                                                         (cons (_make-export8619_
                                                                _bind8950_
                                                                _current-phi8917_
                                                                _current-ctx8915_)
                                                               _set8927_))))))
                                             (if (##pair? _bind-rest89288938_)
                                                 (let ((_hd89338959_
                                                        (##car _bind-rest89288938_))
                                                       (_tl89348961_
                                                        (##cdr _bind-rest89288938_)))
                                                   (if (##pair? _hd89338959_)
                                                       (let ((_hd89358964_
                                                              (##car _hd89338959_))
                                                             (_tl89368966_
                                                              (##cdr _hd89338959_)))
                                                         (let ((_key8969_
                                                                _hd89358964_))
                                                           (let ((_bind8971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl89368966_))
                     (let ((_bind-rest8973_ _tl89348961_))
                       (_K89328956_ _bind-rest8973_ _bind8971_ _key8969_)))))
               (_else89308946_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else89308946_)))))))))
                           _lp8924_)
                         _phi-bind8921_
                         '()))))))
              (_E86998911_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86998911_)))))
                                       (let () (_E86988975_))))))))))))
                  (let ((_rbody8625_
                         (gx#core-expand-import/export
                          _stx8616_
                          gx#module-export?
                          'apply-export-expander
                          gx#current-export-expander-phi
                          _expand18620_)))
                    (if _internal-expand?8617_
                        (reverse _rbody8625_)
                        (gx#core-quote-syntax__1
                         (gx#core-cons '%#export (_export!8622_ _rbody8625_))
                         (gx#stx-source _stx8616_)))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9025_)
          (let ((_internal-expand?9027_ '#f))
            (gx#core-expand-export%__opt-lambda8614
             _stx9025_
             _internal-expand?9027_))))
      (define gx#core-expand-export%
        (lambda _g10749_
          (let ((_g10748_ (length _g10749_)))
            (cond ((fx= _g10748_ 1) (apply gx#core-expand-export%__0 _g10749_))
                  ((fx= _g10748_ 2)
                   (apply gx#core-expand-export%__opt-lambda8614 _g10749_))
                  (else (error "No clause matching arguments" _g10749_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd8613_)
      (gx#core-expand-export%__opt-lambda8614
       (cons 'export-macro% (cons _hd8613_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx8583_)
      (let ((_e85848591_ _stx8583_))
        (let ((_E85868595_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e85848591_))))
          (let ((_E85858609_
                 (lambda ()
                   (if (gx#stx-pair? _e85848591_)
                       (let ((_e85878599_ (gx#syntax-e _e85848591_)))
                         (let ((_hd85888602_ (##car _e85878599_))
                               (_tl85898604_ (##cdr _e85878599_)))
                           (let ((_body8607_ _tl85898604_))
                             (if (gx#identifier-list? _body8607_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body8607_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body8607_))
                                    (gx#stx-source _stx8583_)))
                                 (_E85868595_)))))
                       (_E85868595_)))))
            (let () (_E85858609_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda8547
      (lambda (_id8549_ _private?8550_ _phi8551_ _ctx8552_)
        (gx#core-bind-syntax!__opt-lambda5642
         _id8549_
         ((if _private?8550_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id8549_))
         _private?8550_
         _phi8551_
         _ctx8552_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id8557_)
          (let ((_private?8559_ '#f))
            (let ((_phi8561_ (gx#current-expander-phi)))
              (let ((_ctx8563_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda8547
                 _id8557_
                 _private?8559_
                 _phi8561_
                 _ctx8563_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id8565_ _private?8566_)
          (let ((_phi8568_ (gx#current-expander-phi)))
            (let ((_ctx8570_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda8547
               _id8565_
               _private?8566_
               _phi8568_
               _ctx8570_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id8572_ _private?8573_ _phi8574_)
          (let ((_ctx8576_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda8547
             _id8572_
             _private?8573_
             _phi8574_
             _ctx8576_))))
      (define gx#core-bind-feature!
        (lambda _g10751_
          (let ((_g10750_ (length _g10751_)))
            (cond ((fx= _g10750_ 1) (apply gx#core-bind-feature!__0 _g10751_))
                  ((fx= _g10750_ 2) (apply gx#core-bind-feature!__1 _g10751_))
                  ((fx= _g10750_ 3) (apply gx#core-bind-feature!__2 _g10751_))
                  ((fx= _g10750_ 4)
                   (apply gx#core-bind-feature!__opt-lambda8547 _g10751_))
                  (else (error "No clause matching arguments" _g10751_)))))))))
