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
    (lambda _$args9843_
      (apply make-struct-instance gx#module-import::t _$args9843_)))
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
    (lambda _$args9840_
      (apply make-struct-instance gx#module-export::t _$args9840_)))
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
    (lambda _$args9837_
      (apply make-struct-instance gx#import-set::t _$args9837_)))
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
    (lambda _$args9834_
      (apply make-struct-instance gx#export-set::t _$args9834_)))
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
    (lambda _$args9831_
      (apply make-struct-instance gx#import-expander::t _$args9831_)))
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
    (lambda _$args9828_
      (apply make-struct-instance gx#export-expander::t _$args9828_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self9822_ _id9823_ _super9824_ _ns9825_ _path9826_)
      (direct-struct-instance-init!
       _self9822_
       _id9823_
       (make-hash-table-eq)
       _super9824_
       '#f
       '#f
       _ns9825_
       _path9826_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (define gx#prelude-context:::init!
    (let ((_opt-lambda97869810_
           (lambda (_self9788_ _ctx9789_ _root9790_)
             (let ((_super9798_
                    (let ((_$e9792_ _root9790_))
                      (if _$e9792_
                          _$e9792_
                          (let ((_$e9795_ (gx#core-context-root)))
                            (if _$e9795_
                                _$e9795_
                                (make-struct-instance gx#root-context::t)))))))
               (if _ctx9789_
                   (let ((_id9801_
                          (##structure-ref
                           _ctx9789_
                           '1
                           gx#expander-context::t
                           '#f))
                         (_path9802_
                          (##structure-ref
                           _ctx9789_
                           '7
                           gx#module-context::t
                           '#f))
                         (_in9803_
                          (map gx#core-module-export->import
                               (##structure-ref
                                _ctx9789_
                                '9
                                gx#module-context::t
                                '#f)))
                         (_e9804_ (make-promise
                                   (lambda () (gx#eval-module _ctx9789_)))))
                     (begin
                       (direct-struct-instance-init!
                        _self9788_
                        _id9801_
                        (make-hash-table-eq)
                        _super9798_
                        '#f
                        '#f
                        _path9802_
                        _in9803_
                        _e9804_)
                       (for-each
                        (lambda (_g98059807_)
                          (gx#core-bind-weak-import! _g98059807_ _self9788_))
                        _in9803_)))
                   (direct-struct-instance-init!
                    _self9788_
                    '#f
                    (make-hash-table-eq)
                    _super9798_
                    '#f
                    '#f
                    '#f
                    '()
                    '#f))))))
      (lambda _g9846_
        (let ((_g9845_ (length _g9846_)))
          (cond ((fx= _g9845_ 2)
                 (apply (lambda (_self9813_ _ctx9814_)
                          (let ((_root9816_ '#f))
                            (_opt-lambda97869810_
                             _self9813_
                             _ctx9814_
                             _root9816_)))
                        _g9846_))
                ((fx= _g9845_ 3)
                 (apply (lambda (_self9818_ _ctx9819_ _root9820_)
                          (_opt-lambda97869810_
                           _self9818_
                           _ctx9819_
                           _root9820_))
                        _g9846_))
                (else (error "No clause matching arguments" _g9846_)))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self9784_ _e9785_)
      (direct-struct-instance-init!
       _self9784_
       _e9785_
       (gx#current-expander-context)
       (fx1- (gx#current-expander-phi)))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self9781_ _e9782_)
      (direct-struct-instance-init!
       _self9781_
       _e9782_
       (gx#current-expander-context)
       (fx1- (gx#current-expander-phi)))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g97739776_ _g97749778_)
      (gx#core-apply-user-expander
       _g97739776_
       _g97749778_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g97669769_ _g97679771_)
      (gx#core-apply-user-expander
       _g97669769_
       _g97679771_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx9760_)
      (let ((_path9762_
             (##structure-ref _ctx9760_ '7 gx#module-context::t '#f)))
        (let ((_path9764_
               (if (pair? _path9762_) (last _path9762_) _path9762_)))
          (let () (if (string? _path9764_) _path9764_ '#f))))))
  (define gx#import-module
    (let ((_opt-lambda97349742_
           (lambda (_path9736_ _reload?9737_ _eval?9738_)
             (let ((_ctx9740_
                    ((gx#current-expander-module-import)
                     _path9736_
                     _reload?9737_)))
               (begin
                 (if (if _ctx9740_ _eval?9738_ '#f)
                     (gx#eval-module _ctx9740_)
                     '#!void)
                 _ctx9740_)))))
      (lambda _g9848_
        (let ((_g9847_ (length _g9848_)))
          (cond ((fx= _g9847_ 1)
                 (apply (lambda (_path9745_)
                          (let ((_reload?9747_ '#f))
                            (let ((_eval?9749_ '#f))
                              (_opt-lambda97349742_
                               _path9745_
                               _reload?9747_
                               _eval?9749_))))
                        _g9848_))
                ((fx= _g9847_ 2)
                 (apply (lambda (_path9751_ _reload?9752_)
                          (let ((_eval?9754_ '#f))
                            (_opt-lambda97349742_
                             _path9751_
                             _reload?9752_
                             _eval?9754_)))
                        _g9848_))
                ((fx= _g9847_ 3)
                 (apply (lambda (_path9756_ _reload?9757_ _eval?9758_)
                          (_opt-lambda97349742_
                           _path9756_
                           _reload?9757_
                           _eval?9758_))
                        _g9848_))
                (else (error "No clause matching arguments" _g9848_)))))))
  (define gx#eval-module
    (lambda (_mod9733_) ((gx#current-expander-module-eval) _mod9733_)))
  (define gx#core-eval-module
    (lambda (_obj9718_)
      (let ((_force-e9720_
             (lambda (_getf9729_ _e9730_)
               (call-with-parameters
                (lambda () (force (_getf9729_ _e9730_)))
                gx#current-expander-context
                _e9730_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur9722_
                   (lambda (_e9724_)
                     (if (##structure-instance-of?
                          _e9724_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e9726_ (gx#core-context-prelude _e9724_)))
                             (if _$e9726_ (_recur9722_ _$e9726_) '#!void))
                           (_force-e9720_ gx#module-context-e _e9724_))
                         (if (##structure-instance-of?
                              _e9724_
                              'gx#prelude-context::t)
                             (_force-e9720_ gx#prelude-context-e _e9724_)
                             (if (gx#stx-string? _e9724_)
                                 (_recur9722_
                                  (gx#import-module
                                   (gx#core-resolve-module-path _e9724_)))
                                 (if (gx#core-library-module-path? _e9724_)
                                     (_recur9722_
                                      (gx#import-module
                                       (gx#core-resolve-library-module-path
                                        _e9724_)))
                                     (error '"Cannot eval module"
                                            _obj9718_))))))))
           _recur9722_)
         _obj9718_))))
  (define gx#core-context-prelude
    (let ((_opt-lambda96999710_
           (lambda (_ctx9701_)
             ((letrec ((_lp9703_
                        (lambda (_e9705_)
                          (if (let ((_$e9707_
                                     (##structure-instance-of?
                                      _e9705_
                                      'gx#module-context::t)))
                                (if _$e9707_
                                    _$e9707_
                                    (##structure-instance-of?
                                     _e9705_
                                     'gx#local-context::t)))
                              (_lp9703_
                               (##structure-ref
                                _e9705_
                                '3
                                gx#phi-context::t
                                '#f))
                              (if (##structure-instance-of?
                                   _e9705_
                                   'gx#prelude-context::t)
                                  _e9705_
                                  '#f)))))
                _lp9703_)
              _ctx9701_))))
      (lambda _g9850_
        (let ((_g9849_ (length _g9850_)))
          (cond ((fx= _g9849_ 0)
                 (apply (lambda ()
                          (let ((_ctx9714_ (gx#current-expander-context)))
                            (_opt-lambda96999710_ _ctx9714_)))
                        _g9850_))
                ((fx= _g9849_ 1)
                 (apply (lambda (_ctx9716_) (_opt-lambda96999710_ _ctx9716_))
                        _g9850_))
                (else (error "No clause matching arguments" _g9850_)))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx9691_)
      (let ((_ht9693_ (gx#current-expander-module-registry)))
        (let ((_$e9695_ (hash-get _ht9693_ _ctx9691_)))
          (if _$e9695_
              (values _$e9695_)
              (let ((_pre9698_
                     (make-struct-instance gx#prelude-context::t _ctx9691_)))
                (begin
                  (hash-put! _ht9693_ _ctx9691_ _pre9698_)
                  _pre9698_)))))))
  (define gx#core-import-module
    (let ((_opt-lambda96439681_
           (lambda (_rpath9645_ _reload?9646_)
             (let ((_import-source9648_
                    (lambda (_path9660_)
                      (begin
                        (if (member _path9660_ (gx#current-expander-path))
                            (error '"Cyclic expansion" _path9660_)
                            '#!void)
                        (call-with-parameters
                         (lambda ()
                           (let ((_g9851_ (gx#core-read-module _path9660_)))
                             (begin
                               (let ((_g9852_ (values-count _g9851_)))
                                 (if (not (fx= _g9852_ 4))
                                     (error "Context expects 4 values"
                                            _g9852_)))
                               (let ((_pre9663_ (values-ref _g9851_ 0))
                                     (_id9664_ (values-ref _g9851_ 1))
                                     (_ns9665_ (values-ref _g9851_ 2))
                                     (_body9666_ (values-ref _g9851_ 3)))
                                 (let ((_prelude9671_
                                        (if (##structure-instance-of?
                                             _pre9663_
                                             'gx#prelude-context::t)
                                            _pre9663_
                                            (if (##structure-instance-of?
                                                 _pre9663_
                                                 'gx#module-context::t)
                                                (gx#core-module->prelude-context
                                                 _pre9663_)
                                                (if (string? _pre9663_)
                                                    (gx#core-module->prelude-context
                                                     (gx#core-import-module
                                                      _pre9663_))
                                                    (if (not _pre9663_)
                                                        (let ((_$e9668_
                                                               (gx#current-expander-module-prelude)))
                                                          (if _$e9668_
                                                              _$e9668_
                                                              (make-struct-instance
                                                               gx#prelude-context::t
                                                               '#f)))
                                                        (error '"Cannot import module; unknown prelude"
                                                               _rpath9645_
                                                               _pre9663_)))))))
                                   (let ((_ctx9673_
                                          (make-struct-instance
                                           gx#module-context::t
                                           _id9664_
                                           _prelude9671_
                                           _ns9665_
                                           _path9660_)))
                                     (let ((_body9675_
                                            (gx#core-expand-module-begin
                                             _body9666_
                                             _ctx9673_)))
                                       (let ((_body9677_
                                              (gx#core-quote-syntax
                                               (gx#core-cons
                                                '%#begin
                                                _body9675_)
                                               _path9660_
                                               _ctx9673_
                                               '())))
                                         (let ()
                                           (begin
                                             (##structure-set!
                                              _ctx9673_
                                              (make-promise
                                               (lambda ()
                                                 (gx#eval-syntax* _body9677_)))
                                              '10
                                              gx#module-context::t
                                              '#f)
                                             (##structure-set!
                                              _ctx9673_
                                              _body9677_
                                              '11
                                              gx#module-context::t
                                              '#f)
                                             (hash-put!
                                              (gx#current-expander-module-registry)
                                              _path9660_
                                              _ctx9673_)
                                             (hash-put!
                                              (gx#current-expander-module-registry)
                                              _id9664_
                                              _ctx9673_)
                                             _ctx9673_))))))))))
                         gx#current-expander-context
                         (gx#core-context-root)
                         gx#current-expander-marks
                         '()
                         gx#current-expander-phi
                         '0
                         gx#current-expander-path
                         (cons _path9660_ (gx#current-expander-path))
                         gx#current-import-expander-phi
                         '#f
                         gx#current-export-expander-phi
                         '#f)))))
               (let ((_$e9650_
                      (if (not _reload?9646_)
                          (hash-get
                           (gx#current-expander-module-registry)
                           _rpath9645_)
                          '#f)))
                 (if _$e9650_
                     (values _$e9650_)
                     (if (gx#core-library-module-path? _rpath9645_)
                         (let ((_ctx9653_
                                (gx#core-import-module
                                 (gx#core-resolve-library-module-path
                                  _rpath9645_)
                                 _reload?9646_)))
                           (begin
                             (hash-put!
                              (gx#current-expander-module-registry)
                              _rpath9645_
                              _ctx9653_)
                             _ctx9653_))
                         (let ((_npath9655_ (path-normalize _rpath9645_)))
                           (let ((_$e9657_
                                  (if (not _reload?9646_)
                                      (hash-get
                                       (gx#current-expander-module-registry)
                                       _npath9655_)
                                      '#f)))
                             (if _$e9657_
                                 (values _$e9657_)
                                 (_import-source9648_ _npath9655_)))))))))))
      (lambda _g9854_
        (let ((_g9853_ (length _g9854_)))
          (cond ((fx= _g9853_ 1)
                 (apply (lambda (_rpath9684_)
                          (let ((_reload?9686_ '#f))
                            (_opt-lambda96439681_ _rpath9684_ _reload?9686_)))
                        _g9854_))
                ((fx= _g9853_ 2)
                 (apply (lambda (_rpath9688_ _reload?9689_)
                          (_opt-lambda96439681_ _rpath9688_ _reload?9689_))
                        _g9854_))
                (else (error "No clause matching arguments" _g9854_)))))))
  (define gx#core-read-module
    (lambda (_path9508_)
      ((letrec ((_lp9510_
                 (lambda (_body9512_ _pre9513_ _ns9514_ _pkg9515_)
                   (let ((_e95169540_ _body9512_))
                     (let ((_E95329558_
                            (lambda ()
                              (let ((_prelude9544_
                                     (if (gx#core-bound-module-prelude?
                                          _pre9513_)
                                         (gx#syntax-local-e _pre9513_)
                                         (if (gx#core-library-module-path?
                                              _pre9513_)
                                             (gx#core-resolve-library-module-path
                                              _pre9513_)
                                             (if (gx#stx-string? _pre9513_)
                                                 (gx#core-resolve-module-path
                                                  _pre9513_
                                                  _path9508_)
                                                 (gx#stx-e _pre9513_))))))
                                (let ((_path-id9546_
                                       (gx#core-module-path->namespace
                                        _path9508_)))
                                  (let ((_pkg-id9548_
                                         (if _pkg9515_
                                             (string-append
                                              _pkg9515_
                                              '"/"
                                              _path-id9546_)
                                             _path-id9546_)))
                                    (let ((_module-id9550_
                                           (string->symbol _pkg-id9548_)))
                                      (let ((_module-ns9555_
                                             (let ((_$e9552_ _ns9514_))
                                               (if _$e9552_
                                                   _$e9552_
                                                   _pkg-id9548_))))
                                        (let ()
                                          (values _prelude9544_
                                                  _module-id9550_
                                                  _module-ns9555_
                                                  _body9512_))))))))))
                       (let ((_E95259587_
                              (lambda ()
                                (if (gx#stx-pair? _e95169540_)
                                    (let ((_e95339562_
                                           (gx#syntax-e _e95169540_)))
                                      (let ((_hd95349565_ (##car _e95339562_))
                                            (_tl95359567_ (##cdr _e95339562_)))
                                        (if (eq? (gx#stx-e _hd95349565_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl95359567_)
                                                (let ((_e95369570_
                                                       (gx#syntax-e
                                                        _tl95359567_)))
                                                  (let ((_hd95379573_
                                                         (##car _e95369570_))
                                                        (_tl95389575_
                                                         (##cdr _e95369570_)))
                                                    (let ((_pkg9578_
                                                           _hd95379573_))
                                                      (let ((_rest9580_
                                                             _tl95389575_))
                                                        (if '#t
                                                            (let ((_pkg9585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg9578_)
                               (symbol->string (gx#stx-e _pkg9578_))
                               (if (let ((_$e9582_ (gx#stx-string? _pkg9578_)))
                                     (if _$e9582_
                                         _$e9582_
                                         (gx#stx-false? _pkg9578_)))
                                   (gx#stx-e _pkg9578_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg9578_)))))
                      (_lp9510_ _rest9580_ _pre9513_ _ns9514_ _pkg9585_))
                    (_E95329558_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E95329558_))
                                            (_E95329558_))))
                                    (_E95329558_)))))
                         (let ((_E95189616_
                                (lambda ()
                                  (if (gx#stx-pair? _e95169540_)
                                      (let ((_e95269591_
                                             (gx#syntax-e _e95169540_)))
                                        (let ((_hd95279594_
                                               (##car _e95269591_))
                                              (_tl95289596_
                                               (##cdr _e95269591_)))
                                          (if (eq? (gx#stx-e _hd95279594_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl95289596_)
                                                  (let ((_e95299599_
                                                         (gx#syntax-e
                                                          _tl95289596_)))
                                                    (let ((_hd95309602_
                                                           (##car _e95299599_))
                                                          (_tl95319604_
                                                           (##cdr _e95299599_)))
                                                      (let ((_ns9607_
                                                             _hd95309602_))
                                                        (let ((_rest9609_
                                                               _tl95319604_))
                                                          (if '#t
                                                              (let ((_ns9614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns9607_)
                                 (symbol->string (gx#stx-e _ns9607_))
                                 (if (let ((_$e9611_
                                            (gx#stx-string? _ns9607_)))
                                       (if _$e9611_
                                           _$e9611_
                                           (gx#stx-false? _ns9607_)))
                                     (gx#stx-e _ns9607_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns9607_)))))
                        (_lp9510_ _rest9609_ _pre9513_ _ns9614_ _pkg9515_))
                      (_E95259587_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E95259587_))
                                              (_E95259587_))))
                                      (_E95259587_)))))
                           (let ((_E95179640_
                                  (lambda ()
                                    (if (gx#stx-pair? _e95169540_)
                                        (let ((_e95199620_
                                               (gx#syntax-e _e95169540_)))
                                          (let ((_hd95209623_
                                                 (##car _e95199620_))
                                                (_tl95219625_
                                                 (##cdr _e95199620_)))
                                            (if (eq? (gx#stx-e _hd95209623_)
                                                     'prelude:)
                                                (if (gx#stx-pair? _tl95219625_)
                                                    (let ((_e95229628_
                                                           (gx#syntax-e
                                                            _tl95219625_)))
                                                      (let ((_hd95239631_
                                                             (##car _e95229628_))
                                                            (_tl95249633_
                                                             (##cdr _e95229628_)))
                                                        (let ((_prelude9636_
                                                               _hd95239631_))
                                                          (let ((_rest9638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl95249633_))
                    (if '#t
                        (_lp9510_ _rest9638_ _prelude9636_ _ns9514_ _pkg9515_)
                        (_E95189616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E95189616_))
                                                (_E95189616_))))
                                        (_E95189616_)))))
                             (let () (_E95179640_))))))))))
         _lp9510_)
       (read-syntax-from-file _path9508_)
       '#f
       '#f
       '#f)))
  (define gx#core-module-path->namespace
    (lambda (_path9506_)
      (path-strip-extension (path-strip-directory _path9506_))))
  (define gx#core-module-path->id
    (lambda (_path9504_)
      (string->symbol (gx#core-module-path->namespace _path9504_))))
  (define gx#core-resolve-module-path
    (let ((_opt-lambda94819494_
           (lambda (_stx-path9483_ _rel9484_)
             (let ((_path9486_ (gx#stx-e _stx-path9483_)))
               (let ((_path9488_
                      (if (equal? (path-extension _path9486_) '".ss")
                          _path9486_
                          (string-append _path9486_ '".ss"))))
                 (let ()
                   (gx#core-resolve-path
                    _path9488_
                    (let ((_$e9491_ (gx#stx-source _stx-path9483_)))
                      (if _$e9491_ _$e9491_ _rel9484_)))))))))
      (lambda _g9856_
        (let ((_g9855_ (length _g9856_)))
          (cond ((fx= _g9855_ 1)
                 (apply (lambda (_stx-path9497_)
                          (let ((_rel9499_ '#f))
                            (_opt-lambda94819494_ _stx-path9497_ _rel9499_)))
                        _g9856_))
                ((fx= _g9855_ 2)
                 (apply (lambda (_stx-path9501_ _rel9502_)
                          (_opt-lambda94819494_ _stx-path9501_ _rel9502_))
                        _g9856_))
                (else (error "No clause matching arguments" _g9856_)))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath9429_)
      (let ((_spath9431_ (symbol->string (gx#stx-e _libpath9429_))))
        (let ((_spath9433_
               (substring _spath9431_ '1 (string-length _spath9431_))))
          (let ()
            ((letrec ((_lp9436_
                       (lambda (_rest9438_)
                         (let ((_rest94399448_ _rest9438_))
                           (let ((_E94429452_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _rest94399448_))))
                             (let ((_try-match94419460_
                                    (lambda ()
                                      (let ((_K94439457_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Cannot find library module"
                                                _libpath9429_))))
                                        (if (##null? _rest94399448_)
                                            (_K94439457_)
                                            (_E94429452_))))))
                               (let ((_K94449470_
                                      (lambda (_rest9463_ _dir9464_)
                                        (let ((_compiled-path9466_
                                               (path-expand
                                                (string-append
                                                 _spath9433_
                                                 '".ssi")
                                                _dir9464_)))
                                          (if (file-exists?
                                               _compiled-path9466_)
                                              (path-normalize
                                               _compiled-path9466_)
                                              (let ((_src-path9468_
                                                     (path-expand
                                                      (string-append
                                                       _spath9433_
                                                       '".ss")
                                                      _dir9464_)))
                                                (if (file-exists?
                                                     _src-path9468_)
                                                    (path-normalize
                                                     _src-path9468_)
                                                    (_lp9436_
                                                     _rest9463_))))))))
                                 (if (##pair? _rest94399448_)
                                     (let ((_hd94459473_
                                            (##car _rest94399448_))
                                           (_tl94469475_
                                            (##cdr _rest94399448_)))
                                       (let ((_dir9478_ _hd94459473_))
                                         (let ((_rest9480_ _tl94469475_))
                                           (_K94449470_
                                            _rest9480_
                                            _dir9478_))))
                                     (_try-match94419460_)))))))))
               _lp9436_)
             (gx#current-expander-module-library-path)))))))
  (define gx#core-library-module-path?
    (lambda (_stx9427_) (gx#core-special-module-path? _stx9427_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx9422_ _char9423_)
      (if (gx#identifier? _stx9422_)
          (if (interned-symbol? (gx#stx-e _stx9422_))
              (let ((_str9425_ (symbol->string (gx#stx-e _stx9422_))))
                (if (fx> (string-length _str9425_) '1)
                    (eq? (string-ref _str9425_ '0) _char9423_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx9416_)
      (gx#core-bound-identifier?
       _stx9416_
       (lambda (_g94179419_)
         (gx#expander-binding? _g94179419_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx9410_)
      (gx#core-bound-identifier?
       _stx9410_
       (lambda (_g94119413_)
         (gx#expander-binding? _g94119413_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx9397_)
      (let ((_module-prelude?9399_
             (lambda (_e9405_)
               (let ((_$e9407_
                      (##structure-instance-of?
                       _e9405_
                       'gx#module-context::t)))
                 (if _$e9407_
                     _$e9407_
                     (##structure-instance-of?
                      _e9405_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?
         _stx9397_
         (lambda (_g94009402_)
           (gx#expander-binding? _g94009402_ _module-prelude?9399_))))))
  (define gx#core-bind-import!
    (let ((_opt-lambda93259379_
           (lambda (_in9327_ _ctx9328_ _force-weak?9329_)
             (let ((_in93309339_ _in9327_))
               (let ((_E93329343_
                      (lambda () (error '"No clause matching" _in93309339_))))
                 (let ((_K93339356_
                        (lambda (_weak?9346_ _phi9347_ _key9348_ _source9349_)
                          (gx#core-bind!
                           _key9348_
                           (let ((_e9351_ (gx#core-resolve-module-export
                                           _source9349_)))
                             (##structure
                              gx#import-binding::t
                              (##structure-ref _e9351_ '1 gx#binding::t '#f)
                              _key9348_
                              _phi9347_
                              _e9351_
                              (##structure-ref
                               _source9349_
                               '1
                               gx#module-export::t
                               '#f)
                              (let ((_$e9353_ _force-weak?9329_))
                                (if _$e9353_ _$e9353_ _weak?9346_))))
                           gx#core-context-rebind?
                           _phi9347_
                           _ctx9328_))))
                   (if (direct-struct-instance?
                        gx#module-import::t
                        _in93309339_)
                       (let ((_e93349359_ (##vector-ref _in93309339_ '1)))
                         (let ((_source9362_ _e93349359_))
                           (let ((_e93359364_ (##vector-ref _in93309339_ '2)))
                             (let ((_key9367_ _e93359364_))
                               (let ((_e93369369_
                                      (##vector-ref _in93309339_ '3)))
                                 (let ((_phi9372_ _e93369369_))
                                   (let ((_e93379374_
                                          (##vector-ref _in93309339_ '4)))
                                     (let ((_weak?9377_ _e93379374_))
                                       (_K93339356_
                                        _weak?9377_
                                        _phi9372_
                                        _key9367_
                                        _source9362_)))))))))
                       (_E93329343_))))))))
      (lambda _g9858_
        (let ((_g9857_ (length _g9858_)))
          (cond ((fx= _g9857_ 1)
                 (apply (lambda (_in9382_)
                          (let ((_ctx9384_ (gx#current-expander-context)))
                            (let ((_force-weak?9386_ '#f))
                              (_opt-lambda93259379_
                               _in9382_
                               _ctx9384_
                               _force-weak?9386_))))
                        _g9858_))
                ((fx= _g9857_ 2)
                 (apply (lambda (_in9388_ _ctx9389_)
                          (let ((_force-weak?9391_ '#f))
                            (_opt-lambda93259379_
                             _in9388_
                             _ctx9389_
                             _force-weak?9391_)))
                        _g9858_))
                ((fx= _g9857_ 3)
                 (apply (lambda (_in9393_ _ctx9394_ _force-weak?9395_)
                          (_opt-lambda93259379_
                           _in9393_
                           _ctx9394_
                           _force-weak?9395_))
                        _g9858_))
                (else (error "No clause matching arguments" _g9858_)))))))
  (define gx#core-bind-weak-import!
    (let ((_opt-lambda93119316_
           (lambda (_in9313_ _ctx9314_)
             (gx#core-bind-import! _in9313_ _ctx9314_ '#t))))
      (lambda _g9860_
        (let ((_g9859_ (length _g9860_)))
          (cond ((fx= _g9859_ 1)
                 (apply (lambda (_in9319_)
                          (let ((_ctx9321_ (gx#current-expander-context)))
                            (_opt-lambda93119316_ _in9319_ _ctx9321_)))
                        _g9860_))
                ((fx= _g9859_ 2)
                 (apply (lambda (_in9323_ _ctx9324_)
                          (_opt-lambda93119316_ _in9323_ _ctx9324_))
                        _g9860_))
                (else (error "No clause matching arguments" _g9860_)))))))
  (define gx#core-resolve-module-export
    (lambda (_out9204_)
      (let ((_subst9206_
             (lambda (_key9252_)
               (let ((_key92539261_ _key9252_))
                 (let ((_E92569265_
                        (lambda ()
                          (error '"No clause matching" _key92539261_))))
                   (let ((_else92559269_ (lambda () _key9252_)))
                     (let ((_K92579300_
                            (lambda (_mark9272_ _id9273_)
                              (let ((_mark92749280_ _mark9272_))
                                (let ((_E92769284_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark92749280_))))
                                  (let ((_K92779292_
                                         (lambda (_subst9287_)
                                           (let ((_$e9289_
                                                  (if _subst9287_
                                                      (hash-get
                                                       _subst9287_
                                                       _id9273_)
                                                      '#f)))
                                             (if _$e9289_
                                                 _$e9289_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key9252_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark92749280_)
                                        (let ((_e92789295_
                                               (##vector-ref
                                                _mark92749280_
                                                '1)))
                                          (let ((_subst9298_ _e92789295_))
                                            (_K92779292_ _subst9298_)))
                                        (_E92769284_))))))))
                       (if (##pair? _key92539261_)
                           (let ((_hd92589303_ (##car _key92539261_))
                                 (_tl92599305_ (##cdr _key92539261_)))
                             (let ((_id9308_ _hd92589303_))
                               (let ((_mark9310_ _tl92599305_))
                                 (_K92579300_ _mark9310_ _id9308_))))
                           (_else92559269_)))))))))
        (let ((_out92079217_ _out9204_))
          (let ((_E92099221_
                 (lambda () (error '"No clause matching" _out92079217_))))
            (let ((_K92109228_
                   (lambda (_phi9224_ _key9225_ _ctx9226_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx9226_ _phi9224_)
                      (_subst9206_ _key9225_)))))
              (if (direct-struct-instance? gx#module-export::t _out92079217_)
                  (let ((_e92119231_ (##vector-ref _out92079217_ '1)))
                    (let ((_ctx9234_ _e92119231_))
                      (let ((_e92129236_ (##vector-ref _out92079217_ '2)))
                        (let ((_key9239_ _e92129236_))
                          (let ((_e92139241_ (##vector-ref _out92079217_ '3)))
                            (let ((_phi9244_ _e92139241_))
                              (let ((_e92149246_
                                     (##vector-ref _out92079217_ '4)))
                                (let ((_e92159249_
                                       (##vector-ref _out92079217_ '5)))
                                  (_K92109228_
                                   _phi9244_
                                   _key9239_
                                   _ctx9234_)))))))))
                  (_E92099221_))))))))
  (define gx#core-module-export->import
    (let ((_opt-lambda91279186_
           (lambda (_out9129_ _rename9130_ _dphi9131_)
             (let ((_out91329142_ _out9129_))
               (let ((_E91349146_
                      (lambda () (error '"No clause matching" _out91329142_))))
                 (let ((_K91359158_
                        (lambda (_weak?9149_
                                 _name9150_
                                 _phi9151_
                                 _key9152_
                                 _ctx9153_)
                          (##structure
                           gx#module-import::t
                           _out9129_
                           (let ((_$e9155_ _rename9130_))
                             (if _$e9155_ _$e9155_ _name9150_))
                           (fx+ _phi9151_ _dphi9131_)
                           _weak?9149_))))
                   (if (direct-struct-instance?
                        gx#module-export::t
                        _out91329142_)
                       (let ((_e91369161_ (##vector-ref _out91329142_ '1)))
                         (let ((_ctx9164_ _e91369161_))
                           (let ((_e91379166_ (##vector-ref _out91329142_ '2)))
                             (let ((_key9169_ _e91379166_))
                               (let ((_e91389171_
                                      (##vector-ref _out91329142_ '3)))
                                 (let ((_phi9174_ _e91389171_))
                                   (let ((_e91399176_
                                          (##vector-ref _out91329142_ '4)))
                                     (let ((_name9179_ _e91399176_))
                                       (let ((_e91409181_
                                              (##vector-ref _out91329142_ '5)))
                                         (let ((_weak?9184_ _e91409181_))
                                           (_K91359158_
                                            _weak?9184_
                                            _name9179_
                                            _phi9174_
                                            _key9169_
                                            _ctx9164_)))))))))))
                       (_E91349146_))))))))
      (lambda _g9862_
        (let ((_g9861_ (length _g9862_)))
          (cond ((fx= _g9861_ 1)
                 (apply (lambda (_out9189_)
                          (let ((_rename9191_ '#f))
                            (let ((_dphi9193_ '0))
                              (_opt-lambda91279186_
                               _out9189_
                               _rename9191_
                               _dphi9193_))))
                        _g9862_))
                ((fx= _g9861_ 2)
                 (apply (lambda (_out9195_ _rename9196_)
                          (let ((_dphi9198_ '0))
                            (_opt-lambda91279186_
                             _out9195_
                             _rename9196_
                             _dphi9198_)))
                        _g9862_))
                ((fx= _g9861_ 3)
                 (apply (lambda (_out9200_ _rename9201_ _dphi9202_)
                          (_opt-lambda91279186_
                           _out9200_
                           _rename9201_
                           _dphi9202_))
                        _g9862_))
                (else (error "No clause matching arguments" _g9862_)))))))
  (define gx#core-expand-module%
    (lambda (_stx9057_)
      (let ((_make-context9059_
             (lambda (_id9110_)
               (let ((_super9112_ (gx#current-expander-context)))
                 (let ((_bind-id9114_ (gx#stx-e _id9110_)))
                   (let ((_mod-id9116_
                          (if (##structure-instance-of?
                               _super9112_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super9112_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id9114_)
                              _bind-id9114_)))
                     (let ((_ns9118_ (symbol->string _mod-id9116_)))
                       (let ((_path9125_
                              (if (##structure-instance-of?
                                   _super9112_
                                   'gx#module-context::t)
                                  (let ((_path9120_
                                         (##structure-ref
                                          _super9112_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e9122_ (pair? _path9120_)))
                                          (if _$e9122_
                                              _$e9122_
                                              (null? _path9120_)))
                                        (cons _bind-id9114_ _path9120_)
                                        (if (not _path9120_)
                                            _bind-id9114_
                                            (cons _bind-id9114_
                                                  (cons _path9120_ '())))))
                                  _bind-id9114_)))
                         (let ()
                           (make-struct-instance
                            gx#module-context::t
                            _mod-id9116_
                            _super9112_
                            _ns9118_
                            _path9125_))))))))))
        (let ((_e90609070_ _stx9057_))
          (let ((_E90629074_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e90609070_))))
            (let ((_E90619106_
                   (lambda ()
                     (if (gx#stx-pair? _e90609070_)
                         (let ((_e90639078_ (gx#syntax-e _e90609070_)))
                           (let ((_hd90649081_ (##car _e90639078_))
                                 (_tl90659083_ (##cdr _e90639078_)))
                             (if (gx#stx-pair? _tl90659083_)
                                 (let ((_e90669086_
                                        (gx#syntax-e _tl90659083_)))
                                   (let ((_hd90679089_ (##car _e90669086_))
                                         (_tl90689091_ (##cdr _e90669086_)))
                                     (let ((_id9094_ _hd90679089_))
                                       (let ((_body9096_ _tl90689091_))
                                         (if (if (gx#identifier? _id9094_)
                                                 (gx#stx-list? _body9096_)
                                                 '#f)
                                             (let ((_ctx9098_
                                                    (_make-context9059_
                                                     _id9094_)))
                                               (let ((_body9100_
                                                      (gx#core-expand-module-begin
                                                       _body9096_
                                                       _ctx9098_)))
                                                 (let ((_body9102_
                                                        (gx#core-quote-syntax
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body9100_)
                                                         (gx#stx-source
                                                          _stx9057_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx9098_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body9102_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx9098_
                                                        _body9102_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!
                                                        _id9094_
                                                        _ctx9098_)
                                                       (gx#core-quote-syntax
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax
                                                          _id9094_)
                                                         _body9102_)
                                                        (gx#stx-source
                                                         _stx9057_)))))))
                                             (_E90629074_))))))
                                 (_E90629074_))))
                         (_E90629074_)))))
              (let () (_E90619106_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body9053_ _ctx9054_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature! 'gerbil-module '#t)
           (gx#core-expand-module-body _body9053_)))
       gx#current-expander-context
       _ctx9054_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body8849_)
      (let ((_expand-special8851_
             (lambda (_hd8980_ _K8981_ _rest8982_ _r8983_)
               (let ((_e89849001_ _hd8980_))
                 (let ((_E89969005_
                        (lambda ()
                          (_K8981_ _rest8982_
                                   (cons (gx#core-expand-top _hd8980_)
                                         _r8983_)))))
                   (let ((_E89869017_
                          (lambda ()
                            (if (gx#stx-pair? _e89849001_)
                                (let ((_e89979009_ (gx#syntax-e _e89849001_)))
                                  (let ((_hd89989012_ (##car _e89979009_))
                                        (_tl89999014_ (##cdr _e89979009_)))
                                    (if (if (gx#identifier? _hd89989012_)
                                            (gx#core-identifier=?
                                             _hd89989012_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K8981_ _rest8982_
                                                     (cons _hd8980_ _r8983_))
                                            (_E89969005_))
                                        (_E89969005_))))
                                (_E89969005_)))))
                     (let ((_E89859049_
                            (lambda ()
                              (if (gx#stx-pair? _e89849001_)
                                  (let ((_e89879021_
                                         (gx#syntax-e _e89849001_)))
                                    (let ((_hd89889024_ (##car _e89879021_))
                                          (_tl89899026_ (##cdr _e89879021_)))
                                      (if (if (gx#identifier? _hd89889024_)
                                              (gx#core-identifier=?
                                               _hd89889024_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl89899026_)
                                              (let ((_e89909029_
                                                     (gx#syntax-e
                                                      _tl89899026_)))
                                                (let ((_hd89919032_
                                                       (##car _e89909029_))
                                                      (_tl89929034_
                                                       (##cdr _e89909029_)))
                                                  (let ((_hd-bind9037_
                                                         _hd89919032_))
                                                    (if (gx#stx-pair?
                                                         _tl89929034_)
                                                        (let ((_e89939039_
                                                               (gx#syntax-e
                                                                _tl89929034_)))
                                                          (let ((_hd89949042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e89939039_))
                        (_tl89959044_ (##cdr _e89939039_)))
                    (let ((_expr9047_ _hd89949042_))
                      (if (gx#stx-null? _tl89959044_)
                          (if (gx#core-bind-values? _hd-bind9037_)
                              (begin
                                (gx#core-bind-values! _hd-bind9037_)
                                (_K8981_ _rest8982_ (cons _hd8980_ _r8983_)))
                              (_E89869017_))
                          (_E89869017_)))))
                (_E89869017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E89869017_))
                                          (_E89869017_))))
                                  (_E89869017_)))))
                       (let () (_E89859049_)))))))))
        (let ((_expand-body8852_
               (lambda (_rbody8854_)
                 ((letrec ((_lp8856_
                            (lambda (_rest8858_ _body8859_)
                              (let ((_rest88608868_ _rest8858_))
                                (let ((_E88638872_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest88608868_))))
                                  (let ((_else88628876_
                                         (lambda () _body8859_)))
                                    (let ((_K88648968_
                                           (lambda (_rest8879_ _hd8880_)
                                             (let ((_e88818902_ _hd8880_))
                                               (let ((_E88978906_
                                                      (lambda ()
                                                        (_lp8856_
                                                         _rest8879_
                                                         (cons (gx#core-expand-expression
                                                                _hd8880_)
                                                               _body8859_)))))
                                                 (let ((_E88938920_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e88818902_)
                                                              (let ((_e88988910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e88818902_)))
                        (let ((_hd88998913_ (##car _e88988910_))
                              (_tl89008915_ (##cdr _e88988910_)))
                          (let ((_form8918_ _hd88998913_))
                            (if (gx#core-bound-identifier?
                                 _form8918_
                                 gx#special-form-binding?)
                                (_lp8856_
                                 _rest8879_
                                 (cons _hd8880_ _body8859_))
                                (_E88978906_)))))
                      (_E88978906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E88838932_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e88818902_)
                        (let ((_e88948924_ (gx#syntax-e _e88818902_)))
                          (let ((_hd88958927_ (##car _e88948924_))
                                (_tl88968929_ (##cdr _e88948924_)))
                            (if (if (gx#identifier? _hd88958927_)
                                    (gx#core-identifier=?
                                     _hd88958927_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp8856_
                                     _rest8879_
                                     (cons (gx#core-expand-export% _hd8880_)
                                           _body8859_))
                                    (_E88938920_))
                                (_E88938920_))))
                        (_E88938920_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E88828964_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e88818902_)
                          (let ((_e88848936_ (gx#syntax-e _e88818902_)))
                            (let ((_hd88858939_ (##car _e88848936_))
                                  (_tl88868941_ (##cdr _e88848936_)))
                              (if (if (gx#identifier? _hd88858939_)
                                      (gx#core-identifier=?
                                       _hd88858939_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl88868941_)
                                      (let ((_e88878944_
                                             (gx#syntax-e _tl88868941_)))
                                        (let ((_hd88888947_
                                               (##car _e88878944_))
                                              (_tl88898949_
                                               (##cdr _e88878944_)))
                                          (let ((_hd-bind8952_ _hd88888947_))
                                            (if (gx#stx-pair? _tl88898949_)
                                                (let ((_e88908954_
                                                       (gx#syntax-e
                                                        _tl88898949_)))
                                                  (let ((_hd88918957_
                                                         (##car _e88908954_))
                                                        (_tl88928959_
                                                         (##cdr _e88908954_)))
                                                    (let ((_expr8962_
                                                           _hd88918957_))
                                                      (if (gx#stx-null?
                                                           _tl88928959_)
                                                          (if '#t
                                                              (_lp8856_
                                                               _rest8879_
                                                               (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind8952_)
                               (gx#core-expand-expression _expr8962_))
                              (gx#stx-source _hd8880_))
                             _body8859_))
                      (_E88838932_))
                  (_E88838932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E88838932_)))))
                                      (_E88838932_))
                                  (_E88838932_))))
                          (_E88838932_)))))
               (let () (_E88828964_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest88608868_)
                                          (let ((_hd88658971_
                                                 (##car _rest88608868_))
                                                (_tl88668973_
                                                 (##cdr _rest88608868_)))
                                            (let ((_hd8976_ _hd88658971_))
                                              (let ((_rest8978_ _tl88668973_))
                                                (_K88648968_
                                                 _rest8978_
                                                 _hd8976_))))
                                          (_else88628876_)))))))))
                    _lp8856_)
                  _rbody8854_
                  '()))))
          (_expand-body8852_
           (gx#core-expand-block
            (cons '%#begin-module _body8849_)
            _expand-special8851_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx8692_
             _expanded?8693_
             _method8694_
             _current-phi8695_
             _expand18696_)
      (letrec ((_K8698_ (lambda (_rest8816_ _r8817_)
                          (let ((_e88188825_ _rest8816_))
                            (let ((_E88208829_ (lambda () _r8817_)))
                              (let ((_E88198845_
                                     (lambda ()
                                       (if (gx#stx-pair? _e88188825_)
                                           (let ((_e88218833_
                                                  (gx#syntax-e _e88188825_)))
                                             (let ((_hd88228836_
                                                    (##car _e88218833_))
                                                   (_tl88238838_
                                                    (##cdr _e88218833_)))
                                               (let ((_hd8841_ _hd88228836_))
                                                 (let ((_rest8843_
                                                        _tl88238838_))
                                                   (if '#t
                                                       (_step8699_
                                                        _hd8841_
                                                        _rest8843_
                                                        _r8817_)
                                                       (_E88208829_))))))
                                           (_E88208829_)))))
                                (let () (_E88198845_)))))))
               (_step8699_
                (lambda (_hd8730_ _rest8731_ _r8732_)
                  (let ((_e87338751_ _hd8730_))
                    (let ((_E87468755_
                           (lambda ()
                             (if (_expanded?8693_ (gx#stx-e _hd8730_))
                                 (_K8698_ _rest8731_
                                          (cons (gx#stx-e _hd8730_) _r8732_))
                                 (_expand18696_
                                  _hd8730_
                                  _K8698_
                                  _rest8731_
                                  _r8732_)))))
                      (let ((_E87428771_
                             (lambda ()
                               (if (gx#stx-pair? _e87338751_)
                                   (let ((_e87478759_
                                          (gx#syntax-e _e87338751_)))
                                     (let ((_hd87488762_ (##car _e87478759_))
                                           (_tl87498764_ (##cdr _e87478759_)))
                                       (let ((_macro8767_ _hd87488762_))
                                         (let ((_body8769_ _tl87498764_))
                                           (if (gx#core-bound-identifier?
                                                _macro8767_
                                                gx#syntax-binding?)
                                               (_K8698_ (cons (gx#core-apply-expander
                                                               (gx#syntax-local-e
                                                                _macro8767_)
                                                               _hd8730_
                                                               _method8694_)
                                                              _rest8731_)
                                                        _r8732_)
                                               (_E87468755_))))))
                                   (_E87468755_)))))
                        (let ((_E87358785_
                               (lambda ()
                                 (if (gx#stx-pair? _e87338751_)
                                     (let ((_e87438775_
                                            (gx#syntax-e _e87338751_)))
                                       (let ((_hd87448778_ (##car _e87438775_))
                                             (_tl87458780_
                                              (##cdr _e87438775_)))
                                         (if (eq? (gx#stx-e _hd87448778_)
                                                  'begin:)
                                             (let ((_body8783_ _tl87458780_))
                                               (if '#t
                                                   (_K8698_ (gx#stx-foldr
                                                             cons
                                                             _rest8731_
                                                             _body8783_)
                                                            _r8732_)
                                                   (_E87428771_)))
                                             (_E87428771_))))
                                     (_E87428771_)))))
                          (let ((_E87348812_
                                 (lambda ()
                                   (if (gx#stx-pair? _e87338751_)
                                       (let ((_e87368789_
                                              (gx#syntax-e _e87338751_)))
                                         (let ((_hd87378792_
                                                (##car _e87368789_))
                                               (_tl87388794_
                                                (##cdr _e87368789_)))
                                           (if (eq? (gx#stx-e _hd87378792_)
                                                    'phi:)
                                               (if (gx#stx-pair? _tl87388794_)
                                                   (let ((_e87398797_
                                                          (gx#syntax-e
                                                           _tl87388794_)))
                                                     (let ((_hd87408800_
                                                            (##car _e87398797_))
                                                           (_tl87418802_
                                                            (##cdr _e87398797_)))
                                                       (let ((_dphi8805_
                                                              _hd87408800_))
                                                         (let ((_body8807_
                                                                _tl87418802_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi8805_)
                                                               (let ((_rbody8810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K8698_ _body8807_ '()))
                               _current-phi8695_
                               (fx+ (gx#stx-e _dphi8805_)
                                    (_current-phi8695_)))))
                         (_K8698_ _rest8731_ (foldr cons _r8732_ _rbody8810_)))
                       (_E87358785_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E87358785_))
                                               (_E87358785_))))
                                       (_E87358785_)))))
                            (let () (_E87348812_))))))))))
        (let ((_e87008707_ _stx8692_))
          (let ((_E87028711_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e87008707_))))
            (let ((_E87018726_
                   (lambda ()
                     (if (gx#stx-pair? _e87008707_)
                         (let ((_e87038715_ (gx#syntax-e _e87008707_)))
                           (let ((_hd87048718_ (##car _e87038715_))
                                 (_tl87058720_ (##cdr _e87038715_)))
                             (let ((_body8723_ _tl87058720_))
                               (if '#t
                                   (if (_current-phi8695_)
                                       (_K8698_ _body8723_ '())
                                       (call-with-parameters
                                        (lambda () (_K8698_ _body8723_ '()))
                                        _current-phi8695_
                                        (gx#current-expander-phi)))
                                   (_E87028711_)))))
                         (_E87028711_)))))
              (let () (_E87018726_))))))))
  (define gx#core-expand-import%
    (let ((_opt-lambda82298682_
           (lambda (_stx8231_ _internal-expand?8232_)
             (let ((_import18235_
                    (lambda (_ctx8666_ _K8667_ _rest8668_ _r8669_)
                      (let ((_dphi8671_
                             (fx- (gx#current-import-expander-phi)
                                  (gx#current-expander-phi))))
                        (_K8667_ _rest8668_
                                 (cons (##structure
                                        gx#import-set::t
                                        _ctx8666_
                                        _dphi8671_
                                        (map (lambda (_g86728674_)
                                               (gx#core-module-export->import
                                                _g86728674_
                                                '#f
                                                _dphi8671_))
                                             (##structure-ref
                                              _ctx8666_
                                              '9
                                              gx#module-context::t
                                              '#f)))
                                       _r8669_))))))
               (let ((_import-spec?8236_
                      (lambda (_hd8623_)
                        (let ((_e86248634_ _hd8623_))
                          (let ((_E86268638_ (lambda () '#f)))
                            (let ((_E86258662_
                                   (lambda ()
                                     (if (gx#stx-pair? _e86248634_)
                                         (let ((_e86278642_
                                                (gx#syntax-e _e86248634_)))
                                           (let ((_hd86288645_
                                                  (##car _e86278642_))
                                                 (_tl86298647_
                                                  (##cdr _e86278642_)))
                                             (if (eq? (gx#stx-e _hd86288645_)
                                                      'spec:)
                                                 (if (gx#stx-pair?
                                                      _tl86298647_)
                                                     (let ((_e86308650_
                                                            (gx#syntax-e
                                                             _tl86298647_)))
                                                       (let ((_hd86318653_
                                                              (##car _e86308650_))
                                                             (_tl86328655_
                                                              (##cdr _e86308650_)))
                                                         (let ((_spath8658_
                                                                _hd86318653_))
                                                           (let ((_specs8660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl86328655_))
                     (if '#t '#t (_E86268638_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E86268638_))
                                                 (_E86268638_))))
                                         (_E86268638_)))))
                              (let () (_E86258662_))))))))
                 (let ((_import-submodule?8237_
                        (lambda (_hd8580_)
                          (let ((_e85818591_ _hd8580_))
                            (let ((_E85838595_ (lambda () '#f)))
                              (let ((_E85828619_
                                     (lambda ()
                                       (if (gx#stx-pair? _e85818591_)
                                           (let ((_e85848599_
                                                  (gx#syntax-e _e85818591_)))
                                             (let ((_hd85858602_
                                                    (##car _e85848599_))
                                                   (_tl85868604_
                                                    (##cdr _e85848599_)))
                                               (if (eq? (gx#stx-e _hd85858602_)
                                                        'in:)
                                                   (if (gx#stx-pair?
                                                        _tl85868604_)
                                                       (let ((_e85878607_
                                                              (gx#syntax-e
                                                               _tl85868604_)))
                                                         (let ((_hd85888610_
                                                                (##car _e85878607_))
                                                               (_tl85898612_
                                                                (##cdr _e85878607_)))
                                                           (let ((_top8615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd85888610_))
                     (let ((_sub8617_ _tl85898612_))
                       (if '#t '#t (_E85838595_))))))
               (_E85838595_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E85838595_))))
                                           (_E85838595_)))))
                                (let () (_E85828619_))))))))
                   (let ((_import-runtime?8238_
                          (lambda (_hd8537_)
                            (let ((_e85388548_ _hd8537_))
                              (let ((_E85408552_ (lambda () '#f)))
                                (let ((_E85398576_
                                       (lambda ()
                                         (if (gx#stx-pair? _e85388548_)
                                             (let ((_e85418556_
                                                    (gx#syntax-e _e85388548_)))
                                               (let ((_hd85428559_
                                                      (##car _e85418556_))
                                                     (_tl85438561_
                                                      (##cdr _e85418556_)))
                                                 (if (eq? (gx#stx-e
                                                           _hd85428559_)
                                                          'runtime:)
                                                     (if (gx#stx-pair?
                                                          _tl85438561_)
                                                         (let ((_e85448564_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl85438561_)))
                   (let ((_hd85458567_ (##car _e85448564_))
                         (_tl85468569_ (##cdr _e85448564_)))
                     (let ((_top8572_ _hd85458567_))
                       (let ((_spath8574_ _tl85468569_))
                         (if '#t '#t (_E85408552_))))))
                 (_E85408552_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E85408552_))))
                                             (_E85408552_)))))
                                  (let () (_E85398576_))))))))
                     (let ((_import-spec-source8242_
                            (lambda (_spath8308_)
                              (gx#core-import-nested-module
                               _spath8308_
                               _stx8231_))))
                       (let ((_import!8243_
                              (lambda (_rbody8256_)
                                (let ((_current-ctx8258_
                                       (gx#current-expander-context)))
                                  (let ((_deps8259_ (make-hash-table-eq)))
                                    (let ((_bind!8260_
                                           (lambda (_hd8306_)
                                             (begin
                                               (gx#core-bind-import!
                                                _hd8306_
                                                _current-ctx8258_)
                                               (if (if (fxpositive?
                                                        (##structure-ref
                                                         _hd8306_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                                       (fxzero? (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _hd8306_ '1 gx#module-import::t '#f)
                         '3
                         gx#module-export::t
                         '#f))
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (hash-put!
                                                    _deps8259_
                                                    (##structure-ref
                                                     (##structure-ref
                                                      _hd8306_
                                                      '1
                                                      gx#module-import::t
                                                      '#f)
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    '#t)
                                                   '#!void)))))
                                      (let ((_fold-e8261_
                                             (lambda (_in8303_ _r8304_)
                                               (if (##structure-direct-instance-of?
                                                    _in8303_
                                                    'gx#module-import::t)
                                                   (cons _in8303_ _r8304_)
                                                   (if (##structure-direct-instance-of?
                                                        _in8303_
                                                        'gx#import-set::t)
                                                       (foldl cons
                                                              _r8304_
                                                              (##structure-ref
                                                               _in8303_
                                                               '3
                                                               gx#import-set::t
                                                               '#f))
                                                       _r8304_)))))
                                        ((letrec ((_lp8263_
                                                   (lambda (_rest8265_
                                                            _body8266_)
                                                     (let ((_rest82678275_
                                                            _rest8265_))
                                                       (let ((_E82708279_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _rest82678275_))))
                 (let ((_else82698285_
                        (lambda ()
                          (begin
                            (if (##structure-instance-of?
                                 _current-ctx8258_
                                 'gx#module-context::t)
                                (##structure-set!
                                 _current-ctx8258_
                                 (foldl _fold-e8261_
                                        (##structure-ref
                                         _current-ctx8258_
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        _body8266_)
                                 '8
                                 gx#module-context::t
                                 '#f)
                                '#!void)
                            (hash-for-each
                             (lambda (_ctx8283_ _g9863_)
                               (gx#eval-module _ctx8283_))
                             _deps8259_)
                            _body8266_))))
                   (let ((_K82718291_
                          (lambda (_rest8288_ _hd8289_)
                            (begin
                              (if (##structure-direct-instance-of?
                                   _hd8289_
                                   'gx#module-import::t)
                                  (_bind!8260_ _hd8289_)
                                  (if (##structure-direct-instance-of?
                                       _hd8289_
                                       'gx#import-set::t)
                                      (for-each
                                       _bind!8260_
                                       (##structure-ref
                                        _hd8289_
                                        '3
                                        gx#import-set::t
                                        '#f))
                                      (if (##structure-instance-of?
                                           _hd8289_
                                           'gx#module-context::t)
                                          '#!void
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Unexpected import"
                                           _stx8231_
                                           _hd8289_))))
                              (_lp8263_
                               _rest8288_
                               (cons _hd8289_ _body8266_))))))
                     (if (##pair? _rest82678275_)
                         (let ((_hd82728294_ (##car _rest82678275_))
                               (_tl82738296_ (##cdr _rest82678275_)))
                           (let ((_hd8299_ _hd82728294_))
                             (let ((_rest8301_ _tl82738296_))
                               (_K82718291_ _rest8301_ _hd8299_))))
                         (_else82698285_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _lp8263_)
                                         _rbody8256_
                                         '()))))))))
                         (let ((_expanded-import?8244_
                                (lambda (_e8248_)
                                  (let ((_$e8250_
                                         (##structure-direct-instance-of?
                                          _e8248_
                                          'gx#import-set::t)))
                                    (if _$e8250_
                                        _$e8250_
                                        (let ((_$e8253_
                                               (##structure-direct-instance-of?
                                                _e8248_
                                                'gx#module-import::t)))
                                          (if _$e8253_
                                              _$e8253_
                                              (##structure-instance-of?
                                               _e8248_
                                               'gx#module-context::t))))))))
                           (let ((_import-submodule8239_
                                  (lambda (_hd8504_ _K8505_ _rest8506_ _r8507_)
                                    (let ((_e85088515_ _hd8504_))
                                      (let ((_E85108519_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e85088515_))))
                                        (let ((_E85098533_
                                               (lambda ()
                                                 (if (gx#stx-pair? _e85088515_)
                                                     (let ((_e85118523_
                                                            (gx#syntax-e
                                                             _e85088515_)))
                                                       (let ((_hd85128526_
                                                              (##car _e85118523_))
                                                             (_tl85138528_
                                                              (##cdr _e85118523_)))
                                                         (let ((_spath8531_
                                                                _tl85138528_))
                                                           (if '#t
                                                               (_import18235_
                                                                (_import-spec-source8242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _spath8531_)
                        _K8505_
                        _rest8506_
                        _r8507_)
                       (_E85108519_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E85108519_)))))
                                          (let () (_E85098533_))))))))
                             (let ((_import-runtime8240_
                                    (lambda (_hd8471_
                                             _K8472_
                                             _rest8473_
                                             _r8474_)
                                      (let ((_e84758482_ _hd8471_))
                                        (let ((_E84778486_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e84758482_))))
                                          (let ((_E84768500_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e84758482_)
                                                       (let ((_e84788490_
                                                              (gx#syntax-e
                                                               _e84758482_)))
                                                         (let ((_hd84798493_
                                                                (##car _e84788490_))
                                                               (_tl84808495_
                                                                (##cdr _e84788490_)))
                                                           (let ((_spath8498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl84808495_))
                     (if '#t
                         (_K8472_ _rest8473_
                                  (cons (_import-spec-source8242_ _spath8498_)
                                        _r8474_))
                         (_E84778486_)))))
               (_E84778486_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E84768500_))))))))
                               (let ((_import-spec8241_
                                      (lambda (_hd8310_
                                               _K8311_
                                               _rest8312_
                                               _r8313_)
                                        (let ((_e83148331_ _hd8310_))
                                          (let ((_E83238335_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e83148331_))))
                                            (let ((_E83168445_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e83148331_)
                                                         (let ((_e83248339_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e83148331_)))
                   (let ((_hd83258342_ (##car _e83248339_))
                         (_tl83268344_ (##cdr _e83248339_)))
                     (if (gx#stx-pair? _tl83268344_)
                         (let ((_e83278347_ (gx#syntax-e _tl83268344_)))
                           (let ((_hd83288350_ (##car _e83278347_))
                                 (_tl83298352_ (##cdr _e83278347_)))
                             (let ((_path8355_ _hd83288350_))
                               (let ((_specs8357_ _tl83298352_))
                                 (if '#t
                                     (let ((_src-ctx8359_
                                            (_import-spec-source8242_
                                             _path8355_))
                                           (_exports8360_ (make-hash-table))
                                           (_specs8361_
                                            (gx#syntax->list _specs8357_)))
                                       (begin
                                         (for-each
                                          (lambda (_out8363_)
                                            (hash-put!
                                             _exports8360_
                                             (cons (##structure-ref
                                                    _out8363_
                                                    '3
                                                    gx#module-export::t
                                                    '#f)
                                                   (##structure-ref
                                                    _out8363_
                                                    '4
                                                    gx#module-export::t
                                                    '#f))
                                             _out8363_))
                                          (##structure-ref
                                           _src-ctx8359_
                                           '9
                                           gx#module-context::t
                                           '#f))
                                         (_K8311_ _rest8312_
                                                  (foldl (lambda (_spec8365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r8366_)
                   (let ((_e83678383_ _spec8365_))
                     (let ((_E83698387_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e83678383_))))
                       (let ((_E83688441_
                              (lambda ()
                                (if (gx#stx-pair? _e83678383_)
                                    (let ((_e83708391_
                                           (gx#syntax-e _e83678383_)))
                                      (let ((_hd83718394_ (##car _e83708391_))
                                            (_tl83728396_ (##cdr _e83708391_)))
                                        (let ((_phi8399_ _hd83718394_))
                                          (if (gx#stx-pair? _tl83728396_)
                                              (let ((_e83738401_
                                                     (gx#syntax-e
                                                      _tl83728396_)))
                                                (let ((_hd83748404_
                                                       (##car _e83738401_))
                                                      (_tl83758406_
                                                       (##cdr _e83738401_)))
                                                  (let ((_name8409_
                                                         _hd83748404_))
                                                    (if (gx#stx-pair?
                                                         _tl83758406_)
                                                        (let ((_e83768411_
                                                               (gx#syntax-e
                                                                _tl83758406_)))
                                                          (let ((_hd83778414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e83768411_))
                        (_tl83788416_ (##cdr _e83768411_)))
                    (let ((_src-phi8419_ _hd83778414_))
                      (if (gx#stx-pair? _tl83788416_)
                          (let ((_e83798421_ (gx#syntax-e _tl83788416_)))
                            (let ((_hd83808424_ (##car _e83798421_))
                                  (_tl83818426_ (##cdr _e83798421_)))
                              (let ((_src-name8429_ _hd83808424_))
                                (if (gx#stx-null? _tl83818426_)
                                    (if (if (gx#stx-fixnum? _src-phi8419_)
                                            (if (gx#identifier? _src-name8429_)
                                                (if (gx#stx-fixnum? _phi8399_)
                                                    (gx#identifier? _name8409_)
                                                    '#f)
                                                '#f)
                                            '#f)
                                        (let ((_src-phi8431_
                                               (gx#stx-e _src-phi8419_))
                                              (_src-name8432_
                                               (gx#core-identifier-key
                                                _src-name8429_))
                                              (_phi8433_ (gx#stx-e _phi8399_))
                                              (_name8434_
                                               (gx#core-identifier-key
                                                _name8409_)))
                                          (let ((_$e8436_
                                                 (hash-get
                                                  _exports8360_
                                                  (cons _src-phi8431_
                                                        _src-name8432_))))
                                            (if _$e8436_
                                                ((lambda (_out8439_)
                                                   (cons (gx#core-module-export->import
                                                          _out8439_
                                                          _name8434_
                                                          (fx- _phi8433_
                                                               _src-phi8431_))
                                                         _r8366_))
                                                 _$e8436_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; no matching export"
                                                 _stx8231_
                                                 _hd8310_))))
                                        (_E83698387_))
                                    (_E83698387_)))))
                          (_E83698387_)))))
                (_E83698387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E83698387_)))))
                                    (_E83698387_)))))
                         (let () (_E83688441_))))))
                 _r8313_
                 _specs8361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_E83238335_))))))
                         (_E83238335_))))
                 (_E83238335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_E83158467_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e83148331_)
                                                           (let ((_e83178449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e83148331_)))
                     (let ((_hd83188452_ (##car _e83178449_))
                           (_tl83198454_ (##cdr _e83178449_)))
                       (if (gx#stx-pair? _tl83198454_)
                           (let ((_e83208457_ (gx#syntax-e _tl83198454_)))
                             (let ((_hd83218460_ (##car _e83208457_))
                                   (_tl83228462_ (##cdr _e83208457_)))
                               (let ((_path8465_ _hd83218460_))
                                 (if (gx#stx-null? _tl83228462_)
                                     (if '#t
                                         (_K8311_ _rest8312_
                                                  (cons (_import-spec-source8242_
                                                         _path8465_)
                                                        _r8313_))
                                         (_E83168445_))
                                     (_E83168445_)))))
                           (_E83168445_))))
                   (_E83168445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E83158467_)))))))))
                                 (let ((_expand18234_
                                        (lambda (_hd8677_
                                                 _K8678_
                                                 _rest8679_
                                                 _r8680_)
                                          (if (gx#core-bound-module? _hd8677_)
                                              (_import18235_
                                               (gx#syntax-local-e _hd8677_)
                                               _K8678_
                                               _rest8679_
                                               _r8680_)
                                              (if (gx#core-library-module-path?
                                                   _hd8677_)
                                                  (_import18235_
                                                   (gx#import-module
                                                    (gx#core-resolve-library-module-path
                                                     _hd8677_))
                                                   _K8678_
                                                   _rest8679_
                                                   _r8680_)
                                                  (if (gx#stx-string? _hd8677_)
                                                      (_import18235_
                                                       (gx#import-module
                                                        (gx#core-resolve-module-path
                                                         _hd8677_
                                                         (gx#stx-source
                                                          _stx8231_)))
                                                       _K8678_
                                                       _rest8679_
                                                       _r8680_)
                                                      (if (##structure-instance-of?
                                                           (gx#stx-e _hd8677_)
                                                           'gx#module-context::t)
                                                          (_K8678_ _rest8679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-e _hd8677_) _r8680_))
                  (if (_import-spec?8236_ _hd8677_)
                      (_import-spec8241_ _hd8677_ _K8678_ _rest8679_ _r8680_)
                      (if (_import-submodule?8237_ _hd8677_)
                          (_import-submodule8239_
                           _hd8677_
                           _K8678_
                           _rest8679_
                           _r8680_)
                          (if (_import-runtime?8238_ _hd8677_)
                              (_import-runtime8240_
                               _hd8677_
                               _K8678_
                               _rest8679_
                               _r8680_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal import"
                               _stx8231_
                               _hd8677_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let ((_rbody8246_
                                          (gx#core-expand-import/export
                                           _stx8231_
                                           _expanded-import?8244_
                                           'apply-import-expander
                                           gx#current-import-expander-phi
                                           _expand18234_)))
                                     (if _internal-expand?8232_
                                         (reverse _rbody8246_)
                                         (gx#core-quote-syntax
                                          (gx#core-cons
                                           '%#import
                                           (_import!8243_ _rbody8246_))
                                          (gx#stx-source
                                           _stx8231_))))))))))))))))))
      (lambda _g9865_
        (let ((_g9864_ (length _g9865_)))
          (cond ((fx= _g9864_ 1)
                 (apply (lambda (_stx8685_)
                          (let ((_internal-expand?8687_ '#f))
                            (_opt-lambda82298682_
                             _stx8685_
                             _internal-expand?8687_)))
                        _g9865_))
                ((fx= _g9864_ 2)
                 (apply (lambda (_stx8689_ _internal-expand?8690_)
                          (_opt-lambda82298682_
                           _stx8689_
                           _internal-expand?8690_))
                        _g9865_))
                (else (error "No clause matching arguments" _g9865_)))))))
  (define gx#core-import-nested-module
    (lambda (_spath8158_ _where8159_)
      (let ((_e81608167_ _spath8158_))
        (let ((_E81628171_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81608167_))))
          (let ((_E81618226_
                 (lambda ()
                   (if (gx#stx-pair? _e81608167_)
                       (let ((_e81638175_ (gx#syntax-e _e81608167_)))
                         (let ((_hd81648178_ (##car _e81638175_))
                               (_tl81658180_ (##cdr _e81638175_)))
                           (let ((_origin8183_ _hd81648178_))
                             (let ((_sub8185_ _tl81658180_))
                               (if '#t
                                   (let ((_origin-ctx8187_
                                          (if (gx#stx-false? _origin8183_)
                                              (gx#current-expander-context)
                                              (gx#import-module
                                               _origin8183_))))
                                     ((letrec ((_lp8189_
                                                (lambda (_rest8191_ _ctx8192_)
                                                  (let ((_e81938200_
                                                         _rest8191_))
                                                    (let ((_E81958204_
                                                           (lambda ()
                                                             _ctx8192_)))
                                                      (let ((_E81948222_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e81938200_)
                           (let ((_e81968208_ (gx#syntax-e _e81938200_)))
                             (let ((_hd81978211_ (##car _e81968208_))
                                   (_tl81988213_ (##cdr _e81968208_)))
                               (let ((_id8216_ _hd81978211_))
                                 (let ((_rest8218_ _tl81988213_))
                                   (if '#t
                                       (let ((_bind8220_
                                              (gx#resolve-identifier
                                               _id8216_
                                               '0
                                               _ctx8192_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind8220_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind8220_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where8159_
                                                _spath8158_
                                                _id8216_))
                                           (_lp8189_
                                            _rest8218_
                                            (##structure-ref
                                             _bind8220_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E81958204_))))))
                           (_E81958204_)))))
                (let () (_E81948222_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp8189_)
                                      _sub8185_
                                      _origin-ctx8187_))
                                   (_E81628171_))))))
                       (_E81628171_)))))
            (let () (_E81618226_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd8156_)
      (gx#core-expand-import%
       (cons 'import-internal% (cons _hd8156_ '()))
       '#t)))
  (define gx#core-expand-export%
    (let ((_opt-lambda77388146_
           (lambda (_stx7740_ _internal-expand?7741_)
             (let ((_make-export7743_
                    (let ((_opt-lambda81028117_
                           (lambda (_bind8104_ _phi8105_ _ctx8106_ _name8107_)
                             (let ((_key8109_
                                    (##structure-ref
                                     _bind8104_
                                     '2
                                     gx#binding::t
                                     '#f)))
                               (let ((_export-key8111_
                                      (if _name8107_
                                          (gx#core-identifier-key _name8107_)
                                          _key8109_)))
                                 (let ()
                                   (##structure
                                    gx#module-export::t
                                    _ctx8106_
                                    _key8109_
                                    _phi8105_
                                    _export-key8111_
                                    (let ((_$e8114_
                                           (##structure-instance-of?
                                            _bind8104_
                                            'gx#extern-binding::t)))
                                      (if _$e8114_
                                          _$e8114_
                                          (##structure-direct-instance-of?
                                           _bind8104_
                                           'gx#import-binding::t))))))))))
                      (lambda _g9867_
                        (let ((_g9866_ (length _g9867_)))
                          (cond ((fx= _g9866_ 1)
                                 (apply (lambda (_bind8120_)
                                          (let ((_phi8122_
                                                 (gx#current-export-expander-phi)))
                                            (let ((_ctx8124_
                                                   (gx#current-expander-context)))
                                              (let ((_name8126_ '#f))
                                                (_opt-lambda81028117_
                                                 _bind8120_
                                                 _phi8122_
                                                 _ctx8124_
                                                 _name8126_)))))
                                        _g9867_))
                                ((fx= _g9866_ 2)
                                 (apply (lambda (_bind8128_ _phi8129_)
                                          (let ((_ctx8131_
                                                 (gx#current-expander-context)))
                                            (let ((_name8133_ '#f))
                                              (_opt-lambda81028117_
                                               _bind8128_
                                               _phi8129_
                                               _ctx8131_
                                               _name8133_))))
                                        _g9867_))
                                ((fx= _g9866_ 3)
                                 (apply (lambda (_bind8135_
                                                 _phi8136_
                                                 _ctx8137_)
                                          (let ((_name8139_ '#f))
                                            (_opt-lambda81028117_
                                             _bind8135_
                                             _phi8136_
                                             _ctx8137_
                                             _name8139_)))
                                        _g9867_))
                                ((fx= _g9866_ 4)
                                 (apply (lambda (_bind8141_
                                                 _phi8142_
                                                 _ctx8143_
                                                 _name8144_)
                                          (_opt-lambda81028117_
                                           _bind8141_
                                           _phi8142_
                                           _ctx8143_
                                           _name8144_))
                                        _g9867_))
                                (else
                                 (error "No clause matching arguments"
                                        _g9867_))))))))
               (let ((_export-imports7745_
                      (lambda (_src7766_ _r7767_)
                        (let ((_current-ctx7769_
                               (gx#current-expander-context)))
                          (let ((_current-phi7770_
                                 (gx#current-export-expander-phi)))
                            (let ((_import->export7771_
                                   (lambda (_in7779_)
                                     (let ((_in77807788_ _in7779_))
                                       (let ((_E77827792_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _in77807788_))))
                                         (let ((_K77837799_
                                                (lambda (_phi7795_
                                                         _key7796_
                                                         _out7797_)
                                                  (if (fx= _phi7795_
                                                           _current-phi7770_)
                                                      (if (eq? _src7766_
                                                               (##structure-ref
                                                                _out7797_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                          (##structure
                                                           gx#module-export::t
                                                           _current-ctx7769_
                                                           _key7796_
                                                           _phi7795_
                                                           _key7796_
                                                           '#t)
                                                          '#f)
                                                      '#f))))
                                           (if (direct-struct-instance?
                                                gx#module-import::t
                                                _in77807788_)
                                               (let ((_e77847802_
                                                      (##vector-ref
                                                       _in77807788_
                                                       '1)))
                                                 (let ((_out7805_ _e77847802_))
                                                   (let ((_e77857807_
                                                          (##vector-ref
                                                           _in77807788_
                                                           '2)))
                                                     (let ((_key7810_
                                                            _e77857807_))
                                                       (let ((_e77867812_
                                                              (##vector-ref
                                                               _in77807788_
                                                               '3)))
                                                         (let ((_phi7815_
                                                                _e77867812_))
                                                           (_K77837799_
                                                            _phi7815_
                                                            _key7810_
                                                            _out7805_)))))))
                                               (_E77827792_))))))))
                              (let ((_fold-e7772_
                                     (lambda (_in7774_ _r7775_)
                                       (let ((_out7777_
                                              (_import->export7771_ _in7774_)))
                                         (if _out7777_
                                             (cons _out7777_ _r7775_)
                                             _r7775_)))))
                                (cons (##structure
                                       gx#export-set::t
                                       _src7766_
                                       _current-phi7770_
                                       (foldl _fold-e7772_
                                              '()
                                              (##structure-ref
                                               _current-ctx7769_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                      _r7767_))))))))
                 (let ((_export!7746_
                        (lambda (_rbody7756_)
                          (let ((_current-ctx7758_
                                 (gx#current-expander-context)))
                            (let ((_fold-e7759_
                                   (lambda (_out7763_ _r7764_)
                                     (if (##structure-direct-instance-of?
                                          _out7763_
                                          'gx#module-export::t)
                                         (cons _out7763_ _r7764_)
                                         (if (##structure-direct-instance-of?
                                              _out7763_
                                              'gx#export-set::t)
                                             (foldl cons
                                                    _r7764_
                                                    (##structure-ref
                                                     _out7763_
                                                     '3
                                                     gx#export-set::t
                                                     '#f))
                                             _r7764_)))))
                              (let ((_body7761_ (reverse _rbody7756_)))
                                (begin
                                  (##structure-set!
                                   _current-ctx7758_
                                   (foldl _fold-e7759_
                                          (##structure-ref
                                           _current-ctx7758_
                                           '9
                                           gx#module-context::t
                                           '#f)
                                          _body7761_)
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body7761_)))))))
                   (let ((_expanded-export?7747_
                          (lambda (_e7751_)
                            (let ((_$e7753_
                                   (##structure-direct-instance-of?
                                    _e7751_
                                    'gx#module-export::t)))
                              (if _$e7753_
                                  _$e7753_
                                  (##structure-direct-instance-of?
                                   _e7751_
                                   'gx#export-set::t))))))
                     (let ((_expand17744_
                            (lambda (_hd7817_ _K7818_ _rest7819_ _r7820_)
                              (let ((_e78217853_ _hd7817_))
                                (let ((_E78487857_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; illegal export"
                                          _stx7740_
                                          _hd7817_))))
                                  (let ((_E78387936_
                                         (lambda ()
                                           (if (gx#stx-pair? _e78217853_)
                                               (let ((_e78497861_
                                                      (gx#syntax-e
                                                       _e78217853_)))
                                                 (let ((_hd78507864_
                                                        (##car _e78497861_))
                                                       (_tl78517866_
                                                        (##cdr _e78497861_)))
                                                   (if (eq? (gx#stx-e
                                                             _hd78507864_)
                                                            'import:)
                                                       (let ((_in7869_
                                                              _tl78517866_))
                                                         (if (gx#stx-list?
                                                              _in7869_)
                                                             ((letrec ((_lp7871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_in-rest7873_ _r7874_)
                                  (let ((_e78757882_ _in-rest7873_))
                                    (let ((_E78777886_
                                           (lambda ()
                                             (_K7818_ _rest7819_ _r7874_))))
                                      (let ((_E78767932_
                                             (lambda ()
                                               (if (gx#stx-pair? _e78757882_)
                                                   (let ((_e78787890_
                                                          (gx#syntax-e
                                                           _e78757882_)))
                                                     (let ((_hd78797893_
                                                            (##car _e78787890_))
                                                           (_tl78807895_
                                                            (##cdr _e78787890_)))
                                                       (let ((_hd7898_
                                                              _hd78797893_))
                                                         (let ((_in-rest7900_
                                                                _tl78807895_))
                                                           (if '#t
                                                               (let ((_src7930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (gx#core-bound-module? _hd7898_)
                                  (gx#syntax-local-e _hd7898_)
                                  (if (gx#core-library-module-path? _hd7898_)
                                      (gx#import-module
                                       (gx#core-resolve-library-module-path
                                        _hd7898_))
                                      (if (gx#stx-string? _hd7898_)
                                          (gx#import-module
                                           (gx#core-resolve-module-path
                                            _hd7898_
                                            (gx#stx-source _stx7740_)))
                                          (let ((_e79017908_ _hd7898_))
                                            (let ((_E79037912_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; illegal re-export"
                                                      _stx7740_
                                                      _hd7898_))))
                                              (let ((_E79027926_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e79017908_)
                                                           (let ((_e79047916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e79017908_)))
                     (let ((_hd79057919_ (##car _e79047916_))
                           (_tl79067921_ (##cdr _e79047916_)))
                       (if (eq? (gx#stx-e _hd79057919_) 'in:)
                           (let ((_spath7924_ _tl79067921_))
                             (if '#t
                                 (gx#core-import-nested-module
                                  _spath7924_
                                  _stx7740_)
                                 (_E79037912_)))
                           (_E79037912_))))
                   (_E79037912_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E79027926_))))))))))
                         (_lp7871_
                          _in-rest7900_
                          (_export-imports7745_ _src7930_ _r7874_)))
                       (_E78777886_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E78777886_)))))
                                        (let () (_E78767932_))))))))
                        _lp7871_)
                      _in7869_
                      _r7820_)
                     (_E78487857_)))
               (_E78487857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E78487857_)))))
                                    (let ((_E78257975_
                                           (lambda ()
                                             (if (gx#stx-pair? _e78217853_)
                                                 (let ((_e78397940_
                                                        (gx#syntax-e
                                                         _e78217853_)))
                                                   (let ((_hd78407943_
                                                          (##car _e78397940_))
                                                         (_tl78417945_
                                                          (##cdr _e78397940_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd78407943_)
                                                              'rename:)
                                                         (if (gx#stx-pair?
                                                              _tl78417945_)
                                                             (let ((_e78427948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl78417945_)))
                       (let ((_hd78437951_ (##car _e78427948_))
                             (_tl78447953_ (##cdr _e78427948_)))
                         (let ((_id7956_ _hd78437951_))
                           (if (gx#stx-pair? _tl78447953_)
                               (let ((_e78457958_ (gx#syntax-e _tl78447953_)))
                                 (let ((_hd78467961_ (##car _e78457958_))
                                       (_tl78477963_ (##cdr _e78457958_)))
                                   (let ((_name7966_ _hd78467961_))
                                     (if (gx#stx-null? _tl78477963_)
                                         (if '#t
                                             (let ((_phi7968_
                                                    (gx#current-export-expander-phi)))
                                               (let ((_$e7970_
                                                      (gx#core-resolve-identifier
                                                       _id7956_
                                                       _phi7968_)))
                                                 (if _$e7970_
                                                     ((lambda (_bind7973_)
                                                        (_K7818_ _rest7819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (_make-export7743_
                                _bind7973_
                                _phi7968_
                                (gx#current-expander-context)
                                _name7966_)
                               _r7820_)))
              _$e7970_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Reference to unbound identifier"
                                                      _stx7740_
                                                      _hd7817_
                                                      _id7956_))))
                                             (_E78387936_))
                                         (_E78387936_)))))
                               (_E78387936_)))))
                     (_E78387936_))
                 (_E78387936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E78387936_)))))
                                      (let ((_E78248024_
                                             (lambda ()
                                               (if (gx#stx-pair? _e78217853_)
                                                   (let ((_e78267979_
                                                          (gx#syntax-e
                                                           _e78217853_)))
                                                     (let ((_hd78277982_
                                                            (##car _e78267979_))
                                                           (_tl78287984_
                                                            (##cdr _e78267979_)))
                                                       (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd78277982_)
                        'spec:)
                   (if (gx#stx-pair? _tl78287984_)
                       (let ((_e78297987_ (gx#syntax-e _tl78287984_)))
                         (let ((_hd78307990_ (##car _e78297987_))
                               (_tl78317992_ (##cdr _e78297987_)))
                           (let ((_phi7995_ _hd78307990_))
                             (if (gx#stx-pair? _tl78317992_)
                                 (let ((_e78327997_
                                        (gx#syntax-e _tl78317992_)))
                                   (let ((_hd78338000_ (##car _e78327997_))
                                         (_tl78348002_ (##cdr _e78327997_)))
                                     (let ((_id8005_ _hd78338000_))
                                       (if (gx#stx-pair? _tl78348002_)
                                           (let ((_e78358007_
                                                  (gx#syntax-e _tl78348002_)))
                                             (let ((_hd78368010_
                                                    (##car _e78358007_))
                                                   (_tl78378012_
                                                    (##cdr _e78358007_)))
                                               (let ((_name8015_ _hd78368010_))
                                                 (if (gx#stx-null?
                                                      _tl78378012_)
                                                     (if (if (gx#stx-fixnum?
                                                              _phi7995_)
                                                             (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id8005_)
                         (gx#identifier? _name8015_)
                         '#f)
                     '#f)
                 (let ((_phi8017_ (gx#stx-e _phi7995_)))
                   (let ((_$e8019_
                          (gx#core-resolve-identifier _id8005_ _phi8017_)))
                     (if _$e8019_
                         ((lambda (_bind8022_)
                            (_K7818_ _rest7819_
                                     (cons (_make-export7743_
                                            _bind8022_
                                            _phi8017_
                                            (gx#current-expander-context)
                                            _name8015_)
                                           _r7820_)))
                          _$e8019_)
                         (gx#raise-syntax-error
                          '#f
                          '"Reference to unbound identifier"
                          _stx7740_
                          _hd7817_
                          _id8005_))))
                 (_E78257975_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E78257975_)))))
                                           (_E78257975_)))))
                                 (_E78257975_)))))
                       (_E78257975_))
                   (_E78257975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E78257975_)))))
                                        (let ((_E78238035_
                                               (lambda ()
                                                 (let ((_id8028_ _e78217853_))
                                                   (if (gx#identifier?
                                                        _id8028_)
                                                       (let ((_$e8030_
                                                              (gx#core-resolve-identifier
                                                               _id8028_
                                                               (gx#current-export-expander-phi))))
                                                         (if _$e8030_
                                                             ((lambda (_bind8033_)
                                                                (_K7818_ _rest7819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (_make-export7743_ _bind8033_)
                                       _r7820_)))
                      _$e8030_)
                     (gx#raise-syntax-error
                      '#f
                      '"Reference to unbound identifier"
                      _stx7740_
                      _hd7817_)))
               (_E78248024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_E78228099_
                                                 (lambda ()
                                                   (if (eq? (gx#stx-e
                                                             _e78217853_)
                                                            '#t)
                                                       (if '#t
                                                           (let ((_current-ctx8039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#current-expander-context)))
                     (let ((_current-phi8041_
                            (gx#current-export-expander-phi)))
                       (let ((_phi-ctx8043_
                              (gx#core-context-shift
                               _current-ctx8039_
                               _current-phi8041_)))
                         (let ((_phi-bind8045_
                                (hash->list
                                 (##structure-ref
                                  _phi-ctx8043_
                                  '2
                                  gx#expander-context::t
                                  '#f))))
                           (let ()
                             ((letrec ((_lp8048_
                                        (lambda (_bind-rest8050_ _set8051_)
                                          (let ((_bind-rest80528062_
                                                 _bind-rest8050_))
                                            (let ((_E80558066_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest80528062_))))
                                              (let ((_else80548070_
                                                     (lambda ()
                                                       (_K7818_ _rest7819_
                                                                (cons (##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               gx#export-set::t
                               '#f
                               _current-phi8041_
                               _set8051_)
                              _r7820_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K80568080_
                                                       (lambda (_bind-rest8073_
                                                                _bind8074_
                                                                _key8075_)
                                                         (if (let ((_$e8077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-direct-instance-of?
                             _bind8074_
                             'gx#import-binding::t)))
                       (if _$e8077_
                           _$e8077_
                           (gx#private-feature-binding? _bind8074_)))
                     (_lp8048_ _bind-rest8073_ _set8051_)
                     (_lp8048_
                      _bind-rest8073_
                      (cons (_make-export7743_
                             _bind8074_
                             _current-phi8041_
                             _current-ctx8039_)
                            _set8051_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _bind-rest80528062_)
                                                      (let ((_hd80578083_
                                                             (##car _bind-rest80528062_))
                                                            (_tl80588085_
                                                             (##cdr _bind-rest80528062_)))
                                                        (if (##pair? _hd80578083_)
                                                            (let ((_hd80598088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##car _hd80578083_))
                          (_tl80608090_ (##cdr _hd80578083_)))
                      (let ((_key8093_ _hd80598088_))
                        (let ((_bind8095_ _tl80608090_))
                          (let ((_bind-rest8097_ _tl80588085_))
                            (_K80568080_
                             _bind-rest8097_
                             _bind8095_
                             _key8093_)))))
                    (_else80548070_)))
              (_else80548070_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp8048_)
                              _phi-bind8045_
                              '()))))))
                   (_E78238035_))
               (_E78238035_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E78228099_))))))))))))
                       (let ((_rbody7749_
                              (gx#core-expand-import/export
                               _stx7740_
                               gx#module-export?
                               'apply-export-expander
                               gx#current-export-expander-phi
                               _expand17744_)))
                         (if _internal-expand?7741_
                             (reverse _rbody7749_)
                             (gx#core-quote-syntax
                              (gx#core-cons
                               '%#export
                               (_export!7746_ _rbody7749_))
                              (gx#stx-source _stx7740_))))))))))))
      (lambda _g9869_
        (let ((_g9868_ (length _g9869_)))
          (cond ((fx= _g9868_ 1)
                 (apply (lambda (_stx8149_)
                          (let ((_internal-expand?8151_ '#f))
                            (_opt-lambda77388146_
                             _stx8149_
                             _internal-expand?8151_)))
                        _g9869_))
                ((fx= _g9868_ 2)
                 (apply (lambda (_stx8153_ _internal-expand?8154_)
                          (_opt-lambda77388146_
                           _stx8153_
                           _internal-expand?8154_))
                        _g9869_))
                (else (error "No clause matching arguments" _g9869_)))))))
  (define gx#core-expand-export-source
    (lambda (_hd7737_)
      (gx#core-expand-export% (cons 'export-macro% (cons _hd7737_ '())) '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx7707_)
      (let ((_e77087715_ _stx7707_))
        (let ((_E77107719_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77087715_))))
          (let ((_E77097733_
                 (lambda ()
                   (if (gx#stx-pair? _e77087715_)
                       (let ((_e77117723_ (gx#syntax-e _e77087715_)))
                         (let ((_hd77127726_ (##car _e77117723_))
                               (_tl77137728_ (##cdr _e77117723_)))
                           (let ((_body7731_ _tl77137728_))
                             (if (gx#identifier-list? _body7731_)
                                 (begin
                                   (gx#stx-for-each
                                    gx#core-bind-feature!
                                    _body7731_)
                                   (gx#core-quote-syntax
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map
                                      gx#core-quote-syntax
                                      _body7731_))
                                    (gx#stx-source _stx7707_)))
                                 (_E77107719_)))))
                       (_E77107719_)))))
            (let () (_E77097733_)))))))
  (define gx#core-bind-feature!
    (let ((_opt-lambda76717678_
           (lambda (_id7673_ _private?7674_ _phi7675_ _ctx7676_)
             (gx#core-bind-syntax!
              _id7673_
              ((if _private?7674_
                   gx#make-private-feature-expander
                   gx#make-feature-expander)
               (gx#stx-e _id7673_))
              _private?7674_
              _phi7675_
              _ctx7676_))))
      (lambda _g9871_
        (let ((_g9870_ (length _g9871_)))
          (cond ((fx= _g9870_ 1)
                 (apply (lambda (_id7681_)
                          (let ((_private?7683_ '#f))
                            (let ((_phi7685_ (gx#current-expander-phi)))
                              (let ((_ctx7687_ (gx#current-expander-context)))
                                (_opt-lambda76717678_
                                 _id7681_
                                 _private?7683_
                                 _phi7685_
                                 _ctx7687_)))))
                        _g9871_))
                ((fx= _g9870_ 2)
                 (apply (lambda (_id7689_ _private?7690_)
                          (let ((_phi7692_ (gx#current-expander-phi)))
                            (let ((_ctx7694_ (gx#current-expander-context)))
                              (_opt-lambda76717678_
                               _id7689_
                               _private?7690_
                               _phi7692_
                               _ctx7694_))))
                        _g9871_))
                ((fx= _g9870_ 3)
                 (apply (lambda (_id7696_ _private?7697_ _phi7698_)
                          (let ((_ctx7700_ (gx#current-expander-context)))
                            (_opt-lambda76717678_
                             _id7696_
                             _private?7697_
                             _phi7698_
                             _ctx7700_)))
                        _g9871_))
                ((fx= _g9870_ 4)
                 (apply (lambda (_id7702_ _private?7703_ _phi7704_ _ctx7705_)
                          (_opt-lambda76717678_
                           _id7702_
                           _private?7703_
                           _phi7704_
                           _ctx7705_))
                        _g9871_))
                (else (error "No clause matching arguments" _g9871_))))))))
