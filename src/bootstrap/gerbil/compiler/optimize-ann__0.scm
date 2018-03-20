(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 100))
  (define gxc#&optmize-annotated
    (make-promise
     (lambda ()
       (let ((_tbl40001_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl40001_ (force gxc#&basic-xform))
           (table-set! _tbl40001_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl40001_)))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx39994_ . _args39996_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39994_ _args39996_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (make-promise
     (lambda ()
       (let ((_tbl39991_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39991_ (force gxc#&generate-runtime))
           (table-set! _tbl39991_ '%#quote-syntax identity)
           _tbl39991_)))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx39984_ . _args39986_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39984_ _args39986_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (make-promise
     (lambda ()
       (let ((_tbl39981_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl39981_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl39981_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl39981_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl39981_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl39981_ '%#call gxc#push-match-vars-call%)
           _tbl39981_)))))
  (define gxc#apply-push-match-vars
    (lambda (_stx39974_ . _args39976_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39974_ _args39976_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#current-annotation-optimizer (make-parameter '()))
  (define gxc#optimize-annotation%
    (lambda (_stx39892_)
      (let* ((___stx4001740018_ _stx39892_)
             (_g3989539912_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4001740018_))))
        (let ((___kont4001940020_
               (lambda (_L39948_ _L39949_)
                 (let ((_ann39965_ (gx#stx-e _L39949_)))
                   (call-with-parameters
                    (lambda ()
                      (let ((_$e39968_ _ann39965_))
                        (if (eq? '@match _$e39968_)
                            (begin
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _L39948_))
                            (if (eq? '@syntax-case _$e39968_)
                                (begin
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case _L39948_))
                                (gxc#compile-e _L39948_)))))
                    gxc#current-annotation-optimizer
                    (cons _ann39965_ (gxc#current-annotation-optimizer))))))
              (___kont4002140022_
               (lambda () (gxc#xform-begin-annotation% _stx39892_))))
          (let ((___match4004240043_
                 (lambda (_e3989939924_
                          _hd3990039927_
                          _tl3990139929_
                          _e3990239932_
                          _hd3990339935_
                          _tl3990439937_
                          _e3990539940_
                          _hd3990639943_
                          _tl3990739945_)
                   (let ((_L39948_ _hd3990639943_) (_L39949_ _hd3990339935_))
                     (if (gx#identifier? _L39949_)
                         (___kont4001940020_ _L39948_ _L39949_)
                         (___kont4002140022_))))))
            (if (gx#stx-pair? ___stx4001740018_)
                (let ((_e3989939924_ (gx#stx-e ___stx4001740018_)))
                  (let ((_tl3990139929_ (##cdr _e3989939924_))
                        (_hd3990039927_ (##car _e3989939924_)))
                    (if (gx#stx-pair? _tl3990139929_)
                        (let ((_e3990239932_ (gx#stx-e _tl3990139929_)))
                          (let ((_tl3990439937_ (##cdr _e3990239932_))
                                (_hd3990339935_ (##car _e3990239932_)))
                            (if (gx#stx-pair? _tl3990439937_)
                                (let ((_e3990539940_
                                       (gx#stx-e _tl3990439937_)))
                                  (let ((_tl3990739945_ (##cdr _e3990539940_))
                                        (_hd3990639943_ (##car _e3990539940_)))
                                    (if (gx#stx-null? _tl3990739945_)
                                        (___match4004240043_
                                         _e3989939924_
                                         _hd3990039927_
                                         _tl3990139929_
                                         _e3990239932_
                                         _hd3990339935_
                                         _tl3990439937_
                                         _e3990539940_
                                         _hd3990639943_
                                         _tl3990739945_)
                                        (___kont4002140022_))))
                                (___kont4002140022_))))
                        (___kont4002140022_))))
                (___kont4002140022_)))))))
  (define gxc#optimize-match
    (lambda (_stx39191_)
      (let* ((_g3919339223_
              (lambda (_g3919439220_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3919439220_)))
             (_g3919239889_
              (lambda (_g3919439226_)
                (if (gx#stx-pair? _g3919439226_)
                    (let ((_e3919839228_ (gx#stx-e _g3919439226_)))
                      (let ((_hd3919939231_ (##car _e3919839228_))
                            (_tl3920039233_ (##cdr _e3919839228_)))
                        (if (gx#identifier? _hd3919939231_)
                            (if (gx#stx-eq? '%#let-values _hd3919939231_)
                                (if (gx#stx-pair? _tl3920039233_)
                                    (let ((_e3920139236_
                                           (gx#stx-e _tl3920039233_)))
                                      (let ((_hd3920239239_
                                             (##car _e3920139236_))
                                            (_tl3920339241_
                                             (##cdr _e3920139236_)))
                                        (if (gx#stx-pair? _hd3920239239_)
                                            (let ((_e3920439244_
                                                   (gx#stx-e _hd3920239239_)))
                                              (let ((_hd3920539247_
                                                     (##car _e3920439244_))
                                                    (_tl3920639249_
                                                     (##cdr _e3920439244_)))
                                                (if (gx#stx-pair?
                                                     _hd3920539247_)
                                                    (let ((_e3920739252_
                                                           (gx#stx-e
                                                            _hd3920539247_)))
                                                      (let ((_hd3920839255_
                                                             (##car _e3920739252_))
                                                            (_tl3920939257_
                                                             (##cdr _e3920739252_)))
                                                        (if (gx#stx-pair?
                                                             _hd3920839255_)
                                                            (let ((_e3921039260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3920839255_)))
                      (let ((_hd3921139263_ (##car _e3921039260_))
                            (_tl3921239265_ (##cdr _e3921039260_)))
                        (if (gx#stx-null? _tl3921239265_)
                            (if (gx#stx-pair? _tl3920939257_)
                                (let ((_e3921339268_
                                       (gx#stx-e _tl3920939257_)))
                                  (let ((_hd3921439271_ (##car _e3921339268_))
                                        (_tl3921539273_ (##cdr _e3921339268_)))
                                    (if (gx#stx-null? _tl3921539273_)
                                        (if (gx#stx-null? _tl3920639249_)
                                            (if (gx#stx-pair? _tl3920339241_)
                                                (let ((_e3921639276_
                                                       (gx#stx-e
                                                        _tl3920339241_)))
                                                  (let ((_hd3921739279_
                                                         (##car _e3921639276_))
                                                        (_tl3921839281_
                                                         (##cdr _e3921639276_)))
                                                    (if (gx#stx-null?
                                                         _tl3921839281_)
                                                        ((lambda (_L39284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L39285_
                          _L39286_)
                   (let _lp39310_ ((_body39312_ _L39284_)
                                   (_negation39313_ (cons _L39286_ _L39285_))
                                   (_clauses39314_ '())
                                   (_konts39315_ '()))
                     (let* ((___stx4022540226_ _body39312_)
                            (_g3931839358_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4022540226_))))
                       (let ((___kont4022740228_
                              (lambda (_L39688_)
                                (let* ((___stx4016140162_ _L39688_)
                                       (_g3970239732_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4016140162_))))
                                  (let ((___kont4016340164_
                                         (lambda (_L39828_ _L39829_ _L39830_)
                                           (if (null? _clauses39314_)
                                               (let* ((_negation3985439861_
                                                       _negation39313_)
                                                      (_E3985639865_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation3985439861_)))
                                                      (_K3985739871_
                                                       (lambda (_negate39868_
                                                                _E39869_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E39869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate39868_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L39830_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L39829_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L39828_ '())))
                                    '())))
                  _stx39191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation3985439861_)
                                                     (let ((_hd3985839874_
                                                            (##car _negation3985439861_))
                                                           (_tl3985939876_
                                                            (##cdr _negation3985439861_)))
                                                       (let* ((_E39879_
                                                               _hd3985839874_)
                                                              (_negate39881_
                                                               _tl3985939876_))
                                                         (_K3985739871_
                                                          _negate39881_
                                                          _E39879_)))
                                                     (_E3985639865_)))
                                               (gxc#optimize-match-body
                                                _stx39191_
                                                _negation39313_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L39828_ '()))))
              _clauses39314_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L39830_
                                                            (gxc#compile-e
                                                             _L39829_))
                                                      _konts39315_)))))
                                        (___kont4016540166_
                                         (lambda ()
                                           (let* ((_negation3973839745_
                                                   _negation39313_)
                                                  (_E3974039749_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation3973839745_)))
                                                  (_K3974139755_
                                                   (lambda (_negate39752_
                                                            _E39753_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E39753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate39752_ '()))
                                '())
                          (cons _L39688_ '())))
              _stx39191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation3973839745_)
                                                 (let ((_hd3974239758_
                                                        (##car _negation3973839745_))
                                                       (_tl3974339760_
                                                        (##cdr _negation3973839745_)))
                                                   (let* ((_E39763_
                                                           _hd3974239758_)
                                                          (_negate39765_
                                                           _tl3974339760_))
                                                     (_K3974139755_
                                                      _negate39765_
                                                      _E39763_)))
                                                 (_E3974039749_))))))
                                    (let ((_g3970139767_
                                           (lambda ()
                                             (if (null? _clauses39314_)
                                                 (___kont4016540166_)
                                                 (_g3970239732_)))))
                                      (if (gx#stx-pair? ___stx4016140162_)
                                          (let ((_e3970739772_
                                                 (gx#stx-e ___stx4016140162_)))
                                            (let ((_tl3970939777_
                                                   (##cdr _e3970739772_))
                                                  (_hd3970839775_
                                                   (##car _e3970739772_)))
                                              (if (gx#identifier?
                                                   _hd3970839775_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd3970839775_)
                                                      (if (gx#stx-pair?
                                                           _tl3970939777_)
                                                          (let ((_e3971039780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3970939777_)))
                    (let ((_tl3971239785_ (##cdr _e3971039780_))
                          (_hd3971139783_ (##car _e3971039780_)))
                      (if (gx#stx-pair? _hd3971139783_)
                          (let ((_e3971339788_ (gx#stx-e _hd3971139783_)))
                            (let ((_tl3971539793_ (##cdr _e3971339788_))
                                  (_hd3971439791_ (##car _e3971339788_)))
                              (if (gx#stx-pair? _hd3971439791_)
                                  (let ((_e3971639796_
                                         (gx#stx-e _hd3971439791_)))
                                    (let ((_tl3971839801_
                                           (##cdr _e3971639796_))
                                          (_hd3971739799_
                                           (##car _e3971639796_)))
                                      (if (gx#stx-pair? _hd3971739799_)
                                          (let ((_e3971939804_
                                                 (gx#stx-e _hd3971739799_)))
                                            (let ((_tl3972139809_
                                                   (##cdr _e3971939804_))
                                                  (_hd3972039807_
                                                   (##car _e3971939804_)))
                                              (if (gx#stx-null? _tl3972139809_)
                                                  (if (gx#stx-pair?
                                                       _tl3971839801_)
                                                      (let ((_e3972239812_
                                                             (gx#stx-e
                                                              _tl3971839801_)))
                                                        (let ((_tl3972439817_
                                                               (##cdr _e3972239812_))
                                                              (_hd3972339815_
                                                               (##car _e3972239812_)))
                                                          (if (gx#stx-null?
                                                               _tl3972439817_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3971539793_)
                          (if (gx#stx-pair? _tl3971239785_)
                              (let ((_e3972539820_ (gx#stx-e _tl3971239785_)))
                                (let ((_tl3972739825_ (##cdr _e3972539820_))
                                      (_hd3972639823_ (##car _e3972539820_)))
                                  (if (gx#stx-null? _tl3972739825_)
                                      (___kont4016340164_
                                       _hd3972639823_
                                       _hd3972339815_
                                       _hd3972039807_)
                                      (_g3970139767_))))
                              (_g3970139767_))
                          (_g3970139767_))
                      (_g3970139767_))))
              (_g3970139767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3970139767_))))
                                          (_g3970139767_))))
                                  (_g3970139767_))))
                          (_g3970139767_))))
                  (_g3970139767_))
              (_g3970139767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3970139767_))))
                                          (_g3970139767_)))))))
                             (___kont4022940230_
                              (lambda (_L39419_ _L39420_ _L39421_)
                                (let* ((___stx4004540046_ _L39420_)
                                       (_g3944839497_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4004540046_))))
                                  (let ((___kont4004740048_
                                         (lambda (_L39625_ _L39626_ _L39627_)
                                           (_lp39310_
                                            _L39419_
                                            _negation39313_
                                            (cons (cons _L39421_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L39625_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses39314_)
                                            (cons (cons _L39627_
                                                        (gxc#compile-e
                                                         _L39626_))
                                                  _konts39315_))))
                                        (___kont4004940050_
                                         (lambda (_L39526_)
                                           (_lp39310_
                                            _L39419_
                                            (cons _L39421_
                                                  (gxc#compile-e _L39526_))
                                            _clauses39314_
                                            _konts39315_))))
                                    (if (gx#stx-pair? ___stx4004540046_)
                                        (let ((_e3945339545_
                                               (gx#stx-e ___stx4004540046_)))
                                          (let ((_tl3945539550_
                                                 (##cdr _e3945339545_))
                                                (_hd3945439548_
                                                 (##car _e3945339545_)))
                                            (if (gx#identifier? _hd3945439548_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3945439548_)
                                                    (if (gx#stx-pair?
                                                         _tl3945539550_)
                                                        (let ((_e3945639553_
                                                               (gx#stx-e
                                                                _tl3945539550_)))
                                                          (let ((_tl3945839558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3945639553_))
                        (_hd3945739556_ (##car _e3945639553_)))
                    (if (gx#stx-null? _hd3945739556_)
                        (if (gx#stx-pair? _tl3945839558_)
                            (let ((_e3945939561_ (gx#stx-e _tl3945839558_)))
                              (let ((_tl3946139566_ (##cdr _e3945939561_))
                                    (_hd3946039564_ (##car _e3945939561_)))
                                (if (gx#stx-pair? _hd3946039564_)
                                    (let ((_e3946239569_
                                           (gx#stx-e _hd3946039564_)))
                                      (let ((_tl3946439574_
                                             (##cdr _e3946239569_))
                                            (_hd3946339572_
                                             (##car _e3946239569_)))
                                        (if (gx#identifier? _hd3946339572_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3946339572_)
                                                (if (gx#stx-pair?
                                                     _tl3946439574_)
                                                    (let ((_e3946539577_
                                                           (gx#stx-e
                                                            _tl3946439574_)))
                                                      (let ((_tl3946739582_
                                                             (##cdr _e3946539577_))
                                                            (_hd3946639580_
                                                             (##car _e3946539577_)))
                                                        (if (gx#stx-pair?
                                                             _hd3946639580_)
                                                            (let ((_e3946839585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3946639580_)))
                      (let ((_tl3947039590_ (##cdr _e3946839585_))
                            (_hd3946939588_ (##car _e3946839585_)))
                        (if (gx#stx-pair? _hd3946939588_)
                            (let ((_e3947139593_ (gx#stx-e _hd3946939588_)))
                              (let ((_tl3947339598_ (##cdr _e3947139593_))
                                    (_hd3947239596_ (##car _e3947139593_)))
                                (if (gx#stx-pair? _hd3947239596_)
                                    (let ((_e3947439601_
                                           (gx#stx-e _hd3947239596_)))
                                      (let ((_tl3947639606_
                                             (##cdr _e3947439601_))
                                            (_hd3947539604_
                                             (##car _e3947439601_)))
                                        (if (gx#stx-null? _tl3947639606_)
                                            (if (gx#stx-pair? _tl3947339598_)
                                                (let ((_e3947739609_
                                                       (gx#stx-e
                                                        _tl3947339598_)))
                                                  (let ((_tl3947939614_
                                                         (##cdr _e3947739609_))
                                                        (_hd3947839612_
                                                         (##car _e3947739609_)))
                                                    (if (gx#stx-null?
                                                         _tl3947939614_)
                                                        (if (gx#stx-null?
                                                             _tl3947039590_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3946739582_)
                        (let ((_e3948039617_ (gx#stx-e _tl3946739582_)))
                          (let ((_tl3948239622_ (##cdr _e3948039617_))
                                (_hd3948139620_ (##car _e3948039617_)))
                            (if (gx#stx-null? _tl3948239622_)
                                (if (gx#stx-null? _tl3946139566_)
                                    (___kont4004740048_
                                     _hd3948139620_
                                     _hd3947839612_
                                     _hd3947539604_)
                                    (_g3944839497_))
                                (_g3944839497_))))
                        (_g3944839497_))
                    (_g3944839497_))
                (_g3944839497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3944839497_))
                                            (_g3944839497_))))
                                    (_g3944839497_))))
                            (_g3944839497_))))
                    (_g3944839497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3944839497_))
                                                (_g3944839497_))
                                            (_g3944839497_))))
                                    (_g3944839497_))))
                            (_g3944839497_))
                        (_g3944839497_))))
                (_g3944839497_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd3945439548_)
                                                        (if (gx#stx-pair?
                                                             _tl3945539550_)
                                                            (let ((_e3948739510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3945539550_)))
                      (let ((_tl3948939515_ (##cdr _e3948739510_))
                            (_hd3948839513_ (##car _e3948739510_)))
                        (if (gx#identifier? _hd3948839513_)
                            (if (gx#stx-eq? '@match-else _hd3948839513_)
                                (if (gx#stx-pair? _tl3948939515_)
                                    (let ((_e3949039518_
                                           (gx#stx-e _tl3948939515_)))
                                      (let ((_tl3949239523_
                                             (##cdr _e3949039518_))
                                            (_hd3949139521_
                                             (##car _e3949039518_)))
                                        (if (gx#stx-null? _tl3949239523_)
                                            (___kont4004940050_ _hd3949139521_)
                                            (_g3944839497_))))
                                    (_g3944839497_))
                                (_g3944839497_))
                            (_g3944839497_))))
                    (_g3944839497_))
                (_g3944839497_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3944839497_))))
                                        (_g3944839497_)))))))
                         (if (gx#stx-pair? ___stx4022540226_)
                             (let ((_e3932139664_
                                    (gx#stx-e ___stx4022540226_)))
                               (let ((_tl3932339669_ (##cdr _e3932139664_))
                                     (_hd3932239667_ (##car _e3932139664_)))
                                 (if (gx#identifier? _hd3932239667_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd3932239667_)
                                         (if (gx#stx-pair? _tl3932339669_)
                                             (let ((_e3932439672_
                                                    (gx#stx-e _tl3932339669_)))
                                               (let ((_tl3932639677_
                                                      (##cdr _e3932439672_))
                                                     (_hd3932539675_
                                                      (##car _e3932439672_)))
                                                 (if (gx#identifier?
                                                      _hd3932539675_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd3932539675_)
                                                         (if (gx#stx-pair?
                                                              _tl3932639677_)
                                                             (let ((_e3932739680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3932639677_)))
                       (let ((_tl3932939685_ (##cdr _e3932739680_))
                             (_hd3932839683_ (##car _e3932739680_)))
                         (if (gx#stx-null? _tl3932939685_)
                             (___kont4022740228_ _hd3932839683_)
                             (_g3931839358_))))
                     (_g3931839358_))
                 (_g3931839358_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3931839358_))))
                                             (_g3931839358_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd3932239667_)
                                             (if (gx#stx-pair? _tl3932339669_)
                                                 (let ((_e3933639371_
                                                        (gx#stx-e
                                                         _tl3932339669_)))
                                                   (let ((_tl3933839376_
                                                          (##cdr _e3933639371_))
                                                         (_hd3933739374_
                                                          (##car _e3933639371_)))
                                                     (if (gx#stx-pair?
                                                          _hd3933739374_)
                                                         (let ((_e3933939379_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3933739374_)))
                   (let ((_tl3934139384_ (##cdr _e3933939379_))
                         (_hd3934039382_ (##car _e3933939379_)))
                     (if (gx#stx-pair? _hd3934039382_)
                         (let ((_e3934239387_ (gx#stx-e _hd3934039382_)))
                           (let ((_tl3934439392_ (##cdr _e3934239387_))
                                 (_hd3934339390_ (##car _e3934239387_)))
                             (if (gx#stx-pair? _hd3934339390_)
                                 (let ((_e3934539395_
                                        (gx#stx-e _hd3934339390_)))
                                   (let ((_tl3934739400_ (##cdr _e3934539395_))
                                         (_hd3934639398_
                                          (##car _e3934539395_)))
                                     (if (gx#stx-null? _tl3934739400_)
                                         (if (gx#stx-pair? _tl3934439392_)
                                             (let ((_e3934839403_
                                                    (gx#stx-e _tl3934439392_)))
                                               (let ((_tl3935039408_
                                                      (##cdr _e3934839403_))
                                                     (_hd3934939406_
                                                      (##car _e3934839403_)))
                                                 (if (gx#stx-null?
                                                      _tl3935039408_)
                                                     (if (gx#stx-null?
                                                          _tl3934139384_)
                                                         (if (gx#stx-pair?
                                                              _tl3933839376_)
                                                             (let ((_e3935139411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3933839376_)))
                       (let ((_tl3935339416_ (##cdr _e3935139411_))
                             (_hd3935239414_ (##car _e3935139411_)))
                         (if (gx#stx-null? _tl3935339416_)
                             (___kont4022940230_
                              _hd3935239414_
                              _hd3934939406_
                              _hd3934639398_)
                             (_g3931839358_))))
                     (_g3931839358_))
                 (_g3931839358_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3931839358_))))
                                             (_g3931839358_))
                                         (_g3931839358_))))
                                 (_g3931839358_))))
                         (_g3931839358_))))
                 (_g3931839358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3931839358_))
                                             (_g3931839358_)))
                                     (_g3931839358_))))
                             (_g3931839358_))))))
                 _hd3921739279_
                 _hd3921439271_
                 _hd3921139263_)
                (_g3919339223_ _g3919439226_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3919339223_ _g3919439226_))
                                            (_g3919339223_ _g3919439226_))
                                        (_g3919339223_ _g3919439226_))))
                                (_g3919339223_ _g3919439226_))
                            (_g3919339223_ _g3919439226_))))
                    (_g3919339223_ _g3919439226_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3919339223_
                                                     _g3919439226_))))
                                            (_g3919339223_ _g3919439226_))))
                                    (_g3919339223_ _g3919439226_))
                                (_g3919339223_ _g3919439226_))
                            (_g3919339223_ _g3919439226_))))
                    (_g3919339223_ _g3919439226_)))))
        (_g3919239889_ _stx39191_))))
  (define gxc#optimize-match-body
    (lambda (_stx38892_ _negation38893_ _clauses38894_ _konts38895_)
      (letrec ((_push-variables38897_
                (lambda (_clause39144_ _kont39145_)
                  (let ((_clause3914639157_ _clause39144_)
                        (_kont3914739159_ _kont39145_))
                    (let* ((_E3914939163_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3914639157_
                                     _kont3914739159_)))
                           (_K3915039179_
                            (lambda (_clause-lambda39166_ _clause-name39167_)
                              (let ((_K3915139171_
                                     (lambda (_K39169_)
                                       (cons _clause-name39167_
                                             (gxc#apply-push-match-vars
                                              _clause-lambda39166_
                                              '()
                                              _K39169_)))))
                                (if (##pair? _kont3914739159_)
                                    (let* ((_hd3915239174_
                                            (##car _kont3914739159_))
                                           (_K39177_ _hd3915239174_))
                                      (_K3915139171_ _K39177_))
                                    (_E3914939163_))))))
                      (if (##pair? _clause3914639157_)
                          (let ((_hd3915439182_ (##car _clause3914639157_))
                                (_tl3915539184_ (##cdr _clause3914639157_)))
                            (let* ((_clause-name39187_ _hd3915439182_)
                                   (_clause-lambda39189_ _tl3915539184_))
                              (_K3915039179_
                               _clause-lambda39189_
                               _clause-name39187_)))
                          (_E3914939163_))))))
               (_start-match38898_
                (lambda (_kont39078_)
                  (let* ((_g3908039096_
                          (lambda (_g3908139093_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3908139093_)))
                         (_g3907939141_
                          (lambda (_g3908139099_)
                            (if (gx#stx-pair? _g3908139099_)
                                (let ((_e3908339101_ (gx#stx-e _g3908139099_)))
                                  (let ((_hd3908439104_ (##car _e3908339101_))
                                        (_tl3908539106_ (##cdr _e3908339101_)))
                                    (if (gx#identifier? _hd3908439104_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3908439104_)
                                            (if (gx#stx-pair? _tl3908539106_)
                                                (let ((_e3908639109_
                                                       (gx#stx-e
                                                        _tl3908539106_)))
                                                  (let ((_hd3908739112_
                                                         (##car _e3908639109_))
                                                        (_tl3908839114_
                                                         (##cdr _e3908639109_)))
                                                    (if (gx#stx-null?
                                                         _hd3908739112_)
                                                        (if (gx#stx-pair?
                                                             _tl3908839114_)
                                                            (let ((_e3908939117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3908839114_)))
                      (let ((_hd3909039120_ (##car _e3908939117_))
                            (_tl3909139122_ (##cdr _e3908939117_)))
                        (if (gx#stx-null? _tl3909139122_)
                            ((lambda (_L39125_) _L39125_) _hd3909039120_)
                            (_g3908039096_ _g3908139099_))))
                    (_g3908039096_ _g3908139099_))
                (_g3908039096_ _g3908139099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3908039096_ _g3908139099_))
                                            (_g3908039096_ _g3908139099_))
                                        (_g3908039096_ _g3908139099_))))
                                (_g3908039096_ _g3908139099_)))))
                    (_g3907939141_ _kont39078_))))
               (_match-body38899_
                (lambda (_blocks38975_)
                  (let* ((_blocks3897638985_ _blocks38975_)
                         (_E3897838989_
                          (lambda ()
                            (error '"No clause matching" _blocks3897638985_)))
                         (_K3897939061_
                          (lambda (_rest38992_ _start38993_)
                            (let _lp38995_ ((_rest38997_ _rest38992_)
                                            (_body38998_
                                             (_start-match38898_
                                              _start38993_)))
                              (let* ((_rest3899939007_ _rest38997_)
                                     (_else3900139015_ (lambda () _body38998_))
                                     (_K3900339049_
                                      (lambda (_rest39018_ _block39019_)
                                        (let* ((_block3902039027_ _block39019_)
                                               (_E3902239031_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block3902039027_)))
                                               (_K3902339037_
                                                (lambda (_kont39034_ _K39035_)
                                                  (_lp38995_
                                                   _rest39018_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K39035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont39034_ '()))
                             '())
                       (cons _body38998_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block3902039027_)
                                              (let ((_hd3902439040_
                                                     (##car _block3902039027_))
                                                    (_tl3902539042_
                                                     (##cdr _block3902039027_)))
                                                (let* ((_K39045_
                                                        _hd3902439040_)
                                                       (_kont39047_
                                                        _tl3902539042_))
                                                  (_K3902339037_
                                                   _kont39047_
                                                   _K39045_)))
                                              (_E3902239031_))))))
                                (if (##pair? _rest3899939007_)
                                    (let ((_hd3900439052_
                                           (##car _rest3899939007_))
                                          (_tl3900539054_
                                           (##cdr _rest3899939007_)))
                                      (let* ((_block39057_ _hd3900439052_)
                                             (_rest39059_ _tl3900539054_))
                                        (_K3900339049_
                                         _rest39059_
                                         _block39057_)))
                                    (_else3900139015_)))))))
                    (if (##pair? _blocks3897638985_)
                        (let ((_hd3898039064_ (##car _blocks3897638985_))
                              (_tl3898139066_ (##cdr _blocks3897638985_)))
                          (if (##pair? _hd3898039064_)
                              (let ((_hd3898239069_ (##car _hd3898039064_))
                                    (_tl3898339071_ (##cdr _hd3898039064_)))
                                (if (##eq? _hd3898239069_ '#f)
                                    (let* ((_start39074_ _tl3898339071_)
                                           (_rest39076_ _tl3898139066_))
                                      (_K3897939061_ _rest39076_ _start39074_))
                                    (_E3897838989_)))
                              (_E3897838989_)))
                        (_E3897838989_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses38902_
                   (map _push-variables38897_ _clauses38894_ _konts38895_))
                  (_blocks38904_
                   (gxc#optimize-match-basic-blocks _clauses38902_))
                  (_blocks38906_
                   (gxc#optimize-match-fold-basic-blocks _blocks38904_))
                  (_body38908_ (_match-body38899_ _blocks38906_))
                  (_bind38942_
                   (map (lambda (_e3890938911_)
                          (let* ((_g3891338920_ _e3890938911_)
                                 (_E3891538924_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g3891338920_)))
                                 (_K3891638930_
                                  (lambda (_kont38927_ _K38928_)
                                    (cons (cons _K38928_ '())
                                          (cons _kont38927_ '())))))
                            (if (##pair? _g3891338920_)
                                (let ((_hd3891738933_ (##car _g3891338920_))
                                      (_tl3891838935_ (##cdr _g3891338920_)))
                                  (let* ((_K38938_ _hd3891738933_)
                                         (_kont38940_ _tl3891838935_))
                                    (_K3891638930_ _kont38940_ _K38938_)))
                                (_E3891538924_))))
                        _konts38895_))
                  (_negate38972_
                   (let* ((_negation3894338950_ _negation38893_)
                          (_E3894538954_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation3894338950_)))
                          (_K3894638960_
                           (lambda (_kont38957_ _K38958_)
                             (cons (cons _K38958_ '())
                                   (cons _kont38957_ '())))))
                     (if (##pair? _negation3894338950_)
                         (let ((_hd3894738963_ (##car _negation3894338950_))
                               (_tl3894838965_ (##cdr _negation3894338950_)))
                           (let* ((_K38968_ _hd3894738963_)
                                  (_kont38970_ _tl3894838965_))
                             (_K3894638960_ _kont38970_ _K38968_)))
                         (_E3894538954_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate38972_ '())
                          (cons (cons '%#let-values
                                      (cons _bind38942_
                                            (cons _body38908_ '())))
                                '())))
              _stx38892_)))
         gx#current-expander-context
         (let ((__obj43090 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj43090) __obj43090))))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses38852_)
      (let _lp38854_ ((_rest38856_ _clauses38852_) (_blocks38857_ '()))
        (let* ((_rest3885838866_ _rest38856_)
               (_else3886038874_ (lambda () (reverse _blocks38857_)))
               (_K3886238880_
                (lambda (_rest38877_ _clause38878_)
                  (_lp38854_
                   _rest38877_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause38878_
                    _blocks38857_)))))
          (if (##pair? _rest3885838866_)
              (let ((_hd3886338883_ (##car _rest3885838866_))
                    (_tl3886438885_ (##cdr _rest3885838866_)))
                (let* ((_clause38888_ _hd3886338883_)
                       (_rest38890_ _tl3886438885_))
                  (_K3886238880_ _rest38890_ _clause38888_)))
              (_else3886038874_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause38196_ _blocks38197_)
      (letrec ((_bind->args38199_
                (lambda (_bind38847_)
                  (foldl1 (lambda (_b38849_ _r38850_)
                            (cons (cons '%#ref (cons (car _b38849_) '()))
                                  _r38850_))
                          '()
                          _bind38847_)))
               (_create-block38200_
                (lambda (_body38796_ _let-bind38797_ _bind38798_ _assert38799_)
                  (let* ((_id38801_ (make-symbol (gensym '__match)))
                         (_id38803_ (gx#core-quote-syntax__0 _id38801_))
                         (_g43092_ (gx#core-bind-runtime!__0 _id38803_))
                         (_block38806_
                          (cons _id38803_
                                (cons _body38796_
                                      (cons _bind38798_
                                            (cons _assert38799_ '())))))
                         (_continue38808_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id38803_ '()))
                                      (_bind->args38199_ _bind38798_))))
                         (_continue38844_
                          (if (null? _let-bind38797_)
                              _continue38808_
                              (let ((_locals38842_
                                     (map (lambda (_e3880938811_)
                                            (let* ((_g3881338820_
                                                    _e3880938811_)
                                                   (_E3881538824_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g3881338820_)))
                                                   (_K3881638830_
                                                    (lambda (_expr38827_
                                                             _id38828_)
                                                      (cons (cons _id38828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr38827_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g3881338820_)
                                                  (let ((_hd3881738833_
                                                         (##car _g3881338820_))
                                                        (_tl3881838835_
                                                         (##cdr _g3881338820_)))
                                                    (let* ((_id38838_
                                                            _hd3881738833_)
                                                           (_expr38840_
                                                            _tl3881838835_))
                                                      (_K3881638830_
                                                       _expr38840_
                                                       _id38838_)))
                                                  (_E3881538824_))))
                                          _let-bind38797_)))
                                (cons '%#let-values
                                      (cons _locals38842_
                                            (cons _continue38808_ '())))))))
                    (values _continue38844_ _block38806_))))
               (_basic-block38201_
                (lambda (_body38382_ _bind38383_ _assert38384_)
                  (let* ((___stx4033340334_ _body38382_)
                         (_g3838938473_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4033340334_))))
                    (let ((___kont4033540336_
                           (lambda (_L38732_ _L38733_ _L38734_)
                             (let ((_g43093_
                                    (_create-block38200_
                                     _L38733_
                                     '()
                                     _bind38383_
                                     (cons (cons _L38734_ '#t)
                                           _assert38384_))))
                               (begin
                                 (let ((_g43094_
                                        (if (##values? _g43093_)
                                            (##vector-length _g43093_)
                                            1)))
                                   (if (not (##fx= _g43094_ 2))
                                       (error "Context expects 2 values"
                                              _g43094_)))
                                 (let ((_k-continue38752_
                                        (##vector-ref _g43093_ 0))
                                       (_k-block38753_
                                        (##vector-ref _g43093_ 1)))
                                   (let* ((___stx4031540316_ _L38732_)
                                          (_g3875638765_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4031540316_))))
                                     (let ((___kont4031740318_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L38734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue38752_ (cons _L38732_ '()))))
              (cons _k-block38753_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4031940320_
                                            (lambda ()
                                              (let ((_g43095_
                                                     (_create-block38200_
                                                      _L38732_
                                                      '()
                                                      _bind38383_
                                                      (cons (cons _L38734_ '#f)
                                                            _assert38384_))))
                                                (begin
                                                  (let ((_g43096_
                                                         (if (##values?
                                                              _g43095_)
                                                             (##vector-length
                                                              _g43095_)
                                                             1)))
                                                    (if (not (##fx= _g43096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g43096_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue38772_
                                                         (##vector-ref
                                                          _g43095_
                                                          0))
                                                        (_e-block38773_
                                                         (##vector-ref
                                                          _g43095_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L38734_
                                (cons _k-continue38752_
                                      (cons _e-continue38772_ '()))))
                    (cons _k-block38753_ (cons _e-block38773_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx4031540316_)
                                           (let ((_e3875838780_
                                                  (gx#stx-e
                                                   ___stx4031540316_)))
                                             (let ((_tl3876038785_
                                                    (##cdr _e3875838780_))
                                                   (_hd3875938783_
                                                    (##car _e3875838780_)))
                                               (if (gx#identifier?
                                                    _hd3875938783_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd3875938783_)
                                                       (___kont4031740318_)
                                                       (___kont4031940320_))
                                                   (___kont4031940320_))))
                                           (___kont4031940320_)))))))))
                          (___kont4033740338_
                           (lambda () (values _body38382_ '())))
                          (___kont4034140342_
                           (lambda (_L38561_ _L38562_ _L38563_)
                             (let* ((_let-bind38598_
                                     (map cons
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3858338586_
                                                             _g3858438588_)
                                                      (cons _g3858338586_
                                                            _g3858438588_))
                                                    '()
                                                    _L38563_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3859038593_
                                                             _g3859138595_)
                                                      (cons _g3859038593_
                                                            _g3859138595_))
                                                    '()
                                                    _L38562_))))
                                    (_g43097_
                                     (_create-block38200_
                                      _L38561_
                                      _let-bind38598_
                                      (foldl1 cons _bind38383_ _let-bind38598_)
                                      _assert38384_)))
                               (begin
                                 (let ((_g43098_
                                        (if (##values? _g43097_)
                                            (##vector-length _g43097_)
                                            1)))
                                   (if (not (##fx= _g43098_ 2))
                                       (error "Context expects 2 values"
                                              _g43098_)))
                                 (let ((_continue38600_
                                        (##vector-ref _g43097_ 0))
                                       (_block38601_
                                        (##vector-ref _g43097_ 1)))
                                   (let ()
                                     (values _continue38600_
                                             (cons _block38601_ '()))))))))
                          (___kont4034540346_
                           (lambda () (values _body38382_ '()))))
                      (let* ((___match4042440425_
                              (lambda (_e3844038485_
                                       _hd3844138488_
                                       _tl3844238490_
                                       _e3844338493_
                                       _hd3844438496_
                                       _tl3844538498_
                                       ___splice4034340344_
                                       _target3844638501_
                                       _tl3844838503_)
                                (letrec ((_loop3844938506_
                                          (lambda (_hd3844738509_
                                                   _expr3845338511_
                                                   _id3845438513_)
                                            (if (gx#stx-pair? _hd3844738509_)
                                                (let ((_e3845038516_
                                                       (gx#stx-e
                                                        _hd3844738509_)))
                                                  (let ((_lp-tl3845238521_
                                                         (##cdr _e3845038516_))
                                                        (_lp-hd3845138519_
                                                         (##car _e3845038516_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3845138519_)
                                                        (let ((_e3845738524_
                                                               (gx#stx-e
                                                                _lp-hd3845138519_)))
                                                          (let ((_tl3845938529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3845738524_))
                        (_hd3845838527_ (##car _e3845738524_)))
                    (if (gx#stx-pair? _hd3845838527_)
                        (let ((_e3846038532_ (gx#stx-e _hd3845838527_)))
                          (let ((_tl3846238537_ (##cdr _e3846038532_))
                                (_hd3846138535_ (##car _e3846038532_)))
                            (if (gx#stx-null? _tl3846238537_)
                                (if (gx#stx-pair? _tl3845938529_)
                                    (let ((_e3846338540_
                                           (gx#stx-e _tl3845938529_)))
                                      (let ((_tl3846538545_
                                             (##cdr _e3846338540_))
                                            (_hd3846438543_
                                             (##car _e3846338540_)))
                                        (if (gx#stx-null? _tl3846538545_)
                                            (_loop3844938506_
                                             _lp-tl3845238521_
                                             (cons _hd3846438543_
                                                   _expr3845338511_)
                                             (cons _hd3846138535_
                                                   _id3845438513_))
                                            (___kont4034540346_))))
                                    (___kont4034540346_))
                                (___kont4034540346_))))
                        (___kont4034540346_))))
                (___kont4034540346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id3845638550_
                                                       (reverse _id3845438513_))
                                                      (_expr3845538548_
                                                       (reverse _expr3845338511_)))
                                                  (if (gx#stx-pair?
                                                       _tl3844538498_)
                                                      (let ((_e3846638553_
                                                             (gx#stx-e
                                                              _tl3844538498_)))
                                                        (let ((_tl3846838558_
                                                               (##cdr _e3846638553_))
                                                              (_hd3846738556_
                                                               (##car _e3846638553_)))
                                                          (if (gx#stx-null?
                                                               _tl3846838558_)
                                                              (___kont4034140342_
                                                               _hd3846738556_
                                                               _expr3845538548_
                                                               _id3845638550_)
                                                              (___kont4034540346_))))
                                                      (___kont4034540346_)))))))
                                  (_loop3844938506_
                                   _target3844638501_
                                   '()
                                   '()))))
                             (___match4040040401_
                              (lambda (_e3840638609_
                                       _hd3840738612_
                                       _tl3840838614_
                                       _e3840938617_
                                       _hd3841038620_
                                       _tl3841138622_
                                       ___splice4033940340_
                                       _target3841238625_
                                       _tl3841438627_)
                                (letrec ((_loop3841538630_
                                          (lambda (_hd3841338633_)
                                            (if (gx#stx-pair? _hd3841338633_)
                                                (let ((_e3841638636_
                                                       (gx#stx-e
                                                        _hd3841338633_)))
                                                  (let ((_lp-tl3841838641_
                                                         (##cdr _e3841638636_))
                                                        (_lp-hd3841738639_
                                                         (##car _e3841638636_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3841738639_)
                                                        (let ((_e3841938644_
                                                               (gx#stx-e
                                                                _lp-hd3841738639_)))
                                                          (let ((_tl3842138649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3841938644_))
                        (_hd3842038647_ (##car _e3841938644_)))
                    (if (gx#stx-pair? _hd3842038647_)
                        (let ((_e3842238652_ (gx#stx-e _hd3842038647_)))
                          (let ((_tl3842438657_ (##cdr _e3842238652_))
                                (_hd3842338655_ (##car _e3842238652_)))
                            (if (gx#stx-null? _tl3842438657_)
                                (if (gx#stx-pair? _tl3842138649_)
                                    (let ((_e3842538660_
                                           (gx#stx-e _tl3842138649_)))
                                      (let ((_tl3842738665_
                                             (##cdr _e3842538660_))
                                            (_hd3842638663_
                                             (##car _e3842538660_)))
                                        (if (gx#stx-pair? _hd3842638663_)
                                            (let ((_e3842838668_
                                                   (gx#stx-e _hd3842638663_)))
                                              (let ((_tl3843038673_
                                                     (##cdr _e3842838668_))
                                                    (_hd3842938671_
                                                     (##car _e3842838668_)))
                                                (if (gx#identifier?
                                                     _hd3842938671_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3842938671_)
                                                        (if (gx#stx-pair?
                                                             _tl3843038673_)
                                                            (let ((_e3843138676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3843038673_)))
                      (let ((_tl3843338681_ (##cdr _e3843138676_))
                            (_hd3843238679_ (##car _e3843138676_)))
                        (if (gx#stx-null? _tl3843338681_)
                            (if (gx#stx-null? _tl3842738665_)
                                (_loop3841538630_ _lp-tl3841838641_)
                                (___match4042440425_
                                 _e3840638609_
                                 _hd3840738612_
                                 _tl3840838614_
                                 _e3840938617_
                                 _hd3841038620_
                                 _tl3841138622_
                                 ___splice4033940340_
                                 _target3841238625_
                                 _tl3841438627_))
                            (___match4042440425_
                             _e3840638609_
                             _hd3840738612_
                             _tl3840838614_
                             _e3840938617_
                             _hd3841038620_
                             _tl3841138622_
                             ___splice4033940340_
                             _target3841238625_
                             _tl3841438627_))))
                    (___match4042440425_
                     _e3840638609_
                     _hd3840738612_
                     _tl3840838614_
                     _e3840938617_
                     _hd3841038620_
                     _tl3841138622_
                     ___splice4033940340_
                     _target3841238625_
                     _tl3841438627_))
                (___match4042440425_
                 _e3840638609_
                 _hd3840738612_
                 _tl3840838614_
                 _e3840938617_
                 _hd3841038620_
                 _tl3841138622_
                 ___splice4033940340_
                 _target3841238625_
                 _tl3841438627_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4042440425_
                                                     _e3840638609_
                                                     _hd3840738612_
                                                     _tl3840838614_
                                                     _e3840938617_
                                                     _hd3841038620_
                                                     _tl3841138622_
                                                     ___splice4033940340_
                                                     _target3841238625_
                                                     _tl3841438627_))))
                                            (___match4042440425_
                                             _e3840638609_
                                             _hd3840738612_
                                             _tl3840838614_
                                             _e3840938617_
                                             _hd3841038620_
                                             _tl3841138622_
                                             ___splice4033940340_
                                             _target3841238625_
                                             _tl3841438627_))))
                                    (___match4042440425_
                                     _e3840638609_
                                     _hd3840738612_
                                     _tl3840838614_
                                     _e3840938617_
                                     _hd3841038620_
                                     _tl3841138622_
                                     ___splice4033940340_
                                     _target3841238625_
                                     _tl3841438627_))
                                (___match4042440425_
                                 _e3840638609_
                                 _hd3840738612_
                                 _tl3840838614_
                                 _e3840938617_
                                 _hd3841038620_
                                 _tl3841138622_
                                 ___splice4033940340_
                                 _target3841238625_
                                 _tl3841438627_))))
                        (___match4042440425_
                         _e3840638609_
                         _hd3840738612_
                         _tl3840838614_
                         _e3840938617_
                         _hd3841038620_
                         _tl3841138622_
                         ___splice4033940340_
                         _target3841238625_
                         _tl3841438627_))))
                (___match4042440425_
                 _e3840638609_
                 _hd3840738612_
                 _tl3840838614_
                 _e3840938617_
                 _hd3841038620_
                 _tl3841138622_
                 ___splice4033940340_
                 _target3841238625_
                 _tl3841438627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl3841138622_)
                                                      (let ((_e3843438685_
                                                             (gx#stx-e
                                                              _tl3841138622_)))
                                                        (let ((_tl3843638690_
                                                               (##cdr _e3843438685_))
                                                              (_hd3843538688_
                                                               (##car _e3843438685_)))
                                                          (if (gx#stx-null?
                                                               _tl3843638690_)
                                                              (___kont4033740338_)
                                                              (___match4042440425_
                                                               _e3840638609_
                                                               _hd3840738612_
                                                               _tl3840838614_
                                                               _e3840938617_
                                                               _hd3841038620_
                                                               _tl3841138622_
                                                               ___splice4033940340_
                                                               _target3841238625_
                                                               _tl3841438627_))))
                                                      (___match4042440425_
                                                       _e3840638609_
                                                       _hd3840738612_
                                                       _tl3840838614_
                                                       _e3840938617_
                                                       _hd3841038620_
                                                       _tl3841138622_
                                                       ___splice4033940340_
                                                       _target3841238625_
                                                       _tl3841438627_)))))))
                                  (_loop3841538630_ _target3841238625_)))))
                        (if (gx#stx-pair? ___stx4033340334_)
                            (let ((_e3839438700_ (gx#stx-e ___stx4033340334_)))
                              (let ((_tl3839638705_ (##cdr _e3839438700_))
                                    (_hd3839538703_ (##car _e3839438700_)))
                                (if (gx#identifier? _hd3839538703_)
                                    (if (gx#stx-eq? '%#if _hd3839538703_)
                                        (if (gx#stx-pair? _tl3839638705_)
                                            (let ((_e3839738708_
                                                   (gx#stx-e _tl3839638705_)))
                                              (let ((_tl3839938713_
                                                     (##cdr _e3839738708_))
                                                    (_hd3839838711_
                                                     (##car _e3839738708_)))
                                                (if (gx#stx-pair?
                                                     _tl3839938713_)
                                                    (let ((_e3840038716_
                                                           (gx#stx-e
                                                            _tl3839938713_)))
                                                      (let ((_tl3840238721_
                                                             (##cdr _e3840038716_))
                                                            (_hd3840138719_
                                                             (##car _e3840038716_)))
                                                        (if (gx#stx-pair?
                                                             _tl3840238721_)
                                                            (let ((_e3840338724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3840238721_)))
                      (let ((_tl3840538729_ (##cdr _e3840338724_))
                            (_hd3840438727_ (##car _e3840338724_)))
                        (if (gx#stx-null? _tl3840538729_)
                            (___kont4033540336_
                             _hd3840438727_
                             _hd3840138719_
                             _hd3839838711_)
                            (___kont4034540346_))))
                    (___kont4034540346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4034540346_))))
                                            (___kont4034540346_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3839538703_)
                                            (if (gx#stx-pair? _tl3839638705_)
                                                (let ((_e3840938617_
                                                       (gx#stx-e
                                                        _tl3839638705_)))
                                                  (let ((_tl3841138622_
                                                         (##cdr _e3840938617_))
                                                        (_hd3841038620_
                                                         (##car _e3840938617_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3841038620_)
                                                        (let ((___splice4033940340_
                                                               (gx#syntax-split-splice
                                                                _hd3841038620_
                                                                '0)))
                                                          (let ((_tl3841438627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice4033940340_ '1))
                        (_target3841238625_
                         (##vector-ref ___splice4033940340_ '0)))
                    (if (gx#stx-null? _tl3841438627_)
                        (___match4040040401_
                         _e3839438700_
                         _hd3839538703_
                         _tl3839638705_
                         _e3840938617_
                         _hd3841038620_
                         _tl3841138622_
                         ___splice4033940340_
                         _target3841238625_
                         _tl3841438627_)
                        (___kont4034540346_))))
                (___kont4034540346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4034540346_))
                                            (___kont4034540346_)))
                                    (___kont4034540346_))))
                            (___kont4034540346_)))))))
               (_fold-blocks38202_
                (lambda (_rest38301_ _blocks38302_)
                  (let* ((_rest3830338320_ _rest38301_)
                         (_E3830638324_
                          (lambda ()
                            (error '"No clause matching" _rest3830338320_))))
                    (let ((_K3830838344_
                           (lambda (_rest38335_
                                    _assert38336_
                                    _bind38337_
                                    _body38338_
                                    _name38339_)
                             (let ((_g43099_
                                    (_basic-block38201_
                                     _body38338_
                                     _bind38337_
                                     _assert38336_)))
                               (begin
                                 (let ((_g43100_
                                        (if (##values? _g43099_)
                                            (##vector-length _g43099_)
                                            1)))
                                   (if (not (##fx= _g43100_ 2))
                                       (error "Context expects 2 values"
                                              _g43100_)))
                                 (let ((_body38341_ (##vector-ref _g43099_ 0))
                                       (_body-blocks38342_
                                        (##vector-ref _g43099_ 1)))
                                   (_fold-blocks38202_
                                    (foldl1 cons
                                            _rest38335_
                                            _body-blocks38342_)
                                    (cons (cons _name38339_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind38337_))
                                (cons _body38341_ '())))
                    (cons _assert38336_ (cons _bind38337_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks38302_)))))))
                          (_K3830738329_ (lambda () _blocks38302_)))
                      (let ((_try-match3830538332_
                             (lambda ()
                               (if (##null? _rest3830338320_)
                                   (_K3830738329_)
                                   (_E3830638324_)))))
                        (if (##pair? _rest3830338320_)
                            (let ((_tl3831038349_ (##cdr _rest3830338320_))
                                  (_hd3830938347_ (##car _rest3830338320_)))
                              (if (##pair? _hd3830938347_)
                                  (let ((_tl3831238354_ (##cdr _hd3830938347_))
                                        (_hd3831138352_
                                         (##car _hd3830938347_)))
                                    (if (##pair? _tl3831238354_)
                                        (let ((_tl3831438361_
                                               (##cdr _tl3831238354_))
                                              (_hd3831338359_
                                               (##car _tl3831238354_)))
                                          (if (##pair? _tl3831438361_)
                                              (let ((_tl3831638368_
                                                     (##cdr _tl3831438361_))
                                                    (_hd3831538366_
                                                     (##car _tl3831438361_)))
                                                (if (##pair? _tl3831638368_)
                                                    (let ((_tl3831838375_
                                                           (##cdr _tl3831638368_))
                                                          (_hd3831738373_
                                                           (##car _tl3831638368_)))
                                                      (if (##null? _tl3831838375_)
                                                          (let ((_name38357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3831138352_)
                        (_body38364_ _hd3831338359_)
                        (_bind38371_ _hd3831538366_)
                        (_assert38378_ _hd3831738373_)
                        (_rest38380_ _tl3831038349_))
                    (_K3830838344_
                     _rest38380_
                     _assert38378_
                     _bind38371_
                     _body38364_
                     _name38357_))
                  (_E3830638324_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3830638324_)))
                                              (_E3830638324_)))
                                        (_E3830638324_)))
                                  (_E3830638324_)))
                            (_try-match3830538332_))))))))
        (let* ((_clause3820338210_ _clause38196_)
               (_E3820538214_
                (lambda () (error '"No clause matching" _clause3820338210_)))
               (_K3820638289_
                (lambda (_body38217_ _name38218_)
                  (let* ((_g3822038236_
                          (lambda (_g3822138233_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3822138233_)))
                         (_g3821938286_
                          (lambda (_g3822138239_)
                            (if (gx#stx-pair? _g3822138239_)
                                (let ((_e3822338241_ (gx#stx-e _g3822138239_)))
                                  (let ((_hd3822438244_ (##car _e3822338241_))
                                        (_tl3822538246_ (##cdr _e3822338241_)))
                                    (if (gx#identifier? _hd3822438244_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3822438244_)
                                            (if (gx#stx-pair? _tl3822538246_)
                                                (let ((_e3822638249_
                                                       (gx#stx-e
                                                        _tl3822538246_)))
                                                  (let ((_hd3822738252_
                                                         (##car _e3822638249_))
                                                        (_tl3822838254_
                                                         (##cdr _e3822638249_)))
                                                    (if (gx#stx-null?
                                                         _hd3822738252_)
                                                        (if (gx#stx-pair?
                                                             _tl3822838254_)
                                                            (let ((_e3822938257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3822838254_)))
                      (let ((_hd3823038260_ (##car _e3822938257_))
                            (_tl3823138262_ (##cdr _e3822938257_)))
                        (if (gx#stx-null? _tl3823138262_)
                            ((lambda (_L38265_)
                               (let ((_g43101_
                                      (_basic-block38201_ _L38265_ '() '())))
                                 (begin
                                   (let ((_g43102_
                                          (if (##values? _g43101_)
                                              (##vector-length _g43101_)
                                              1)))
                                     (if (not (##fx= _g43102_ 2))
                                         (error "Context expects 2 values"
                                                _g43102_)))
                                   (let ((_body38283_
                                          (##vector-ref _g43101_ 0))
                                         (_body-blocks38284_
                                          (##vector-ref _g43101_ 1)))
                                     (_fold-blocks38202_
                                      _body-blocks38284_
                                      (cons (cons _name38218_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body38283_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks38197_))))))
                             _hd3823038260_)
                            (_g3822038236_ _g3822138239_))))
                    (_g3822038236_ _g3822138239_))
                (_g3822038236_ _g3822138239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3822038236_ _g3822138239_))
                                            (_g3822038236_ _g3822138239_))
                                        (_g3822038236_ _g3822138239_))))
                                (_g3822038236_ _g3822138239_)))))
                    (_g3821938286_ _body38217_)))))
          (if (##pair? _clause3820338210_)
              (let ((_hd3820738292_ (##car _clause3820338210_))
                    (_tl3820838294_ (##cdr _clause3820338210_)))
                (let* ((_name38297_ _hd3820738292_)
                       (_body38299_ _tl3820838294_))
                  (_K3820638289_ _body38299_ _name38297_)))
              (_E3820538214_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks37802_)
      (let _lp37804_ ((_rest37806_ _blocks37802_) (_blocks37807_ '()))
        (let* ((_rest3780837816_ _rest37806_)
               (_else3781037865_
                (lambda ()
                  (foldl1 (lambda (_block37824_ _r37825_)
                            (let* ((_block3782637837_ _block37824_)
                                   (_E3782837841_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3782637837_)))
                                   (_K3782937847_
                                    (lambda (_kont37844_ _name37845_)
                                      (cons (cons _name37845_ _kont37844_)
                                            _r37825_))))
                              (if (##pair? _block3782637837_)
                                  (let ((_hd3783037850_
                                         (##car _block3782637837_))
                                        (_tl3783137852_
                                         (##cdr _block3782637837_)))
                                    (let ((_name37855_ _hd3783037850_))
                                      (if (##pair? _tl3783137852_)
                                          (let ((_tl3783337857_
                                                 (##cdr _tl3783137852_)))
                                            (if (##pair? _tl3783337857_)
                                                (let* ((_hd3783437860_
                                                        (##car _tl3783337857_))
                                                       (_kont37863_
                                                        _hd3783437860_))
                                                  (_K3782937847_
                                                   _kont37863_
                                                   _name37855_))
                                                (_E3782837841_)))
                                          (_E3782837841_))))
                                  (_E3782837841_))))
                          '()
                          _blocks37807_)))
               (_K3781238184_
                (lambda (_rest37868_ _block37869_)
                  (let* ((_block3787037895_ _block37869_)
                         (_E3787337899_
                          (lambda ()
                            (error '"No clause matching" _block3787037895_))))
                    (let ((_K3788538155_
                           (lambda (_assert38077_ _kont38078_ _name38079_)
                             (let* ((_g3808138097_
                                     (lambda (_g3808238094_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3808238094_)))
                                    (_g3808038152_
                                     (lambda (_g3808238100_)
                                       (if (gx#stx-pair? _g3808238100_)
                                           (let ((_e3808438102_
                                                  (gx#stx-e _g3808238100_)))
                                             (let ((_hd3808538105_
                                                    (##car _e3808438102_))
                                                   (_tl3808638107_
                                                    (##cdr _e3808438102_)))
                                               (if (gx#identifier?
                                                    _hd3808538105_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3808538105_)
                                                       (if (gx#stx-pair?
                                                            _tl3808638107_)
                                                           (let ((_e3808738110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3808638107_)))
                     (let ((_hd3808838113_ (##car _e3808738110_))
                           (_tl3808938115_ (##cdr _e3808738110_)))
                       (if (gx#stx-null? _hd3808838113_)
                           (if (gx#stx-pair? _tl3808938115_)
                               (let ((_e3809038118_ (gx#stx-e _tl3808938115_)))
                                 (let ((_hd3809138121_ (##car _e3809038118_))
                                       (_tl3809238123_ (##cdr _e3809038118_)))
                                   (if (gx#stx-null? _tl3809238123_)
                                       ((lambda (_L38126_)
                                          (let* ((_body38141_
                                                  (gxc#optimize-match-block
                                                   _L38126_
                                                   _assert38077_
                                                   '()
                                                   _rest37868_))
                                                 (_block38143_
                                                  (cons _name38079_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body38141_ '())))
                            (cons _assert38077_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks38145_
                                                  (cons _block38143_
                                                        _blocks37807_))
                                                 (_rest38147_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest37868_
                                                   _blocks38145_))
                                                 (_rest38149_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest38147_
                                                   _blocks38145_)))
                                            (_lp37804_
                                             _rest38149_
                                             _blocks38145_)))
                                        _hd3809138121_)
                                       (_g3808138097_ _g3808238100_))))
                               (_g3808138097_ _g3808238100_))
                           (_g3808138097_ _g3808238100_))))
                   (_g3808138097_ _g3808238100_))
               (_g3808138097_ _g3808238100_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3808138097_
                                                    _g3808238100_))))
                                           (_g3808138097_ _g3808238100_)))))
                               (_g3808038152_ _kont38078_))))
                          (_K3787438038_
                           (lambda (_bind37903_
                                    _assert37904_
                                    _kont37905_
                                    _name37906_)
                             (let* ((_g3790837934_
                                     (lambda (_g3790937931_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3790937931_)))
                                    (_g3790738035_
                                     (lambda (_g3790937937_)
                                       (if (gx#stx-pair? _g3790937937_)
                                           (let ((_e3791237939_
                                                  (gx#stx-e _g3790937937_)))
                                             (let ((_hd3791337942_
                                                    (##car _e3791237939_))
                                                   (_tl3791437944_
                                                    (##cdr _e3791237939_)))
                                               (if (gx#identifier?
                                                    _hd3791337942_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3791337942_)
                                                       (if (gx#stx-pair?
                                                            _tl3791437944_)
                                                           (let ((_e3791537947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3791437944_)))
                     (let ((_hd3791637950_ (##car _e3791537947_))
                           (_tl3791737952_ (##cdr _e3791537947_)))
                       (if (gx#stx-pair/null? _hd3791637950_)
                           (let ((_g43103_
                                  (gx#syntax-split-splice _hd3791637950_ '0)))
                             (begin
                               (let ((_g43104_
                                      (if (##values? _g43103_)
                                          (##vector-length _g43103_)
                                          1)))
                                 (if (not (##fx= _g43104_ 2))
                                     (error "Context expects 2 values"
                                            _g43104_)))
                               (let ((_target3791837955_
                                      (##vector-ref _g43103_ 0))
                                     (_tl3792037957_
                                      (##vector-ref _g43103_ 1)))
                                 (if (gx#stx-null? _tl3792037957_)
                                     (letrec ((_loop3792137960_
                                               (lambda (_hd3791937963_
                                                        _id3792537965_)
                                                 (if (gx#stx-pair?
                                                      _hd3791937963_)
                                                     (let ((_e3792237968_
                                                            (gx#stx-e
                                                             _hd3791937963_)))
                                                       (let ((_lp-hd3792337971_
                                                              (##car _e3792237968_))
                                                             (_lp-tl3792437973_
                                                              (##cdr _e3792237968_)))
                                                         (_loop3792137960_
                                                          _lp-tl3792437973_
                                                          (cons _lp-hd3792337971_
                                                                _id3792537965_))))
                                                     (let ((_id3792637976_
                                                            (reverse _id3792537965_)))
                                                       (if (gx#stx-pair?
                                                            _tl3791737952_)
                                                           (let ((_e3792737979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3791737952_)))
                     (let ((_hd3792837982_ (##car _e3792737979_))
                           (_tl3792937984_ (##cdr _e3792737979_)))
                       (if (gx#stx-null? _tl3792937984_)
                           ((lambda (_L37987_ _L37988_)
                              (let* ((_body38017_
                                      (gxc#optimize-match-block
                                       _L37987_
                                       _assert37904_
                                       _bind37903_
                                       _rest37868_))
                                     (_block38026_
                                      (cons _name37906_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g3801838021_ _g3801938023_)
                                        (cons _g3801838021_ _g3801938023_))
                                      '()
                                      _L37988_))
                            (cons _body38017_ '())))
                (cons _assert37904_ (cons _bind37903_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks38028_
                                      (cons _block38026_ _blocks37807_))
                                     (_rest38030_
                                      (gxc#optimize-match-prune-blocks
                                       _rest37868_
                                       _blocks38028_))
                                     (_rest38032_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest38030_
                                       _blocks38028_)))
                                (_lp37804_ _rest38032_ _blocks38028_)))
                            _hd3792837982_
                            _id3792637976_)
                           (_g3790837934_ _g3790937937_))))
                   (_g3790837934_ _g3790937937_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3792137960_
                                        _target3791837955_
                                        '()))
                                     (_g3790837934_ _g3790937937_)))))
                           (_g3790837934_ _g3790937937_))))
                   (_g3790837934_ _g3790937937_))
               (_g3790837934_ _g3790937937_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3790837934_
                                                    _g3790937937_))))
                                           (_g3790837934_ _g3790937937_)))))
                               (_g3790738035_ _kont37905_)))))
                      (if (##pair? _block3787037895_)
                          (let ((_tl3788738160_ (##cdr _block3787037895_))
                                (_hd3788638158_ (##car _block3787037895_)))
                            (if (##pair? _tl3788738160_)
                                (let ((_tl3788938167_ (##cdr _tl3788738160_))
                                      (_hd3788838165_ (##car _tl3788738160_)))
                                  (if (##eq? _hd3788838165_ 'restart:)
                                      (if (##pair? _tl3788938167_)
                                          (let ((_tl3789138172_
                                                 (##cdr _tl3788938167_))
                                                (_hd3789038170_
                                                 (##car _tl3788938167_)))
                                            (if (##pair? _tl3789138172_)
                                                (let ((_tl3789338179_
                                                       (##cdr _tl3789138172_))
                                                      (_hd3789238177_
                                                       (##car _tl3789138172_)))
                                                  (if (##null? _tl3789338179_)
                                                      (let ((_name38163_
                                                             _hd3788638158_)
                                                            (_kont38175_
                                                             _hd3789038170_)
                                                            (_assert38182_
                                                             _hd3789238177_))
                                                        (_K3788538155_
                                                         _assert38182_
                                                         _kont38175_
                                                         _name38163_))
                                                      (_E3787337899_)))
                                                (_E3787337899_)))
                                          (_E3787337899_))
                                      (if (##eq? _hd3788838165_ 'continue:)
                                          (if (##pair? _tl3788938167_)
                                              (let ((_tl3788038055_
                                                     (##cdr _tl3788938167_))
                                                    (_hd3787938053_
                                                     (##car _tl3788938167_)))
                                                (if (##pair? _tl3788038055_)
                                                    (let ((_tl3788238062_
                                                           (##cdr _tl3788038055_))
                                                          (_hd3788138060_
                                                           (##car _tl3788038055_)))
                                                      (if (##pair? _tl3788238062_)
                                                          (let ((_tl3788438069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3788238062_))
                        (_hd3788338067_ (##car _tl3788238062_)))
                    (if (##null? _tl3788438069_)
                        (let ((_name38046_ _hd3788638158_)
                              (_kont38058_ _hd3787938053_)
                              (_assert38065_ _hd3788138060_)
                              (_bind38072_ _hd3788338067_))
                          (_K3787438038_
                           _bind38072_
                           _assert38065_
                           _kont38058_
                           _name38046_))
                        (_E3787337899_)))
                  (_E3787337899_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3787337899_)))
                                              (_E3787337899_))
                                          (_E3787337899_))))
                                (_E3787337899_)))
                          (_E3787337899_)))))))
          (if (##pair? _rest3780837816_)
              (let ((_hd3781338187_ (##car _rest3780837816_))
                    (_tl3781438189_ (##cdr _rest3780837816_)))
                (let* ((_block38192_ _hd3781338187_)
                       (_rest38194_ _tl3781438189_))
                  (_K3781238184_ _rest38194_ _block38192_)))
              (_else3781037865_))))))
  (define gxc#optimize-match-block
    (lambda (_body32425_ _assert32426_ _bind32427_ _blocks32428_)
      (letrec* ((_env-assert32663_ '())
                (_env-type32664_ '())
                (_env-bind32665_ '())
                (_in-splice?32666_ '#f)
                (_do-assert32667_
                 (lambda (_assert37725_ _K37726_)
                   (if (pair? _assert37725_)
                       (let _lp37728_ ((_rest37730_ _assert37725_)
                                       (_env-assert37731_ _env-assert32663_)
                                       (_env-type37732_ _env-type32664_))
                         (let* ((_rest3773337741_ _rest37730_)
                                (_else3773537749_
                                 (lambda ()
                                   (_do-assert!32673_
                                    _env-assert37731_
                                    _env-type37732_
                                    _K37726_)))
                                (_K3773737790_
                                 (lambda (_rest37752_ _assert37753_)
                                   (let* ((_assert3775437761_ _assert37753_)
                                          (_E3775637765_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3775437761_)))
                                          (_K3775737778_
                                           (lambda (_val37768_ _expr37769_)
                                             (let* ((_sexpr37771_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr37769_))
                                                    (_env-assert37773_
                                                     (cons (cons _sexpr37771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val37768_)
                   _env-assert37731_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type37775_
                                                     (_fold-assert-type32669_
                                                      _expr37769_
                                                      _val37768_
                                                      _env-type37732_)))
                                               (_lp37728_
                                                _rest37752_
                                                _env-assert37773_
                                                _env-type37775_)))))
                                     (if (##pair? _assert3775437761_)
                                         (let ((_hd3775837781_
                                                (##car _assert3775437761_))
                                               (_tl3775937783_
                                                (##cdr _assert3775437761_)))
                                           (let* ((_expr37786_ _hd3775837781_)
                                                  (_val37788_ _tl3775937783_))
                                             (_K3775737778_
                                              _val37788_
                                              _expr37786_)))
                                         (_E3775637765_))))))
                           (if (##pair? _rest3773337741_)
                               (let ((_hd3773837793_ (##car _rest3773337741_))
                                     (_tl3773937795_ (##cdr _rest3773337741_)))
                                 (let* ((_assert37798_ _hd3773837793_)
                                        (_rest37800_ _tl3773937795_))
                                   (_K3773737790_ _rest37800_ _assert37798_)))
                               (_else3773537749_))))
                       (_K37726_))))
                (_predicate-type32668_
                 (lambda (_id37670_)
                   (let* ((_sym37672_ (gxc#identifier-symbol _id37670_))
                          (_$e37674_ _sym37672_))
                     (let ((_default3767637707_
                            (lambda ()
                              (let* ((_g3767937686_
                                      (gxc#optimizer-resolve-type _sym37672_))
                                     (_else3768137694_ (lambda () '#f))
                                     (_K3768337699_
                                      (lambda (_struct-t37697_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t37697_))))
                                (if (##structure-instance-of?
                                     _g3767937686_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3768437702_
                                            (##vector-ref _g3767937686_ '1))
                                           (_struct-t37705_ _e3768437702_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t37705_))
                                    (_else3768137694_)))))
                           (_table3767737709_
                            '#(#f
                               (##box? . 3)
                               #f
                               (##pair? . 0)
                               #f
                               (gx#stx-vector? . 7)
                               (gx#identifier? . 4)
                               #f
                               #f
                               #f
                               (vector? . 2)
                               #f
                               #f
                               #f
                               #f
                               #f
                               (null? . 1)
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-pair? . 5)
                               #f
                               (gx#stx-null? . 6)
                               #f
                               #f
                               #f
                               (##vector? . 2)
                               #f
                               (pair? . 0)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-datum? . 9)
                               (box? . 3)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (##null? . 1)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-box? . 8)
                               #f
                               #f
                               #f)))
                       (if (symbol? _$e37674_)
                           (let* ((_h37712_ (##symbol-hash _$e37674_))
                                  (_ix37715_ (##fxmodulo _h37712_ '63))
                                  (_q37718_
                                   (##vector-ref _table3767737709_ _ix37715_)))
                             (if _q37718_
                                 (if (eq? (##car _q37718_) _$e37674_)
                                     (let ((_x37722_ (##cdr _q37718_)))
                                       (if (##fx< _x37722_ '5)
                                           (if (##fx< _x37722_ '2)
                                               (if (##fx= _x37722_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x37722_ '2)
                                                   'vector
                                                   (if (##fx= _x37722_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x37722_ '7)
                                               (if (##fx= _x37722_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x37722_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x37722_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3767637707_))
                                 (_default3767637707_)))
                           (_default3767637707_))))))
                (_fold-assert-type32669_
                 (lambda (_expr36618_ _val36619_ _env36620_)
                   (let* ((___stx4059140592_ _expr36618_)
                          (_g3662836807_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4059140592_))))
                     (let ((___kont4059340594_
                            (lambda (_L37639_ _L37640_)
                              (let ((_$e37662_
                                     (_predicate-type32668_ _L37640_)))
                                (if _$e37662_
                                    ((lambda (_t37665_)
                                       (cons (cons _L37639_
                                                   (cons _t37665_
                                                         (cons _val36619_
                                                               '())))
                                             _env36620_))
                                     _$e37662_)
                                    _env36620_))))
                           (___kont4059540596_
                            (lambda (_L37329_ _L37330_ _L37331_)
                              (let ((_$e37356_
                                     (gxc#identifier-symbol _L37331_)))
                                (if (if (eq? '##fx= _$e37356_)
                                        '#t
                                        (eq? 'fx= _$e37356_))
                                    (let* ((___stx4049740498_ _L37330_)
                                           (_g3736337392_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4049740498_))))
                                      (let ((___kont4049940500_
                                             (lambda (_L37460_ _L37461_)
                                               (let ((_$e37486_
                                                      (_countf-symbol32670_
                                                       _L37461_)))
                                                 (if _$e37486_
                                                     ((lambda (_sym37489_)
                                                        (cons (cons _L37460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym37489_
                                  (cons (gx#stx-e _L37329_)
                                        (cons _val36619_ '()))))
                      _env36620_))
              _$e37486_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env36620_))))
                                            (___kont4050140502_
                                             (lambda () _env36620_)))
                                        (if (gx#stx-pair? ___stx4049740498_)
                                            (let ((_e3736737404_
                                                   (gx#stx-e
                                                    ___stx4049740498_)))
                                              (let ((_tl3736937409_
                                                     (##cdr _e3736737404_))
                                                    (_hd3736837407_
                                                     (##car _e3736737404_)))
                                                (if (gx#identifier?
                                                     _hd3736837407_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3736837407_)
                                                        (if (gx#stx-pair?
                                                             _tl3736937409_)
                                                            (let ((_e3737037412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3736937409_)))
                      (let ((_tl3737237417_ (##cdr _e3737037412_))
                            (_hd3737137415_ (##car _e3737037412_)))
                        (if (gx#stx-pair? _hd3737137415_)
                            (let ((_e3737337420_ (gx#stx-e _hd3737137415_)))
                              (let ((_tl3737537425_ (##cdr _e3737337420_))
                                    (_hd3737437423_ (##car _e3737337420_)))
                                (if (gx#identifier? _hd3737437423_)
                                    (if (gx#stx-eq? '%#ref _hd3737437423_)
                                        (if (gx#stx-pair? _tl3737537425_)
                                            (let ((_e3737637428_
                                                   (gx#stx-e _tl3737537425_)))
                                              (let ((_tl3737837433_
                                                     (##cdr _e3737637428_))
                                                    (_hd3737737431_
                                                     (##car _e3737637428_)))
                                                (if (gx#stx-null?
                                                     _tl3737837433_)
                                                    (if (gx#stx-pair?
                                                         _tl3737237417_)
                                                        (let ((_e3737937436_
                                                               (gx#stx-e
                                                                _tl3737237417_)))
                                                          (let ((_tl3738137441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3737937436_))
                        (_hd3738037439_ (##car _e3737937436_)))
                    (if (gx#stx-pair? _hd3738037439_)
                        (let ((_e3738237444_ (gx#stx-e _hd3738037439_)))
                          (let ((_tl3738437449_ (##cdr _e3738237444_))
                                (_hd3738337447_ (##car _e3738237444_)))
                            (if (gx#identifier? _hd3738337447_)
                                (if (gx#stx-eq? '%#ref _hd3738337447_)
                                    (if (gx#stx-pair? _tl3738437449_)
                                        (let ((_e3738537452_
                                               (gx#stx-e _tl3738437449_)))
                                          (let ((_tl3738737457_
                                                 (##cdr _e3738537452_))
                                                (_hd3738637455_
                                                 (##car _e3738537452_)))
                                            (if (gx#stx-null? _tl3738737457_)
                                                (if (gx#stx-null?
                                                     _tl3738137441_)
                                                    (___kont4049940500_
                                                     _hd3738637455_
                                                     _hd3737737431_)
                                                    (___kont4050140502_))
                                                (___kont4050140502_))))
                                        (___kont4050140502_))
                                    (___kont4050140502_))
                                (___kont4050140502_))))
                        (___kont4050140502_))))
                (___kont4050140502_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4050140502_))))
                                            (___kont4050140502_))
                                        (___kont4050140502_))
                                    (___kont4050140502_))))
                            (___kont4050140502_))))
                    (___kont4050140502_))
                (___kont4050140502_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4050140502_))))
                                            (___kont4050140502_))))
                                    (if (if (eq? '##eq? _$e37356_)
                                            '#t
                                            (if (eq? 'eq? _$e37356_)
                                                '#t
                                                (if (eq? '##eqv? _$e37356_)
                                                    '#t
                                                    (if (eq? 'eqv? _$e37356_)
                                                        '#t
                                                        (if (eq? '##equal?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e37356_)
                    '#t
                    (if (eq? 'equal? _$e37356_)
                        '#t
                        (if (eq? 'gx#free-identifier=? _$e37356_)
                            '#t
                            (eq? 'gx#stx-eq? _$e37356_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        ((lambda (_sym37515_)
                                           (let* ((_sym37517_
                                                   (_eqf-symbol32671_
                                                    _sym37515_))
                                                  (___stx4056540566_ _L37330_)
                                                  (_g3752037533_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4056540566_))))
                                             (let ((___kont4056740568_
                                                    (lambda (_L37561_)
                                                      (cons (cons _L37561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym37517_
                                (cons (gx#stx-e _L37329_)
                                      (cons _val36619_ '()))))
                    _env36620_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4056940570_
                                                    (lambda () _env36620_)))
                                               (if (gx#stx-pair?
                                                    ___stx4056540566_)
                                                   (let ((_e3752337545_
                                                          (gx#stx-e
                                                           ___stx4056540566_)))
                                                     (let ((_tl3752537550_
                                                            (##cdr _e3752337545_))
                                                           (_hd3752437548_
                                                            (##car _e3752337545_)))
                                                       (if (gx#identifier?
                                                            _hd3752437548_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3752437548_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3752537550_)
                           (let ((_e3752637553_ (gx#stx-e _tl3752537550_)))
                             (let ((_tl3752837558_ (##cdr _e3752637553_))
                                   (_hd3752737556_ (##car _e3752637553_)))
                               (if (gx#stx-null? _tl3752837558_)
                                   (___kont4056740568_ _hd3752737556_)
                                   (___kont4056940570_))))
                           (___kont4056940570_))
                       (___kont4056940570_))
                   (___kont4056940570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4056940570_)))))
                                         _$e37356_)
                                        _env36620_)))))
                           (___kont4059740598_
                            (lambda (_L37233_ _L37234_ _L37235_)
                              (_fold-assert-type32669_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L37235_ '()))
                                           (cons _L37233_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L37234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36619_
                               _env36620_)))
                           (___kont4059940600_
                            (lambda (_L37123_ _L37124_ _L37125_)
                              (let ((_$e37154_
                                     (gxc#identifier-symbol _L37125_)))
                                (if (if (eq? 'gx#free-identifier=? _$e37154_)
                                        '#t
                                        (eq? 'gx#stx-eq? _$e37154_))
                                    ((lambda (_sym37160_)
                                       (let ((_sym37162_
                                              (_eqf-symbol32671_ _sym37160_)))
                                         (cons (cons _L37124_
                                                     (cons _sym37162_
                                                           (cons _L37123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val36619_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env36620_)))
                                     _$e37154_)
                                    _env36620_))))
                           (___kont4060140602_
                            (lambda (_L37007_ _L37008_ _L37009_)
                              (_fold-assert-type32669_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L37009_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L37007_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L37008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36619_
                               _env36620_)))
                           (___kont4060340604_
                            (lambda (_L36891_ _L36892_ _L36893_)
                              (_fold-assert-type32669_
                               (gxc#apply-expression-subst
                                _L36892_
                                _L36893_
                                _L36891_)
                               _val36619_
                               _env36620_)))
                           (___kont4060540606_ (lambda () _env36620_)))
                       (if (gx#stx-pair? ___stx4059140592_)
                           (let ((_e3663237583_ (gx#stx-e ___stx4059140592_)))
                             (let ((_tl3663437588_ (##cdr _e3663237583_))
                                   (_hd3663337586_ (##car _e3663237583_)))
                               (if (gx#identifier? _hd3663337586_)
                                   (if (gx#stx-eq? '%#call _hd3663337586_)
                                       (if (gx#stx-pair? _tl3663437588_)
                                           (let ((_e3663537591_
                                                  (gx#stx-e _tl3663437588_)))
                                             (let ((_tl3663737596_
                                                    (##cdr _e3663537591_))
                                                   (_hd3663637594_
                                                    (##car _e3663537591_)))
                                               (if (gx#stx-pair?
                                                    _hd3663637594_)
                                                   (let ((_e3663837599_
                                                          (gx#stx-e
                                                           _hd3663637594_)))
                                                     (let ((_tl3664037604_
                                                            (##cdr _e3663837599_))
                                                           (_hd3663937602_
                                                            (##car _e3663837599_)))
                                                       (if (gx#identifier?
                                                            _hd3663937602_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3663937602_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3664037604_)
                           (let ((_e3664137607_ (gx#stx-e _tl3664037604_)))
                             (let ((_tl3664337612_ (##cdr _e3664137607_))
                                   (_hd3664237610_ (##car _e3664137607_)))
                               (if (gx#stx-null? _tl3664337612_)
                                   (if (gx#stx-pair? _tl3663737596_)
                                       (let ((_e3664437615_
                                              (gx#stx-e _tl3663737596_)))
                                         (let ((_tl3664637620_
                                                (##cdr _e3664437615_))
                                               (_hd3664537618_
                                                (##car _e3664437615_)))
                                           (if (gx#stx-pair? _hd3664537618_)
                                               (let ((_e3664737623_
                                                      (gx#stx-e
                                                       _hd3664537618_)))
                                                 (let ((_tl3664937628_
                                                        (##cdr _e3664737623_))
                                                       (_hd3664837626_
                                                        (##car _e3664737623_)))
                                                   (if (gx#identifier?
                                                        _hd3664837626_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3664837626_)
                                                           (if (gx#stx-pair?
                                                                _tl3664937628_)
                                                               (let ((_e3665037631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3664937628_)))
                         (let ((_tl3665237636_ (##cdr _e3665037631_))
                               (_hd3665137634_ (##car _e3665037631_)))
                           (if (gx#stx-null? _tl3665237636_)
                               (if (gx#stx-null? _tl3664637620_)
                                   (___kont4059340594_
                                    _hd3665137634_
                                    _hd3664237610_)
                                   (if (gx#stx-pair? _tl3664637620_)
                                       (let ((_e3667137305_
                                              (gx#stx-e _tl3664637620_)))
                                         (let ((_tl3667337310_
                                                (##cdr _e3667137305_))
                                               (_hd3667237308_
                                                (##car _e3667137305_)))
                                           (if (gx#stx-pair? _hd3667237308_)
                                               (let ((_e3667437313_
                                                      (gx#stx-e
                                                       _hd3667237308_)))
                                                 (let ((_tl3667637318_
                                                        (##cdr _e3667437313_))
                                                       (_hd3667537316_
                                                        (##car _e3667437313_)))
                                                   (if (gx#identifier?
                                                        _hd3667537316_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3667537316_)
                                                           (if (gx#stx-pair?
                                                                _tl3667637318_)
                                                               (let ((_e3667737321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3667637318_)))
                         (let ((_tl3667937326_ (##cdr _e3667737321_))
                               (_hd3667837324_ (##car _e3667737321_)))
                           (if (gx#stx-null? _tl3667937326_)
                               (if (gx#stx-null? _tl3667337310_)
                                   (___kont4059540596_
                                    _hd3667837324_
                                    _hd3664537618_
                                    _hd3664237610_)
                                   (___kont4060540606_))
                               (___kont4060540606_))))
                       (___kont4060540606_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3667537316_)
                       (if (gx#stx-pair? _tl3667637318_)
                           (let ((_e3673737115_ (gx#stx-e _tl3667637318_)))
                             (let ((_tl3673937120_ (##cdr _e3673737115_))
                                   (_hd3673837118_ (##car _e3673737115_)))
                               (if (gx#stx-null? _tl3673937120_)
                                   (if (gx#stx-null? _tl3667337310_)
                                       (___kont4059940600_
                                        _hd3673837118_
                                        _hd3665137634_
                                        _hd3664237610_)
                                       (___kont4060540606_))
                                   (___kont4060540606_))))
                           (___kont4060540606_))
                       (___kont4060540606_)))
               (___kont4060540606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4060540606_))))
                                       (___kont4060540606_)))
                               (if (gx#stx-pair? _tl3664637620_)
                                   (let ((_e3667137305_
                                          (gx#stx-e _tl3664637620_)))
                                     (let ((_tl3667337310_
                                            (##cdr _e3667137305_))
                                           (_hd3667237308_
                                            (##car _e3667137305_)))
                                       (if (gx#stx-pair? _hd3667237308_)
                                           (let ((_e3667437313_
                                                  (gx#stx-e _hd3667237308_)))
                                             (let ((_tl3667637318_
                                                    (##cdr _e3667437313_))
                                                   (_hd3667537316_
                                                    (##car _e3667437313_)))
                                               (if (gx#identifier?
                                                    _hd3667537316_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3667537316_)
                                                       (if (gx#stx-pair?
                                                            _tl3667637318_)
                                                           (let ((_e3667737321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3667637318_)))
                     (let ((_tl3667937326_ (##cdr _e3667737321_))
                           (_hd3667837324_ (##car _e3667737321_)))
                       (if (gx#stx-null? _tl3667937326_)
                           (if (gx#stx-null? _tl3667337310_)
                               (___kont4059540596_
                                _hd3667837324_
                                _hd3664537618_
                                _hd3664237610_)
                               (___kont4060540606_))
                           (___kont4060540606_))))
                   (___kont4060540606_))
               (___kont4060540606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4060540606_))))
                                           (___kont4060540606_))))
                                   (___kont4060540606_)))))
                       (if (gx#stx-pair? _tl3664637620_)
                           (let ((_e3667137305_ (gx#stx-e _tl3664637620_)))
                             (let ((_tl3667337310_ (##cdr _e3667137305_))
                                   (_hd3667237308_ (##car _e3667137305_)))
                               (if (gx#stx-pair? _hd3667237308_)
                                   (let ((_e3667437313_
                                          (gx#stx-e _hd3667237308_)))
                                     (let ((_tl3667637318_
                                            (##cdr _e3667437313_))
                                           (_hd3667537316_
                                            (##car _e3667437313_)))
                                       (if (gx#identifier? _hd3667537316_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3667537316_)
                                               (if (gx#stx-pair?
                                                    _tl3667637318_)
                                                   (let ((_e3667737321_
                                                          (gx#stx-e
                                                           _tl3667637318_)))
                                                     (let ((_tl3667937326_
                                                            (##cdr _e3667737321_))
                                                           (_hd3667837324_
                                                            (##car _e3667737321_)))
                                                       (if (gx#stx-null?
                                                            _tl3667937326_)
                                                           (if (gx#stx-null?
                                                                _tl3667337310_)
                                                               (___kont4059540596_
                                                                _hd3667837324_
                                                                _hd3664537618_
                                                                _hd3664237610_)
                                                               (___kont4060540606_))
                                                           (___kont4060540606_))))
                                                   (___kont4060540606_))
                                               (___kont4060540606_))
                                           (___kont4060540606_))))
                                   (___kont4060540606_))))
                           (___kont4060540606_)))
                   (if (gx#stx-pair? _tl3664637620_)
                       (let ((_e3667137305_ (gx#stx-e _tl3664637620_)))
                         (let ((_tl3667337310_ (##cdr _e3667137305_))
                               (_hd3667237308_ (##car _e3667137305_)))
                           (if (gx#stx-pair? _hd3667237308_)
                               (let ((_e3667437313_ (gx#stx-e _hd3667237308_)))
                                 (let ((_tl3667637318_ (##cdr _e3667437313_))
                                       (_hd3667537316_ (##car _e3667437313_)))
                                   (if (gx#identifier? _hd3667537316_)
                                       (if (gx#stx-eq? '%#quote _hd3667537316_)
                                           (if (gx#stx-pair? _tl3667637318_)
                                               (let ((_e3667737321_
                                                      (gx#stx-e
                                                       _tl3667637318_)))
                                                 (let ((_tl3667937326_
                                                        (##cdr _e3667737321_))
                                                       (_hd3667837324_
                                                        (##car _e3667737321_)))
                                                   (if (gx#stx-null?
                                                        _tl3667937326_)
                                                       (if (gx#stx-null?
                                                            _tl3667337310_)
                                                           (___kont4059540596_
                                                            _hd3667837324_
                                                            _hd3664537618_
                                                            _hd3664237610_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3664837626_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3664937628_)
                           (let ((_e3670137217_ (gx#stx-e _tl3664937628_)))
                             (let ((_tl3670337222_ (##cdr _e3670137217_))
                                   (_hd3670237220_ (##car _e3670137217_)))
                               (___kont4060540606_)))
                           (___kont4060540606_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3664837626_)
                           (if (gx#stx-pair? _tl3664937628_)
                               (let ((_e3676136975_ (gx#stx-e _tl3664937628_)))
                                 (let ((_tl3676336980_ (##cdr _e3676136975_))
                                       (_hd3676236978_ (##car _e3676136975_)))
                                   (___kont4060540606_)))
                               (___kont4060540606_))
                           (___kont4060540606_))))
               (if (gx#stx-eq? '%#quote _hd3664837626_)
                   (if (gx#stx-pair? _tl3664937628_)
                       (let ((_e3670137217_ (gx#stx-e _tl3664937628_)))
                         (let ((_tl3670337222_ (##cdr _e3670137217_))
                               (_hd3670237220_ (##car _e3670137217_)))
                           (if (gx#stx-null? _tl3670337222_)
                               (if (gx#stx-null? _tl3667337310_)
                                   (___kont4059740598_
                                    _hd3667237308_
                                    _hd3670237220_
                                    _hd3664237610_)
                                   (___kont4060540606_))
                               (___kont4060540606_))))
                       (___kont4060540606_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3664837626_)
                       (if (gx#stx-pair? _tl3664937628_)
                           (let ((_e3676136975_ (gx#stx-e _tl3664937628_)))
                             (let ((_tl3676336980_ (##cdr _e3676136975_))
                                   (_hd3676236978_ (##car _e3676136975_)))
                               (___kont4060540606_)))
                           (___kont4060540606_))
                       (___kont4060540606_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3664837626_)
                                                   (if (gx#stx-pair?
                                                        _tl3664937628_)
                                                       (let ((_e3670137217_
                                                              (gx#stx-e
                                                               _tl3664937628_)))
                                                         (let ((_tl3670337222_
                                                                (##cdr _e3670137217_))
                                                               (_hd3670237220_
                                                                (##car _e3670137217_)))
                                                           (if (gx#stx-null?
                                                                _tl3670337222_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3667337310_)
                           (___kont4059740598_
                            _hd3667237308_
                            _hd3670237220_
                            _hd3664237610_)
                           (___kont4060540606_))
                       (___kont4060540606_))))
               (___kont4060540606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3664837626_)
                                                       (if (gx#stx-pair?
                                                            _tl3664937628_)
                                                           (let ((_e3676136975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3664937628_)))
                     (let ((_tl3676336980_ (##cdr _e3676136975_))
                           (_hd3676236978_ (##car _e3676136975_)))
                       (___kont4060540606_)))
                   (___kont4060540606_))
               (___kont4060540606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3664837626_)
                                               (if (gx#stx-pair?
                                                    _tl3664937628_)
                                                   (let ((_e3670137217_
                                                          (gx#stx-e
                                                           _tl3664937628_)))
                                                     (let ((_tl3670337222_
                                                            (##cdr _e3670137217_))
                                                           (_hd3670237220_
                                                            (##car _e3670137217_)))
                                                       (if (gx#stx-null?
                                                            _tl3670337222_)
                                                           (if (gx#stx-null?
                                                                _tl3667337310_)
                                                               (___kont4059740598_
                                                                _hd3667237308_
                                                                _hd3670237220_
                                                                _hd3664237610_)
                                                               (___kont4060540606_))
                                                           (___kont4060540606_))))
                                                   (___kont4060540606_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3664837626_)
                                                   (if (gx#stx-pair?
                                                        _tl3664937628_)
                                                       (let ((_e3676136975_
                                                              (gx#stx-e
                                                               _tl3664937628_)))
                                                         (let ((_tl3676336980_
                                                                (##cdr _e3676136975_))
                                                               (_hd3676236978_
                                                                (##car _e3676136975_)))
                                                           (if (gx#stx-null?
                                                                _tl3676336980_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3667537316_)
                           (if (gx#stx-pair? _tl3667637318_)
                               (let ((_e3677036999_ (gx#stx-e _tl3667637318_)))
                                 (let ((_tl3677237004_ (##cdr _e3677036999_))
                                       (_hd3677137002_ (##car _e3677036999_)))
                                   (if (gx#stx-null? _tl3677237004_)
                                       (if (gx#stx-null? _tl3667337310_)
                                           (___kont4060140602_
                                            _hd3677137002_
                                            _hd3676236978_
                                            _hd3664237610_)
                                           (___kont4060540606_))
                                       (___kont4060540606_))))
                               (___kont4060540606_))
                           (___kont4060540606_))
                       (___kont4060540606_))))
               (___kont4060540606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4060540606_))))
                                       (if (gx#stx-eq? '%#quote _hd3664837626_)
                                           (if (gx#stx-pair? _tl3664937628_)
                                               (let ((_e3670137217_
                                                      (gx#stx-e
                                                       _tl3664937628_)))
                                                 (let ((_tl3670337222_
                                                        (##cdr _e3670137217_))
                                                       (_hd3670237220_
                                                        (##car _e3670137217_)))
                                                   (if (gx#stx-null?
                                                        _tl3670337222_)
                                                       (if (gx#stx-null?
                                                            _tl3667337310_)
                                                           (___kont4059740598_
                                                            _hd3667237308_
                                                            _hd3670237220_
                                                            _hd3664237610_)
                                                           (___kont4060540606_))
                                                       (___kont4060540606_))))
                                               (___kont4060540606_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3664837626_)
                                               (if (gx#stx-pair?
                                                    _tl3664937628_)
                                                   (let ((_e3676136975_
                                                          (gx#stx-e
                                                           _tl3664937628_)))
                                                     (let ((_tl3676336980_
                                                            (##cdr _e3676136975_))
                                                           (_hd3676236978_
                                                            (##car _e3676136975_)))
                                                       (___kont4060540606_)))
                                                   (___kont4060540606_))
                                               (___kont4060540606_))))))
                               (if (gx#stx-eq? '%#quote _hd3664837626_)
                                   (if (gx#stx-pair? _tl3664937628_)
                                       (let ((_e3670137217_
                                              (gx#stx-e _tl3664937628_)))
                                         (let ((_tl3670337222_
                                                (##cdr _e3670137217_))
                                               (_hd3670237220_
                                                (##car _e3670137217_)))
                                           (if (gx#stx-null? _tl3670337222_)
                                               (if (gx#stx-null?
                                                    _tl3667337310_)
                                                   (___kont4059740598_
                                                    _hd3667237308_
                                                    _hd3670237220_
                                                    _hd3664237610_)
                                                   (___kont4060540606_))
                                               (___kont4060540606_))))
                                       (___kont4060540606_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3664837626_)
                                       (if (gx#stx-pair? _tl3664937628_)
                                           (let ((_e3676136975_
                                                  (gx#stx-e _tl3664937628_)))
                                             (let ((_tl3676336980_
                                                    (##cdr _e3676136975_))
                                                   (_hd3676236978_
                                                    (##car _e3676136975_)))
                                               (___kont4060540606_)))
                                           (___kont4060540606_))
                                       (___kont4060540606_))))))
                       (if (gx#stx-eq? '%#quote _hd3664837626_)
                           (if (gx#stx-pair? _tl3664937628_)
                               (let ((_e3670137217_ (gx#stx-e _tl3664937628_)))
                                 (let ((_tl3670337222_ (##cdr _e3670137217_))
                                       (_hd3670237220_ (##car _e3670137217_)))
                                   (___kont4060540606_)))
                               (___kont4060540606_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3664837626_)
                               (if (gx#stx-pair? _tl3664937628_)
                                   (let ((_e3676136975_
                                          (gx#stx-e _tl3664937628_)))
                                     (let ((_tl3676336980_
                                            (##cdr _e3676136975_))
                                           (_hd3676236978_
                                            (##car _e3676136975_)))
                                       (___kont4060540606_)))
                                   (___kont4060540606_))
                               (___kont4060540606_)))))
               (if (gx#stx-pair? _tl3664637620_)
                   (let ((_e3667137305_ (gx#stx-e _tl3664637620_)))
                     (let ((_tl3667337310_ (##cdr _e3667137305_))
                           (_hd3667237308_ (##car _e3667137305_)))
                       (if (gx#stx-pair? _hd3667237308_)
                           (let ((_e3667437313_ (gx#stx-e _hd3667237308_)))
                             (let ((_tl3667637318_ (##cdr _e3667437313_))
                                   (_hd3667537316_ (##car _e3667437313_)))
                               (if (gx#identifier? _hd3667537316_)
                                   (if (gx#stx-eq? '%#quote _hd3667537316_)
                                       (if (gx#stx-pair? _tl3667637318_)
                                           (let ((_e3667737321_
                                                  (gx#stx-e _tl3667637318_)))
                                             (let ((_tl3667937326_
                                                    (##cdr _e3667737321_))
                                                   (_hd3667837324_
                                                    (##car _e3667737321_)))
                                               (if (gx#stx-null?
                                                    _tl3667937326_)
                                                   (if (gx#stx-null?
                                                        _tl3667337310_)
                                                       (___kont4059540596_
                                                        _hd3667837324_
                                                        _hd3664537618_
                                                        _hd3664237610_)
                                                       (___kont4060540606_))
                                                   (___kont4060540606_))))
                                           (___kont4060540606_))
                                       (___kont4060540606_))
                                   (___kont4060540606_))))
                           (___kont4060540606_))))
                   (___kont4060540606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3664637620_)
                                                   (let ((_e3667137305_
                                                          (gx#stx-e
                                                           _tl3664637620_)))
                                                     (let ((_tl3667337310_
                                                            (##cdr _e3667137305_))
                                                           (_hd3667237308_
                                                            (##car _e3667137305_)))
                                                       (if (gx#stx-pair?
                                                            _hd3667237308_)
                                                           (let ((_e3667437313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3667237308_)))
                     (let ((_tl3667637318_ (##cdr _e3667437313_))
                           (_hd3667537316_ (##car _e3667437313_)))
                       (if (gx#identifier? _hd3667537316_)
                           (if (gx#stx-eq? '%#quote _hd3667537316_)
                               (if (gx#stx-pair? _tl3667637318_)
                                   (let ((_e3667737321_
                                          (gx#stx-e _tl3667637318_)))
                                     (let ((_tl3667937326_
                                            (##cdr _e3667737321_))
                                           (_hd3667837324_
                                            (##car _e3667737321_)))
                                       (if (gx#stx-null? _tl3667937326_)
                                           (if (gx#stx-null? _tl3667337310_)
                                               (___kont4059540596_
                                                _hd3667837324_
                                                _hd3664537618_
                                                _hd3664237610_)
                                               (___kont4060540606_))
                                           (___kont4060540606_))))
                                   (___kont4060540606_))
                               (___kont4060540606_))
                           (___kont4060540606_))))
                   (___kont4060540606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4060540606_)))))
                                       (___kont4060540606_))
                                   (___kont4060540606_))))
                           (___kont4060540606_))
                       (if (gx#stx-eq? '%#lambda _hd3663937602_)
                           (if (gx#stx-pair? _tl3664037604_)
                               (let ((_e3678536843_ (gx#stx-e _tl3664037604_)))
                                 (let ((_tl3678736848_ (##cdr _e3678536843_))
                                       (_hd3678636846_ (##car _e3678536843_)))
                                   (if (gx#stx-pair? _hd3678636846_)
                                       (let ((_e3678836851_
                                              (gx#stx-e _hd3678636846_)))
                                         (let ((_tl3679036856_
                                                (##cdr _e3678836851_))
                                               (_hd3678936854_
                                                (##car _e3678836851_)))
                                           (if (gx#stx-null? _tl3679036856_)
                                               (if (gx#stx-pair?
                                                    _tl3678736848_)
                                                   (let ((_e3679136859_
                                                          (gx#stx-e
                                                           _tl3678736848_)))
                                                     (let ((_tl3679336864_
                                                            (##cdr _e3679136859_))
                                                           (_hd3679236862_
                                                            (##car _e3679136859_)))
                                                       (if (gx#stx-null?
                                                            _tl3679336864_)
                                                           (if (gx#stx-pair?
                                                                _tl3663737596_)
                                                               (let ((_e3679436867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3663737596_)))
                         (let ((_tl3679636872_ (##cdr _e3679436867_))
                               (_hd3679536870_ (##car _e3679436867_)))
                           (if (gx#stx-pair? _hd3679536870_)
                               (let ((_e3679736875_ (gx#stx-e _hd3679536870_)))
                                 (let ((_tl3679936880_ (##cdr _e3679736875_))
                                       (_hd3679836878_ (##car _e3679736875_)))
                                   (if (gx#identifier? _hd3679836878_)
                                       (if (gx#stx-eq? '%#ref _hd3679836878_)
                                           (if (gx#stx-pair? _tl3679936880_)
                                               (let ((_e3680036883_
                                                      (gx#stx-e
                                                       _tl3679936880_)))
                                                 (let ((_tl3680236888_
                                                        (##cdr _e3680036883_))
                                                       (_hd3680136886_
                                                        (##car _e3680036883_)))
                                                   (if (gx#stx-null?
                                                        _tl3680236888_)
                                                       (if (gx#stx-null?
                                                            _tl3679636872_)
                                                           (___kont4060340604_
                                                            _hd3680136886_
                                                            _hd3679236862_
                                                            _hd3678936854_)
                                                           (___kont4060540606_))
                                                       (___kont4060540606_))))
                                               (___kont4060540606_))
                                           (___kont4060540606_))
                                       (___kont4060540606_))))
                               (___kont4060540606_))))
                       (___kont4060540606_))
                   (___kont4060540606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4060540606_))
                                               (___kont4060540606_))))
                                       (___kont4060540606_))))
                               (___kont4060540606_))
                           (___kont4060540606_)))
                   (___kont4060540606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4060540606_))))
                                           (___kont4060540606_))
                                       (___kont4060540606_))
                                   (___kont4060540606_))))
                           (___kont4060540606_))))))
                (_countf-symbol32670_
                 (lambda (_id36610_)
                   (let ((_$e36612_ (gxc#identifier-symbol _id36610_)))
                     (if (if (eq? '##vector-length _$e36612_)
                             '#t
                             (eq? 'vector-length _$e36612_))
                         'vector-length
                         (if (eq? 'values-count _$e36612_)
                             'values-count
                             '#f)))))
                (_eqf-symbol32671_
                 (lambda (_sym36596_)
                   (let ((_$e36598_ _sym36596_))
                     (if (if (eq? '##eq? _$e36598_) '#t (eq? 'eq? _$e36598_))
                         'eq?
                         (if (if (eq? '##eqv? _$e36598_)
                                 '#t
                                 (eq? 'eqv? _$e36598_))
                             'eqv?
                             (if (if (eq? '##equal? _$e36598_)
                                     '#t
                                     (eq? 'equal? _$e36598_))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e36598_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e36598_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?32672_
                 (lambda (_sym36579_)
                   (let ((_$e36581_ _sym36579_))
                     (if (if (eq? 'eq? _$e36581_)
                             '#t
                             (if (eq? 'eqv? _$e36581_)
                                 '#t
                                 (if (eq? 'equal? _$e36581_)
                                     '#t
                                     (if (eq? 'free-identifier=? _$e36581_)
                                         '#t
                                         (eq? 'stx-eq? _$e36581_)))))
                         '#t
                         '#f))))
                (_do-assert!32673_
                 (lambda (_assert36570_ _type36571_ _K36572_)
                   (let ((_unwind-assert36574_ _env-assert32663_)
                         (_unwind-type36575_ _env-type32664_))
                     (begin
                       (set! _env-assert32663_ _assert36570_)
                       (set! _env-type32664_ _type36571_)
                       (let ((_val36577_ (_K36572_)))
                         (begin
                           (set! _env-assert32663_ _unwind-assert36574_)
                           (set! _env-type32664_ _unwind-type36575_)
                           _val36577_))))))
                (_do-bind32674_
                 (lambda (_bind36567_ _K36568_)
                   (if (pair? _bind36567_)
                       (_do-bind!32676_
                        (_fold-bind-env32675_ _bind36567_ _env-bind32665_)
                        _K36568_)
                       (_K36568_))))
                (_fold-bind-env32675_
                 (lambda (_bind36496_ _env36497_)
                   (let _lp36499_ ((_rest36501_ _bind36496_)
                                   (_env36502_ _env36497_))
                     (let* ((_rest3650336511_ _rest36501_)
                            (_else3650536519_ (lambda () _env36502_))
                            (_K3650736555_
                             (lambda (_rest36522_ _bind36523_)
                               (let* ((_bind3652436531_ _bind36523_)
                                      (_E3652636535_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3652436531_)))
                                      (_K3652736543_
                                       (lambda (_expr36538_ _id36539_)
                                         (let ((_sexpr36541_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr36538_)))
                                           (_lp36499_
                                            _rest36522_
                                            (cons (cons _sexpr36541_ _id36539_)
                                                  _env36502_))))))
                                 (if (##pair? _bind3652436531_)
                                     (let ((_hd3652836546_
                                            (##car _bind3652436531_))
                                           (_tl3652936548_
                                            (##cdr _bind3652436531_)))
                                       (let* ((_id36551_ _hd3652836546_)
                                              (_expr36553_ _tl3652936548_))
                                         (_K3652736543_
                                          _expr36553_
                                          _id36551_)))
                                     (_E3652636535_))))))
                       (if (##pair? _rest3650336511_)
                           (let ((_hd3650836558_ (##car _rest3650336511_))
                                 (_tl3650936560_ (##cdr _rest3650336511_)))
                             (let* ((_bind36563_ _hd3650836558_)
                                    (_rest36565_ _tl3650936560_))
                               (_K3650736555_ _rest36565_ _bind36563_)))
                           (_else3650536519_))))))
                (_do-bind!32676_
                 (lambda (_env36489_ _K36490_)
                   (let ((_unwind36492_ _env-bind32665_))
                     (begin
                       (set! _env-bind32665_ _env36489_)
                       (let ((_val36494_ (_K36490_)))
                         (begin
                           (set! _env-bind32665_ _unwind36492_)
                           _val36494_))))))
                (_do-splice!32677_
                 (lambda (_K36483_)
                   (let ((_unwind36485_ _in-splice?32666_))
                     (begin
                       (set! _in-splice?32666_ '#t)
                       (let ((_val36487_ (_K36483_)))
                         (begin
                           (set! _in-splice?32666_ _unwind36485_)
                           _val36487_))))))
                (_optimize-e32678_
                 (lambda (_expr35680_)
                   (let* ((___stx4104341044_ _expr35680_)
                          (_g3568735860_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4104341044_))))
                     (let ((___kont4104541046_
                            (lambda (_L36455_ _L36456_ _L36457_)
                              (let ((_$e36474_ (_assert-e32681_ _L36457_)))
                                (if (eq? '#t _$e36474_)
                                    (_optimize-e32678_ _L36456_)
                                    (if (eq? '#f _$e36474_)
                                        (_optimize-e32678_ _L36455_)
                                        (let ((_K36477_
                                               (_optimize-t__0__4000640007_
                                                _L36456_
                                                _L36457_))
                                              (_E36478_
                                               (_optimize-f__4000840009_
                                                _L36455_
                                                _L36457_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K36477_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E36478_))
                                              _K36477_
                                              (cons '%#if
                                                    (cons _L36457_
                                                          (cons _K36477_
                                                                (cons _E36478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4104741048_
                            (lambda (_L36385_ _L36386_)
                              (let ((_$e36406_ (_lookup-block32686_ _L36386_)))
                                (if _$e36406_
                                    ((lambda (_block36409_)
                                       (if (_nonlinear-block?32688_
                                            _block36409_)
                                           _expr35680_
                                           (_optimize-e32678_
                                            (_inline-block32687_
                                             _block36409_
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g3641036413_
                                                                _g3641136415_)
                                                         (cons _g3641036413_
                                                               _g3641136415_))
                                                       '()
                                                       _L36385_))))))
                                     _$e36406_)
                                    _expr35680_))))
                           (___kont4105141052_
                            (lambda (_L36275_ _L36276_ _L36277_)
                              (let ((_body36296_ (_optimize-e32678_ _L36275_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L36276_
                                               _L36277_)
                                              (foldr2 (lambda (_g3629736301_
                                                               _g3629836303_
                                                               _g3629936305_)
                                                        (cons (cons (cons _g3629836303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3629736301_ '()))
                                  '()))
                      _g3629936305_))
              '()
              _L36276_
              _L36277_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body36296_ '()))))))
                           (___kont4105541056_
                            (lambda (_L36143_ _L36144_ _L36145_)
                              (_bind-e__0__4001440015_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3616336166_
                                                       _g3616436168_)
                                                (cons _g3616336166_
                                                      _g3616436168_))
                                              '()
                                              _L36145_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3617036173_
                                                       _g3617136175_)
                                                (cons _g3617036173_
                                                      _g3617136175_))
                                              '()
                                              _L36144_)))
                               _L36143_)))
                           (___kont4105941060_
                            (lambda (_L36000_
                                     _L36001_
                                     _L36002_
                                     _L36003_
                                     _L36004_)
                              (_do-splice!32677_
                               (lambda ()
                                 (let ((_expr36046_
                                        (_optimize-e32678_ _L36002_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L36004_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3604736050_
                                                        _g3604836052_)
                                                 (cons _g3604736050_
                                                       _g3604836052_))
                                               '()
                                               _L36003_))
                                     (cons _expr36046_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g3605436057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3605536059_)
                         (cons _g3605436057_ _g3605536059_))
                       '()
                       _L36001_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L36000_ '()))))))))
                           (___kont4106541066_ (lambda () _expr35680_)))
                       (let* ((___match4125241253_
                               (lambda (_e3580835872_
                                        _hd3580935875_
                                        _tl3581035877_
                                        _e3581135880_
                                        _hd3581235883_
                                        _tl3581335885_
                                        _e3581435888_
                                        _hd3581535891_
                                        _tl3581635893_
                                        _e3581735896_
                                        _hd3581835899_
                                        _tl3581935901_
                                        _e3582035904_
                                        _hd3582135907_
                                        _tl3582235909_
                                        _e3582335912_
                                        _hd3582435915_
                                        _tl3582535917_
                                        _e3582635920_
                                        _hd3582735923_
                                        _tl3582835925_
                                        _e3582935928_
                                        _hd3583035931_
                                        _tl3583135933_
                                        ___splice4106141062_
                                        _target3583235936_
                                        _tl3583435938_)
                                 (letrec ((_loop3583535941_
                                           (lambda (_hd3583335944_
                                                    _id3583935946_)
                                             (if (gx#stx-pair? _hd3583335944_)
                                                 (let ((_e3583635949_
                                                        (gx#stx-e
                                                         _hd3583335944_)))
                                                   (let ((_lp-tl3583835954_
                                                          (##cdr _e3583635949_))
                                                         (_lp-hd3583735952_
                                                          (##car _e3583635949_)))
                                                     (_loop3583535941_
                                                      _lp-tl3583835954_
                                                      (cons _lp-hd3583735952_
                                                            _id3583935946_))))
                                                 (let ((_id3584035957_
                                                        (reverse _id3583935946_)))
                                                   (if (gx#stx-pair?
                                                        _tl3583135933_)
                                                       (let ((_e3584135960_
                                                              (gx#stx-e
                                                               _tl3583135933_)))
                                                         (let ((_tl3584335965_
                                                                (##cdr _e3584135960_))
                                                               (_hd3584235963_
                                                                (##car _e3584135960_)))
                                                           (if (gx#stx-null?
                                                                _tl3584335965_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3582535917_)
                           (if (gx#stx-pair/null? _tl3581635893_)
                               (let ((___splice4106341064_
                                      (gx#syntax-split-splice
                                       _tl3581635893_
                                       '0)))
                                 (let ((_tl3584635970_
                                        (##vector-ref ___splice4106341064_ '1))
                                       (_target3584435968_
                                        (##vector-ref
                                         ___splice4106341064_
                                         '0)))
                                   (if (gx#stx-null? _tl3584635970_)
                                       (letrec ((_loop3584735973_
                                                 (lambda (_hd3584535976_
                                                          _bind3585135978_)
                                                   (if (gx#stx-pair?
                                                        _hd3584535976_)
                                                       (let ((_e3584835981_
                                                              (gx#stx-e
                                                               _hd3584535976_)))
                                                         (let ((_lp-tl3585035986_
                                                                (##cdr _e3584835981_))
                                                               (_lp-hd3584935984_
                                                                (##car _e3584835981_)))
                                                           (_loop3584735973_
                                                            _lp-tl3585035986_
                                                            (cons _lp-hd3584935984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3585135978_))))
               (let ((_bind3585235989_ (reverse _bind3585135978_)))
                 (if (gx#stx-pair? _tl3581335885_)
                     (let ((_e3585335992_ (gx#stx-e _tl3581335885_)))
                       (let ((_tl3585535997_ (##cdr _e3585335992_))
                             (_hd3585435995_ (##car _e3585335992_)))
                         (if (gx#stx-null? _tl3585535997_)
                             (___kont4105941060_
                              _hd3585435995_
                              _bind3585235989_
                              _hd3584235963_
                              _id3584035957_
                              _hd3582135907_)
                             (___kont4106541066_))))
                     (___kont4106541066_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3584735973_
                                          _target3584435968_
                                          '()))
                                       (___kont4106541066_))))
                               (___kont4106541066_))
                           (___kont4106541066_))
                       (___kont4106541066_))))
               (___kont4106541066_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3583535941_ _target3583235936_ '()))))
                              (___match4118641187_
                               (lambda (_e3577436067_
                                        _hd3577536070_
                                        _tl3577636072_
                                        _e3577736075_
                                        _hd3577836078_
                                        _tl3577936080_
                                        ___splice4105741058_
                                        _target3578036083_
                                        _tl3578236085_)
                                 (letrec ((_loop3578336088_
                                           (lambda (_hd3578136091_
                                                    _expr3578736093_
                                                    _id3578836095_)
                                             (if (gx#stx-pair? _hd3578136091_)
                                                 (let ((_e3578436098_
                                                        (gx#stx-e
                                                         _hd3578136091_)))
                                                   (let ((_lp-tl3578636103_
                                                          (##cdr _e3578436098_))
                                                         (_lp-hd3578536101_
                                                          (##car _e3578436098_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3578536101_)
                                                         (let ((_e3579136106_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3578536101_)))
                   (let ((_tl3579336111_ (##cdr _e3579136106_))
                         (_hd3579236109_ (##car _e3579136106_)))
                     (if (gx#stx-pair? _hd3579236109_)
                         (let ((_e3579436114_ (gx#stx-e _hd3579236109_)))
                           (let ((_tl3579636119_ (##cdr _e3579436114_))
                                 (_hd3579536117_ (##car _e3579436114_)))
                             (if (gx#stx-null? _tl3579636119_)
                                 (if (gx#stx-pair? _tl3579336111_)
                                     (let ((_e3579736122_
                                            (gx#stx-e _tl3579336111_)))
                                       (let ((_tl3579936127_
                                              (##cdr _e3579736122_))
                                             (_hd3579836125_
                                              (##car _e3579736122_)))
                                         (if (gx#stx-null? _tl3579936127_)
                                             (_loop3578336088_
                                              _lp-tl3578636103_
                                              (cons _hd3579836125_
                                                    _expr3578736093_)
                                              (cons _hd3579536117_
                                                    _id3578836095_))
                                             (___kont4106541066_))))
                                     (___kont4106541066_))
                                 (___kont4106541066_))))
                         (___kont4106541066_))))
                 (___kont4106541066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3579036132_
                                                        (reverse _id3578836095_))
                                                       (_expr3578936130_
                                                        (reverse _expr3578736093_)))
                                                   (if (gx#stx-pair?
                                                        _tl3577936080_)
                                                       (let ((_e3580036135_
                                                              (gx#stx-e
                                                               _tl3577936080_)))
                                                         (let ((_tl3580236140_
                                                                (##cdr _e3580036135_))
                                                               (_hd3580136138_
                                                                (##car _e3580036135_)))
                                                           (if (gx#stx-null?
                                                                _tl3580236140_)
                                                               (___kont4105541056_
                                                                _hd3580136138_
                                                                _expr3578936130_
                                                                _id3579036132_)
                                                               (___kont4106541066_))))
                                                       (___kont4106541066_)))))))
                                   (_loop3578336088_
                                    _target3578036083_
                                    '()
                                    '()))))
                              (___match4116241163_
                               (lambda (_e3573636183_
                                        _hd3573736186_
                                        _tl3573836188_
                                        _e3573936191_
                                        _hd3574036194_
                                        _tl3574136196_
                                        ___splice4105341054_
                                        _target3574236199_
                                        _tl3574436201_)
                                 (letrec ((_loop3574536204_
                                           (lambda (_hd3574336207_
                                                    _xid3574936209_
                                                    _id3575036211_)
                                             (if (gx#stx-pair? _hd3574336207_)
                                                 (let ((_e3574636214_
                                                        (gx#stx-e
                                                         _hd3574336207_)))
                                                   (let ((_lp-tl3574836219_
                                                          (##cdr _e3574636214_))
                                                         (_lp-hd3574736217_
                                                          (##car _e3574636214_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3574736217_)
                                                         (let ((_e3575336222_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3574736217_)))
                   (let ((_tl3575536227_ (##cdr _e3575336222_))
                         (_hd3575436225_ (##car _e3575336222_)))
                     (if (gx#stx-pair? _hd3575436225_)
                         (let ((_e3575636230_ (gx#stx-e _hd3575436225_)))
                           (let ((_tl3575836235_ (##cdr _e3575636230_))
                                 (_hd3575736233_ (##car _e3575636230_)))
                             (if (gx#stx-null? _tl3575836235_)
                                 (if (gx#stx-pair? _tl3575536227_)
                                     (let ((_e3575936238_
                                            (gx#stx-e _tl3575536227_)))
                                       (let ((_tl3576136243_
                                              (##cdr _e3575936238_))
                                             (_hd3576036241_
                                              (##car _e3575936238_)))
                                         (if (gx#stx-pair? _hd3576036241_)
                                             (let ((_e3576236246_
                                                    (gx#stx-e _hd3576036241_)))
                                               (let ((_tl3576436251_
                                                      (##cdr _e3576236246_))
                                                     (_hd3576336249_
                                                      (##car _e3576236246_)))
                                                 (if (gx#identifier?
                                                      _hd3576336249_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3576336249_)
                                                         (if (gx#stx-pair?
                                                              _tl3576436251_)
                                                             (let ((_e3576536254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3576436251_)))
                       (let ((_tl3576736259_ (##cdr _e3576536254_))
                             (_hd3576636257_ (##car _e3576536254_)))
                         (if (gx#stx-null? _tl3576736259_)
                             (if (gx#stx-null? _tl3576136243_)
                                 (_loop3574536204_
                                  _lp-tl3574836219_
                                  (cons _hd3576636257_ _xid3574936209_)
                                  (cons _hd3575736233_ _id3575036211_))
                                 (___match4118641187_
                                  _e3573636183_
                                  _hd3573736186_
                                  _tl3573836188_
                                  _e3573936191_
                                  _hd3574036194_
                                  _tl3574136196_
                                  ___splice4105341054_
                                  _target3574236199_
                                  _tl3574436201_))
                             (___match4118641187_
                              _e3573636183_
                              _hd3573736186_
                              _tl3573836188_
                              _e3573936191_
                              _hd3574036194_
                              _tl3574136196_
                              ___splice4105341054_
                              _target3574236199_
                              _tl3574436201_))))
                     (___match4118641187_
                      _e3573636183_
                      _hd3573736186_
                      _tl3573836188_
                      _e3573936191_
                      _hd3574036194_
                      _tl3574136196_
                      ___splice4105341054_
                      _target3574236199_
                      _tl3574436201_))
                 (___match4118641187_
                  _e3573636183_
                  _hd3573736186_
                  _tl3573836188_
                  _e3573936191_
                  _hd3574036194_
                  _tl3574136196_
                  ___splice4105341054_
                  _target3574236199_
                  _tl3574436201_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4118641187_
                                                      _e3573636183_
                                                      _hd3573736186_
                                                      _tl3573836188_
                                                      _e3573936191_
                                                      _hd3574036194_
                                                      _tl3574136196_
                                                      ___splice4105341054_
                                                      _target3574236199_
                                                      _tl3574436201_))))
                                             (___match4118641187_
                                              _e3573636183_
                                              _hd3573736186_
                                              _tl3573836188_
                                              _e3573936191_
                                              _hd3574036194_
                                              _tl3574136196_
                                              ___splice4105341054_
                                              _target3574236199_
                                              _tl3574436201_))))
                                     (___match4118641187_
                                      _e3573636183_
                                      _hd3573736186_
                                      _tl3573836188_
                                      _e3573936191_
                                      _hd3574036194_
                                      _tl3574136196_
                                      ___splice4105341054_
                                      _target3574236199_
                                      _tl3574436201_))
                                 (___match4118641187_
                                  _e3573636183_
                                  _hd3573736186_
                                  _tl3573836188_
                                  _e3573936191_
                                  _hd3574036194_
                                  _tl3574136196_
                                  ___splice4105341054_
                                  _target3574236199_
                                  _tl3574436201_))))
                         (___match4118641187_
                          _e3573636183_
                          _hd3573736186_
                          _tl3573836188_
                          _e3573936191_
                          _hd3574036194_
                          _tl3574136196_
                          ___splice4105341054_
                          _target3574236199_
                          _tl3574436201_))))
                 (___match4118641187_
                  _e3573636183_
                  _hd3573736186_
                  _tl3573836188_
                  _e3573936191_
                  _hd3574036194_
                  _tl3574136196_
                  ___splice4105341054_
                  _target3574236199_
                  _tl3574436201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3575236264_
                                                        (reverse _id3575036211_))
                                                       (_xid3575136262_
                                                        (reverse _xid3574936209_)))
                                                   (if (gx#stx-pair?
                                                        _tl3574136196_)
                                                       (let ((_e3576836267_
                                                              (gx#stx-e
                                                               _tl3574136196_)))
                                                         (let ((_tl3577036272_
                                                                (##cdr _e3576836267_))
                                                               (_hd3576936270_
                                                                (##car _e3576836267_)))
                                                           (if (gx#stx-null?
                                                                _tl3577036272_)
                                                               (___kont4105141052_
                                                                _hd3576936270_
                                                                _xid3575136262_
                                                                _id3575236264_)
                                                               (___match4118641187_
                                                                _e3573636183_
                                                                _hd3573736186_
                                                                _tl3573836188_
                                                                _e3573936191_
                                                                _hd3574036194_
                                                                _tl3574136196_
                                                                ___splice4105341054_
                                                                _target3574236199_
                                                                _tl3574436201_))))
                                                       (___match4118641187_
                                                        _e3573636183_
                                                        _hd3573736186_
                                                        _tl3573836188_
                                                        _e3573936191_
                                                        _hd3574036194_
                                                        _tl3574136196_
                                                        ___splice4105341054_
                                                        _target3574236199_
                                                        _tl3574436201_)))))))
                                   (_loop3574536204_
                                    _target3574236199_
                                    '()
                                    '()))))
                              (___match4113841139_
                               (lambda (_e3570636313_
                                        _hd3570736316_
                                        _tl3570836318_
                                        _e3570936321_
                                        _hd3571036324_
                                        _tl3571136326_
                                        _e3571236329_
                                        _hd3571336332_
                                        _tl3571436334_
                                        _e3571536337_
                                        _hd3571636340_
                                        _tl3571736342_
                                        ___splice4104941050_
                                        _target3571836345_
                                        _tl3572036347_)
                                 (letrec ((_loop3572136350_
                                           (lambda (_hd3571936353_
                                                    _id3572536355_)
                                             (if (gx#stx-pair? _hd3571936353_)
                                                 (let ((_e3572236358_
                                                        (gx#stx-e
                                                         _hd3571936353_)))
                                                   (let ((_lp-tl3572436363_
                                                          (##cdr _e3572236358_))
                                                         (_lp-hd3572336361_
                                                          (##car _e3572236358_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3572336361_)
                                                         (let ((_e3572736366_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3572336361_)))
                   (let ((_tl3572936371_ (##cdr _e3572736366_))
                         (_hd3572836369_ (##car _e3572736366_)))
                     (if (gx#identifier? _hd3572836369_)
                         (if (gx#stx-eq? '%#ref _hd3572836369_)
                             (if (gx#stx-pair? _tl3572936371_)
                                 (let ((_e3573036374_
                                        (gx#stx-e _tl3572936371_)))
                                   (let ((_tl3573236379_ (##cdr _e3573036374_))
                                         (_hd3573136377_
                                          (##car _e3573036374_)))
                                     (if (gx#stx-null? _tl3573236379_)
                                         (_loop3572136350_
                                          _lp-tl3572436363_
                                          (cons _hd3573136377_ _id3572536355_))
                                         (___kont4106541066_))))
                                 (___kont4106541066_))
                             (___kont4106541066_))
                         (___kont4106541066_))))
                 (___kont4106541066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3572636382_
                                                        (reverse _id3572536355_)))
                                                   (___kont4104741048_
                                                    _id3572636382_
                                                    _hd3571636340_))))))
                                   (_loop3572136350_
                                    _target3571836345_
                                    '())))))
                         (if (gx#stx-pair? ___stx4104341044_)
                             (let ((_e3569236423_
                                    (gx#stx-e ___stx4104341044_)))
                               (let ((_tl3569436428_ (##cdr _e3569236423_))
                                     (_hd3569336426_ (##car _e3569236423_)))
                                 (if (gx#identifier? _hd3569336426_)
                                     (if (gx#stx-eq? '%#if _hd3569336426_)
                                         (if (gx#stx-pair? _tl3569436428_)
                                             (let ((_e3569536431_
                                                    (gx#stx-e _tl3569436428_)))
                                               (let ((_tl3569736436_
                                                      (##cdr _e3569536431_))
                                                     (_hd3569636434_
                                                      (##car _e3569536431_)))
                                                 (if (gx#stx-pair?
                                                      _tl3569736436_)
                                                     (let ((_e3569836439_
                                                            (gx#stx-e
                                                             _tl3569736436_)))
                                                       (let ((_tl3570036444_
                                                              (##cdr _e3569836439_))
                                                             (_hd3569936442_
                                                              (##car _e3569836439_)))
                                                         (if (gx#stx-pair?
                                                              _tl3570036444_)
                                                             (let ((_e3570136447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3570036444_)))
                       (let ((_tl3570336452_ (##cdr _e3570136447_))
                             (_hd3570236450_ (##car _e3570136447_)))
                         (if (gx#stx-null? _tl3570336452_)
                             (___kont4104541046_
                              _hd3570236450_
                              _hd3569936442_
                              _hd3569636434_)
                             (___kont4106541066_))))
                     (___kont4106541066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4106541066_))))
                                             (___kont4106541066_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3569336426_)
                                             (if (gx#stx-pair? _tl3569436428_)
                                                 (let ((_e3570936321_
                                                        (gx#stx-e
                                                         _tl3569436428_)))
                                                   (let ((_tl3571136326_
                                                          (##cdr _e3570936321_))
                                                         (_hd3571036324_
                                                          (##car _e3570936321_)))
                                                     (if (gx#stx-pair?
                                                          _hd3571036324_)
                                                         (let ((_e3571236329_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3571036324_)))
                   (let ((_tl3571436334_ (##cdr _e3571236329_))
                         (_hd3571336332_ (##car _e3571236329_)))
                     (if (gx#identifier? _hd3571336332_)
                         (if (gx#stx-eq? '%#ref _hd3571336332_)
                             (if (gx#stx-pair? _tl3571436334_)
                                 (let ((_e3571536337_
                                        (gx#stx-e _tl3571436334_)))
                                   (let ((_tl3571736342_ (##cdr _e3571536337_))
                                         (_hd3571636340_
                                          (##car _e3571536337_)))
                                     (if (gx#stx-null? _tl3571736342_)
                                         (if (gx#stx-pair/null? _tl3571136326_)
                                             (let ((___splice4104941050_
                                                    (gx#syntax-split-splice
                                                     _tl3571136326_
                                                     '0)))
                                               (let ((_tl3572036347_
                                                      (##vector-ref
                                                       ___splice4104941050_
                                                       '1))
                                                     (_target3571836345_
                                                      (##vector-ref
                                                       ___splice4104941050_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3572036347_)
                                                     (___match4113841139_
                                                      _e3569236423_
                                                      _hd3569336426_
                                                      _tl3569436428_
                                                      _e3570936321_
                                                      _hd3571036324_
                                                      _tl3571136326_
                                                      _e3571236329_
                                                      _hd3571336332_
                                                      _tl3571436334_
                                                      _e3571536337_
                                                      _hd3571636340_
                                                      _tl3571736342_
                                                      ___splice4104941050_
                                                      _target3571836345_
                                                      _tl3572036347_)
                                                     (___kont4106541066_))))
                                             (___kont4106541066_))
                                         (___kont4106541066_))))
                                 (___kont4106541066_))
                             (___kont4106541066_))
                         (___kont4106541066_))))
                 (___kont4106541066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4106541066_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3569336426_)
                                                 (if (gx#stx-pair?
                                                      _tl3569436428_)
                                                     (let ((_e3573936191_
                                                            (gx#stx-e
                                                             _tl3569436428_)))
                                                       (let ((_tl3574136196_
                                                              (##cdr _e3573936191_))
                                                             (_hd3574036194_
                                                              (##car _e3573936191_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3574036194_)
                                                             (let ((___splice4105341054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3574036194_ '0)))
                       (let ((_tl3574436201_
                              (##vector-ref ___splice4105341054_ '1))
                             (_target3574236199_
                              (##vector-ref ___splice4105341054_ '0)))
                         (if (gx#stx-null? _tl3574436201_)
                             (___match4116241163_
                              _e3569236423_
                              _hd3569336426_
                              _tl3569436428_
                              _e3573936191_
                              _hd3574036194_
                              _tl3574136196_
                              ___splice4105341054_
                              _target3574236199_
                              _tl3574436201_)
                             (___kont4106541066_))))
                     (___kont4106541066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4106541066_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3569336426_)
                                                     (if (gx#stx-pair?
                                                          _tl3569436428_)
                                                         (let ((_e3581135880_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3569436428_)))
                   (let ((_tl3581335885_ (##cdr _e3581135880_))
                         (_hd3581235883_ (##car _e3581135880_)))
                     (if (gx#stx-pair? _hd3581235883_)
                         (let ((_e3581435888_ (gx#stx-e _hd3581235883_)))
                           (let ((_tl3581635893_ (##cdr _e3581435888_))
                                 (_hd3581535891_ (##car _e3581435888_)))
                             (if (gx#stx-pair? _hd3581535891_)
                                 (let ((_e3581735896_
                                        (gx#stx-e _hd3581535891_)))
                                   (let ((_tl3581935901_ (##cdr _e3581735896_))
                                         (_hd3581835899_
                                          (##car _e3581735896_)))
                                     (if (gx#stx-pair? _hd3581835899_)
                                         (let ((_e3582035904_
                                                (gx#stx-e _hd3581835899_)))
                                           (let ((_tl3582235909_
                                                  (##cdr _e3582035904_))
                                                 (_hd3582135907_
                                                  (##car _e3582035904_)))
                                             (if (gx#stx-null? _tl3582235909_)
                                                 (if (gx#stx-pair?
                                                      _tl3581935901_)
                                                     (let ((_e3582335912_
                                                            (gx#stx-e
                                                             _tl3581935901_)))
                                                       (let ((_tl3582535917_
                                                              (##cdr _e3582335912_))
                                                             (_hd3582435915_
                                                              (##car _e3582335912_)))
                                                         (if (gx#stx-pair?
                                                              _hd3582435915_)
                                                             (let ((_e3582635920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3582435915_)))
                       (let ((_tl3582835925_ (##cdr _e3582635920_))
                             (_hd3582735923_ (##car _e3582635920_)))
                         (if (gx#identifier? _hd3582735923_)
                             (if (gx#stx-eq? '%#lambda _hd3582735923_)
                                 (if (gx#stx-pair? _tl3582835925_)
                                     (let ((_e3582935928_
                                            (gx#stx-e _tl3582835925_)))
                                       (let ((_tl3583135933_
                                              (##cdr _e3582935928_))
                                             (_hd3583035931_
                                              (##car _e3582935928_)))
                                         (if (gx#stx-pair/null? _hd3583035931_)
                                             (let ((___splice4106141062_
                                                    (gx#syntax-split-splice
                                                     _hd3583035931_
                                                     '0)))
                                               (let ((_tl3583435938_
                                                      (##vector-ref
                                                       ___splice4106141062_
                                                       '1))
                                                     (_target3583235936_
                                                      (##vector-ref
                                                       ___splice4106141062_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3583435938_)
                                                     (___match4125241253_
                                                      _e3569236423_
                                                      _hd3569336426_
                                                      _tl3569436428_
                                                      _e3581135880_
                                                      _hd3581235883_
                                                      _tl3581335885_
                                                      _e3581435888_
                                                      _hd3581535891_
                                                      _tl3581635893_
                                                      _e3581735896_
                                                      _hd3581835899_
                                                      _tl3581935901_
                                                      _e3582035904_
                                                      _hd3582135907_
                                                      _tl3582235909_
                                                      _e3582335912_
                                                      _hd3582435915_
                                                      _tl3582535917_
                                                      _e3582635920_
                                                      _hd3582735923_
                                                      _tl3582835925_
                                                      _e3582935928_
                                                      _hd3583035931_
                                                      _tl3583135933_
                                                      ___splice4106141062_
                                                      _target3583235936_
                                                      _tl3583435938_)
                                                     (___kont4106541066_))))
                                             (___kont4106541066_))))
                                     (___kont4106541066_))
                                 (___kont4106541066_))
                             (___kont4106541066_))))
                     (___kont4106541066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4106541066_))
                                                 (___kont4106541066_))))
                                         (___kont4106541066_))))
                                 (___kont4106541066_))))
                         (___kont4106541066_))))
                 (___kont4106541066_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4106541066_)))))
                                     (___kont4106541066_))))
                             (___kont4106541066_)))))))
                (_optimize-t__4000440005_
                 (lambda (_expr35663_ _test35664_ _continue35665_)
                   (_do-assert32667_
                    (cons (cons _test35664_ '#t) '())
                    (lambda () (_continue35665_ _expr35663_)))))
                (_optimize-t__0__4000640007_
                 (lambda (_expr35671_ _test35672_)
                   (let ((_continue35674_ _optimize-e32678_))
                     (_optimize-t__4000440005_
                      _expr35671_
                      _test35672_
                      _continue35674_))))
                (_optimize-t32679_
                 (lambda _g43106_
                   (let ((_g43105_ (length _g43106_)))
                     (cond ((##fx= _g43105_ 2)
                            (apply _optimize-t__0__4000640007_ _g43106_))
                           ((##fx= _g43105_ 3)
                            (apply _optimize-t__4000440005_ _g43106_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g43106_))))))
                (_optimize-f__4000840009_
                 (lambda (_expr34748_ _test34749_)
                   (_do-assert32667_
                    (if _test34749_ (cons (cons _test34749_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4129341294_ _expr34748_)
                             (_g3475734930_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4129341294_))))
                        (let ((___kont4129541296_
                               (lambda (_L35518_ _L35519_)
                                 (let ((_$e35539_
                                        (_lookup-block32686_ _L35519_)))
                                   (if _$e35539_
                                       ((lambda (_block35542_)
                                          (if (_nonlinear-block?32688_
                                               _block35542_)
                                              _expr34748_
                                              (let* ((_inline35551_
                                                      (_inline-block32687_
                                                       _block35542_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g3554335546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3554435548_)
                           (cons _g3554335546_ _g3554435548_))
                         '()
                         _L35518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4125541256_
                                                      _inline35551_)
                                                     (_g3555435575_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4125541256_))))
                                                (let ((___kont4125741258_
                                                       (lambda (_L35619_
                                                                _L35620_
                                                                _L35621_)
                                                         (let ((_$e35643_
                                                                (_assert-e32681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L35621_)))
                   (if (eq? '#t _$e35643_)
                       (if _in-splice?32666_
                           (_optimize-f__0__4001040011_ _L35620_)
                           (_optimize-e32678_ _L35620_))
                       (if (eq? '#f _$e35643_)
                           (_optimize-f__0__4001040011_ _L35619_)
                           _expr34748_)))))
              (___kont4125941260_
               (lambda () (_optimize-f__0__4001040011_ _inline35551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4125541256_)
                                                      (let ((_e3555935587_
                                                             (gx#stx-e
                                                              ___stx4125541256_)))
                                                        (let ((_tl3556135592_
                                                               (##cdr _e3555935587_))
                                                              (_hd3556035590_
                                                               (##car _e3555935587_)))
                                                          (if (gx#identifier?
                                                               _hd3556035590_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3556035590_)
                          (if (gx#stx-pair? _tl3556135592_)
                              (let ((_e3556235595_ (gx#stx-e _tl3556135592_)))
                                (let ((_tl3556435600_ (##cdr _e3556235595_))
                                      (_hd3556335598_ (##car _e3556235595_)))
                                  (if (gx#stx-pair? _tl3556435600_)
                                      (let ((_e3556535603_
                                             (gx#stx-e _tl3556435600_)))
                                        (let ((_tl3556735608_
                                               (##cdr _e3556535603_))
                                              (_hd3556635606_
                                               (##car _e3556535603_)))
                                          (if (gx#stx-pair? _tl3556735608_)
                                              (let ((_e3556835611_
                                                     (gx#stx-e
                                                      _tl3556735608_)))
                                                (let ((_tl3557035616_
                                                       (##cdr _e3556835611_))
                                                      (_hd3556935614_
                                                       (##car _e3556835611_)))
                                                  (if (gx#stx-null?
                                                       _tl3557035616_)
                                                      (___kont4125741258_
                                                       _hd3556935614_
                                                       _hd3556635606_
                                                       _hd3556335598_)
                                                      (___kont4125941260_))))
                                              (___kont4125941260_))))
                                      (___kont4125941260_))))
                              (___kont4125941260_))
                          (___kont4125941260_))
                      (___kont4125941260_))))
              (___kont4125941260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e35539_)
                                       _expr34748_))))
                              (___kont4129941300_
                               (lambda (_L35416_ _L35417_ _L35418_)
                                 (let ((_$e35435_ (_assert-e32681_ _L35418_)))
                                   (if (eq? '#t _$e35435_)
                                       (if _in-splice?32666_
                                           (_optimize-f__0__4001040011_
                                            _L35417_)
                                           (_optimize-e32678_ _L35417_))
                                       (if (eq? '#f _$e35435_)
                                           (_optimize-f__0__4001040011_
                                            _L35416_)
                                           (let ((_K35438_
                                                  (_optimize-t__4000440005_
                                                   _L35417_
                                                   _L35418_
                                                   _optimize-f32680_))
                                                 (_E35439_
                                                  (_optimize-f__4000840009_
                                                   _L35416_
                                                   _L35418_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K35438_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E35439_))
                                                 _K35438_
                                                 (cons '%#if
                                                       (cons _L35418_
                                                             (cons _K35438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E35439_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4130141302_
                               (lambda (_L35346_ _L35347_ _L35348_)
                                 (let ((_body35367_
                                        (_optimize-f__0__4001040011_
                                         _L35346_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L35347_
                                                  _L35348_)
                                                 (foldr2 (lambda (_g3536835372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3536935374_
                          _g3537035376_)
                   (cons (cons (cons _g3536935374_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3536835372_ '()))
                                     '()))
                         _g3537035376_))
                 '()
                 _L35347_
                 _L35348_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body35367_ '()))))))
                              (___kont4130541306_
                               (lambda (_L35214_ _L35215_ _L35216_)
                                 (_bind-e__4001240013_
                                  (map cons
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3523435237_
                                                          _g3523535239_)
                                                   (cons _g3523435237_
                                                         _g3523535239_))
                                                 '()
                                                 _L35216_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3524135244_
                                                          _g3524235246_)
                                                   (cons _g3524135244_
                                                         _g3524235246_))
                                                 '()
                                                 _L35215_)))
                                  _L35214_
                                  _optimize-f32680_)))
                              (___kont4130941310_
                               (lambda (_L35070_
                                        _L35071_
                                        _L35072_
                                        _L35073_
                                        _L35074_)
                                 (_do-splice!32677_
                                  (lambda ()
                                    (let ((_expr35117_
                                           (_optimize-f__0__4001040011_
                                            _L35072_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L35074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (begin
                                          '#!void
                                          (foldr1 (lambda (_g3511835121_
                                                           _g3511935123_)
                                                    (cons _g3511835121_
                                                          _g3511935123_))
                                                  '()
                                                  _L35073_))
                                        (cons _expr35117_ '())))
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3512535128_ _g3512635130_)
                            (cons _g3512535128_ _g3512635130_))
                          '()
                          _L35071_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L35070_ '()))))))))
                              (___kont4131541316_ (lambda () _expr34748_)))
                          (let* ((___match4150241503_
                                  (lambda (_e3487834942_
                                           _hd3487934945_
                                           _tl3488034947_
                                           _e3488134950_
                                           _hd3488234953_
                                           _tl3488334955_
                                           _e3488434958_
                                           _hd3488534961_
                                           _tl3488634963_
                                           _e3488734966_
                                           _hd3488834969_
                                           _tl3488934971_
                                           _e3489034974_
                                           _hd3489134977_
                                           _tl3489234979_
                                           _e3489334982_
                                           _hd3489434985_
                                           _tl3489534987_
                                           _e3489634990_
                                           _hd3489734993_
                                           _tl3489834995_
                                           _e3489934998_
                                           _hd3490035001_
                                           _tl3490135003_
                                           ___splice4131141312_
                                           _target3490235006_
                                           _tl3490435008_)
                                    (letrec ((_loop3490535011_
                                              (lambda (_hd3490335014_
                                                       _id3490935016_)
                                                (if (gx#stx-pair?
                                                     _hd3490335014_)
                                                    (let ((_e3490635019_
                                                           (gx#stx-e
                                                            _hd3490335014_)))
                                                      (let ((_lp-tl3490835024_
                                                             (##cdr _e3490635019_))
                                                            (_lp-hd3490735022_
                                                             (##car _e3490635019_)))
                                                        (_loop3490535011_
                                                         _lp-tl3490835024_
                                                         (cons _lp-hd3490735022_
                                                               _id3490935016_))))
                                                    (let ((_id3491035027_
                                                           (reverse _id3490935016_)))
                                                      (if (gx#stx-pair?
                                                           _tl3490135003_)
                                                          (let ((_e3491135030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3490135003_)))
                    (let ((_tl3491335035_ (##cdr _e3491135030_))
                          (_hd3491235033_ (##car _e3491135030_)))
                      (if (gx#stx-null? _tl3491335035_)
                          (if (gx#stx-null? _tl3489534987_)
                              (if (gx#stx-pair/null? _tl3488634963_)
                                  (let ((___splice4131341314_
                                         (gx#syntax-split-splice
                                          _tl3488634963_
                                          '0)))
                                    (let ((_tl3491635040_
                                           (##vector-ref
                                            ___splice4131341314_
                                            '1))
                                          (_target3491435038_
                                           (##vector-ref
                                            ___splice4131341314_
                                            '0)))
                                      (if (gx#stx-null? _tl3491635040_)
                                          (letrec ((_loop3491735043_
                                                    (lambda (_hd3491535046_
                                                             _bind3492135048_)
                                                      (if (gx#stx-pair?
                                                           _hd3491535046_)
                                                          (let ((_e3491835051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3491535046_)))
                    (let ((_lp-tl3492035056_ (##cdr _e3491835051_))
                          (_lp-hd3491935054_ (##car _e3491835051_)))
                      (_loop3491735043_
                       _lp-tl3492035056_
                       (cons _lp-hd3491935054_ _bind3492135048_))))
                  (let ((_bind3492235059_ (reverse _bind3492135048_)))
                    (if (gx#stx-pair? _tl3488334955_)
                        (let ((_e3492335062_ (gx#stx-e _tl3488334955_)))
                          (let ((_tl3492535067_ (##cdr _e3492335062_))
                                (_hd3492435065_ (##car _e3492335062_)))
                            (if (gx#stx-null? _tl3492535067_)
                                (___kont4130941310_
                                 _hd3492435065_
                                 _bind3492235059_
                                 _hd3491235033_
                                 _id3491035027_
                                 _hd3489134977_)
                                (___kont4131541316_))))
                        (___kont4131541316_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3491735043_
                                             _target3491435038_
                                             '()))
                                          (___kont4131541316_))))
                                  (___kont4131541316_))
                              (___kont4131541316_))
                          (___kont4131541316_))))
                  (___kont4131541316_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3490535011_
                                       _target3490235006_
                                       '()))))
                                 (___match4143641437_
                                  (lambda (_e3484435138_
                                           _hd3484535141_
                                           _tl3484635143_
                                           _e3484735146_
                                           _hd3484835149_
                                           _tl3484935151_
                                           ___splice4130741308_
                                           _target3485035154_
                                           _tl3485235156_)
                                    (letrec ((_loop3485335159_
                                              (lambda (_hd3485135162_
                                                       _expr3485735164_
                                                       _id3485835166_)
                                                (if (gx#stx-pair?
                                                     _hd3485135162_)
                                                    (let ((_e3485435169_
                                                           (gx#stx-e
                                                            _hd3485135162_)))
                                                      (let ((_lp-tl3485635174_
                                                             (##cdr _e3485435169_))
                                                            (_lp-hd3485535172_
                                                             (##car _e3485435169_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3485535172_)
                                                            (let ((_e3486135177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3485535172_)))
                      (let ((_tl3486335182_ (##cdr _e3486135177_))
                            (_hd3486235180_ (##car _e3486135177_)))
                        (if (gx#stx-pair? _hd3486235180_)
                            (let ((_e3486435185_ (gx#stx-e _hd3486235180_)))
                              (let ((_tl3486635190_ (##cdr _e3486435185_))
                                    (_hd3486535188_ (##car _e3486435185_)))
                                (if (gx#stx-null? _tl3486635190_)
                                    (if (gx#stx-pair? _tl3486335182_)
                                        (let ((_e3486735193_
                                               (gx#stx-e _tl3486335182_)))
                                          (let ((_tl3486935198_
                                                 (##cdr _e3486735193_))
                                                (_hd3486835196_
                                                 (##car _e3486735193_)))
                                            (if (gx#stx-null? _tl3486935198_)
                                                (_loop3485335159_
                                                 _lp-tl3485635174_
                                                 (cons _hd3486835196_
                                                       _expr3485735164_)
                                                 (cons _hd3486535188_
                                                       _id3485835166_))
                                                (___kont4131541316_))))
                                        (___kont4131541316_))
                                    (___kont4131541316_))))
                            (___kont4131541316_))))
                    (___kont4131541316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3486035203_
                                                           (reverse _id3485835166_))
                                                          (_expr3485935201_
                                                           (reverse _expr3485735164_)))
                                                      (if (gx#stx-pair?
                                                           _tl3484935151_)
                                                          (let ((_e3487035206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3484935151_)))
                    (let ((_tl3487235211_ (##cdr _e3487035206_))
                          (_hd3487135209_ (##car _e3487035206_)))
                      (if (gx#stx-null? _tl3487235211_)
                          (___kont4130541306_
                           _hd3487135209_
                           _expr3485935201_
                           _id3486035203_)
                          (___kont4131541316_))))
                  (___kont4131541316_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3485335159_
                                       _target3485035154_
                                       '()
                                       '()))))
                                 (___match4141241413_
                                  (lambda (_e3480635254_
                                           _hd3480735257_
                                           _tl3480835259_
                                           _e3480935262_
                                           _hd3481035265_
                                           _tl3481135267_
                                           ___splice4130341304_
                                           _target3481235270_
                                           _tl3481435272_)
                                    (letrec ((_loop3481535275_
                                              (lambda (_hd3481335278_
                                                       _xid3481935280_
                                                       _id3482035282_)
                                                (if (gx#stx-pair?
                                                     _hd3481335278_)
                                                    (let ((_e3481635285_
                                                           (gx#stx-e
                                                            _hd3481335278_)))
                                                      (let ((_lp-tl3481835290_
                                                             (##cdr _e3481635285_))
                                                            (_lp-hd3481735288_
                                                             (##car _e3481635285_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3481735288_)
                                                            (let ((_e3482335293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3481735288_)))
                      (let ((_tl3482535298_ (##cdr _e3482335293_))
                            (_hd3482435296_ (##car _e3482335293_)))
                        (if (gx#stx-pair? _hd3482435296_)
                            (let ((_e3482635301_ (gx#stx-e _hd3482435296_)))
                              (let ((_tl3482835306_ (##cdr _e3482635301_))
                                    (_hd3482735304_ (##car _e3482635301_)))
                                (if (gx#stx-null? _tl3482835306_)
                                    (if (gx#stx-pair? _tl3482535298_)
                                        (let ((_e3482935309_
                                               (gx#stx-e _tl3482535298_)))
                                          (let ((_tl3483135314_
                                                 (##cdr _e3482935309_))
                                                (_hd3483035312_
                                                 (##car _e3482935309_)))
                                            (if (gx#stx-pair? _hd3483035312_)
                                                (let ((_e3483235317_
                                                       (gx#stx-e
                                                        _hd3483035312_)))
                                                  (let ((_tl3483435322_
                                                         (##cdr _e3483235317_))
                                                        (_hd3483335320_
                                                         (##car _e3483235317_)))
                                                    (if (gx#identifier?
                                                         _hd3483335320_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3483335320_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3483435322_)
                        (let ((_e3483535325_ (gx#stx-e _tl3483435322_)))
                          (let ((_tl3483735330_ (##cdr _e3483535325_))
                                (_hd3483635328_ (##car _e3483535325_)))
                            (if (gx#stx-null? _tl3483735330_)
                                (if (gx#stx-null? _tl3483135314_)
                                    (_loop3481535275_
                                     _lp-tl3481835290_
                                     (cons _hd3483635328_ _xid3481935280_)
                                     (cons _hd3482735304_ _id3482035282_))
                                    (___match4143641437_
                                     _e3480635254_
                                     _hd3480735257_
                                     _tl3480835259_
                                     _e3480935262_
                                     _hd3481035265_
                                     _tl3481135267_
                                     ___splice4130341304_
                                     _target3481235270_
                                     _tl3481435272_))
                                (___match4143641437_
                                 _e3480635254_
                                 _hd3480735257_
                                 _tl3480835259_
                                 _e3480935262_
                                 _hd3481035265_
                                 _tl3481135267_
                                 ___splice4130341304_
                                 _target3481235270_
                                 _tl3481435272_))))
                        (___match4143641437_
                         _e3480635254_
                         _hd3480735257_
                         _tl3480835259_
                         _e3480935262_
                         _hd3481035265_
                         _tl3481135267_
                         ___splice4130341304_
                         _target3481235270_
                         _tl3481435272_))
                    (___match4143641437_
                     _e3480635254_
                     _hd3480735257_
                     _tl3480835259_
                     _e3480935262_
                     _hd3481035265_
                     _tl3481135267_
                     ___splice4130341304_
                     _target3481235270_
                     _tl3481435272_))
                (___match4143641437_
                 _e3480635254_
                 _hd3480735257_
                 _tl3480835259_
                 _e3480935262_
                 _hd3481035265_
                 _tl3481135267_
                 ___splice4130341304_
                 _target3481235270_
                 _tl3481435272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4143641437_
                                                 _e3480635254_
                                                 _hd3480735257_
                                                 _tl3480835259_
                                                 _e3480935262_
                                                 _hd3481035265_
                                                 _tl3481135267_
                                                 ___splice4130341304_
                                                 _target3481235270_
                                                 _tl3481435272_))))
                                        (___match4143641437_
                                         _e3480635254_
                                         _hd3480735257_
                                         _tl3480835259_
                                         _e3480935262_
                                         _hd3481035265_
                                         _tl3481135267_
                                         ___splice4130341304_
                                         _target3481235270_
                                         _tl3481435272_))
                                    (___match4143641437_
                                     _e3480635254_
                                     _hd3480735257_
                                     _tl3480835259_
                                     _e3480935262_
                                     _hd3481035265_
                                     _tl3481135267_
                                     ___splice4130341304_
                                     _target3481235270_
                                     _tl3481435272_))))
                            (___match4143641437_
                             _e3480635254_
                             _hd3480735257_
                             _tl3480835259_
                             _e3480935262_
                             _hd3481035265_
                             _tl3481135267_
                             ___splice4130341304_
                             _target3481235270_
                             _tl3481435272_))))
                    (___match4143641437_
                     _e3480635254_
                     _hd3480735257_
                     _tl3480835259_
                     _e3480935262_
                     _hd3481035265_
                     _tl3481135267_
                     ___splice4130341304_
                     _target3481235270_
                     _tl3481435272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3482235335_
                                                           (reverse _id3482035282_))
                                                          (_xid3482135333_
                                                           (reverse _xid3481935280_)))
                                                      (if (gx#stx-pair?
                                                           _tl3481135267_)
                                                          (let ((_e3483835338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3481135267_)))
                    (let ((_tl3484035343_ (##cdr _e3483835338_))
                          (_hd3483935341_ (##car _e3483835338_)))
                      (if (gx#stx-null? _tl3484035343_)
                          (___kont4130141302_
                           _hd3483935341_
                           _xid3482135333_
                           _id3482235335_)
                          (___match4143641437_
                           _e3480635254_
                           _hd3480735257_
                           _tl3480835259_
                           _e3480935262_
                           _hd3481035265_
                           _tl3481135267_
                           ___splice4130341304_
                           _target3481235270_
                           _tl3481435272_))))
                  (___match4143641437_
                   _e3480635254_
                   _hd3480735257_
                   _tl3480835259_
                   _e3480935262_
                   _hd3481035265_
                   _tl3481135267_
                   ___splice4130341304_
                   _target3481235270_
                   _tl3481435272_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3481535275_
                                       _target3481235270_
                                       '()
                                       '()))))
                                 (___match4135841359_
                                  (lambda (_e3476135446_
                                           _hd3476235449_
                                           _tl3476335451_
                                           _e3476435454_
                                           _hd3476535457_
                                           _tl3476635459_
                                           _e3476735462_
                                           _hd3476835465_
                                           _tl3476935467_
                                           _e3477035470_
                                           _hd3477135473_
                                           _tl3477235475_
                                           ___splice4129741298_
                                           _target3477335478_
                                           _tl3477535480_)
                                    (letrec ((_loop3477635483_
                                              (lambda (_hd3477435486_
                                                       _id3478035488_)
                                                (if (gx#stx-pair?
                                                     _hd3477435486_)
                                                    (let ((_e3477735491_
                                                           (gx#stx-e
                                                            _hd3477435486_)))
                                                      (let ((_lp-tl3477935496_
                                                             (##cdr _e3477735491_))
                                                            (_lp-hd3477835494_
                                                             (##car _e3477735491_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3477835494_)
                                                            (let ((_e3478235499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3477835494_)))
                      (let ((_tl3478435504_ (##cdr _e3478235499_))
                            (_hd3478335502_ (##car _e3478235499_)))
                        (if (gx#identifier? _hd3478335502_)
                            (if (gx#stx-eq? '%#ref _hd3478335502_)
                                (if (gx#stx-pair? _tl3478435504_)
                                    (let ((_e3478535507_
                                           (gx#stx-e _tl3478435504_)))
                                      (let ((_tl3478735512_
                                             (##cdr _e3478535507_))
                                            (_hd3478635510_
                                             (##car _e3478535507_)))
                                        (if (gx#stx-null? _tl3478735512_)
                                            (_loop3477635483_
                                             _lp-tl3477935496_
                                             (cons _hd3478635510_
                                                   _id3478035488_))
                                            (___kont4131541316_))))
                                    (___kont4131541316_))
                                (___kont4131541316_))
                            (___kont4131541316_))))
                    (___kont4131541316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3478135515_
                                                           (reverse _id3478035488_)))
                                                      (___kont4129541296_
                                                       _id3478135515_
                                                       _hd3477135473_))))))
                                      (_loop3477635483_
                                       _target3477335478_
                                       '())))))
                            (if (gx#stx-pair? ___stx4129341294_)
                                (let ((_e3476135446_
                                       (gx#stx-e ___stx4129341294_)))
                                  (let ((_tl3476335451_ (##cdr _e3476135446_))
                                        (_hd3476235449_ (##car _e3476135446_)))
                                    (if (gx#identifier? _hd3476235449_)
                                        (if (gx#stx-eq? '%#call _hd3476235449_)
                                            (if (gx#stx-pair? _tl3476335451_)
                                                (let ((_e3476435454_
                                                       (gx#stx-e
                                                        _tl3476335451_)))
                                                  (let ((_tl3476635459_
                                                         (##cdr _e3476435454_))
                                                        (_hd3476535457_
                                                         (##car _e3476435454_)))
                                                    (if (gx#stx-pair?
                                                         _hd3476535457_)
                                                        (let ((_e3476735462_
                                                               (gx#stx-e
                                                                _hd3476535457_)))
                                                          (let ((_tl3476935467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3476735462_))
                        (_hd3476835465_ (##car _e3476735462_)))
                    (if (gx#identifier? _hd3476835465_)
                        (if (gx#stx-eq? '%#ref _hd3476835465_)
                            (if (gx#stx-pair? _tl3476935467_)
                                (let ((_e3477035470_
                                       (gx#stx-e _tl3476935467_)))
                                  (let ((_tl3477235475_ (##cdr _e3477035470_))
                                        (_hd3477135473_ (##car _e3477035470_)))
                                    (if (gx#stx-null? _tl3477235475_)
                                        (if (gx#stx-pair/null? _tl3476635459_)
                                            (let ((___splice4129741298_
                                                   (gx#syntax-split-splice
                                                    _tl3476635459_
                                                    '0)))
                                              (let ((_tl3477535480_
                                                     (##vector-ref
                                                      ___splice4129741298_
                                                      '1))
                                                    (_target3477335478_
                                                     (##vector-ref
                                                      ___splice4129741298_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3477535480_)
                                                    (___match4135841359_
                                                     _e3476135446_
                                                     _hd3476235449_
                                                     _tl3476335451_
                                                     _e3476435454_
                                                     _hd3476535457_
                                                     _tl3476635459_
                                                     _e3476735462_
                                                     _hd3476835465_
                                                     _tl3476935467_
                                                     _e3477035470_
                                                     _hd3477135473_
                                                     _tl3477235475_
                                                     ___splice4129741298_
                                                     _target3477335478_
                                                     _tl3477535480_)
                                                    (___kont4131541316_))))
                                            (___kont4131541316_))
                                        (___kont4131541316_))))
                                (___kont4131541316_))
                            (___kont4131541316_))
                        (___kont4131541316_))))
                (___kont4131541316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4131541316_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3476235449_)
                                                (if (gx#stx-pair?
                                                     _tl3476335451_)
                                                    (let ((_e3479435392_
                                                           (gx#stx-e
                                                            _tl3476335451_)))
                                                      (let ((_tl3479635397_
                                                             (##cdr _e3479435392_))
                                                            (_hd3479535395_
                                                             (##car _e3479435392_)))
                                                        (if (gx#stx-pair?
                                                             _tl3479635397_)
                                                            (let ((_e3479735400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3479635397_)))
                      (let ((_tl3479935405_ (##cdr _e3479735400_))
                            (_hd3479835403_ (##car _e3479735400_)))
                        (if (gx#stx-pair? _tl3479935405_)
                            (let ((_e3480035408_ (gx#stx-e _tl3479935405_)))
                              (let ((_tl3480235413_ (##cdr _e3480035408_))
                                    (_hd3480135411_ (##car _e3480035408_)))
                                (if (gx#stx-null? _tl3480235413_)
                                    (___kont4129941300_
                                     _hd3480135411_
                                     _hd3479835403_
                                     _hd3479535395_)
                                    (___kont4131541316_))))
                            (___kont4131541316_))))
                    (___kont4131541316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4131541316_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3476235449_)
                                                    (if (gx#stx-pair?
                                                         _tl3476335451_)
                                                        (let ((_e3480935262_
                                                               (gx#stx-e
                                                                _tl3476335451_)))
                                                          (let ((_tl3481135267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3480935262_))
                        (_hd3481035265_ (##car _e3480935262_)))
                    (if (gx#stx-pair/null? _hd3481035265_)
                        (let ((___splice4130341304_
                               (gx#syntax-split-splice _hd3481035265_ '0)))
                          (let ((_tl3481435272_
                                 (##vector-ref ___splice4130341304_ '1))
                                (_target3481235270_
                                 (##vector-ref ___splice4130341304_ '0)))
                            (if (gx#stx-null? _tl3481435272_)
                                (___match4141241413_
                                 _e3476135446_
                                 _hd3476235449_
                                 _tl3476335451_
                                 _e3480935262_
                                 _hd3481035265_
                                 _tl3481135267_
                                 ___splice4130341304_
                                 _target3481235270_
                                 _tl3481435272_)
                                (___kont4131541316_))))
                        (___kont4131541316_))))
                (___kont4131541316_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3476235449_)
                                                        (if (gx#stx-pair?
                                                             _tl3476335451_)
                                                            (let ((_e3488134950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3476335451_)))
                      (let ((_tl3488334955_ (##cdr _e3488134950_))
                            (_hd3488234953_ (##car _e3488134950_)))
                        (if (gx#stx-pair? _hd3488234953_)
                            (let ((_e3488434958_ (gx#stx-e _hd3488234953_)))
                              (let ((_tl3488634963_ (##cdr _e3488434958_))
                                    (_hd3488534961_ (##car _e3488434958_)))
                                (if (gx#stx-pair? _hd3488534961_)
                                    (let ((_e3488734966_
                                           (gx#stx-e _hd3488534961_)))
                                      (let ((_tl3488934971_
                                             (##cdr _e3488734966_))
                                            (_hd3488834969_
                                             (##car _e3488734966_)))
                                        (if (gx#stx-pair? _hd3488834969_)
                                            (let ((_e3489034974_
                                                   (gx#stx-e _hd3488834969_)))
                                              (let ((_tl3489234979_
                                                     (##cdr _e3489034974_))
                                                    (_hd3489134977_
                                                     (##car _e3489034974_)))
                                                (if (gx#stx-null?
                                                     _tl3489234979_)
                                                    (if (gx#stx-pair?
                                                         _tl3488934971_)
                                                        (let ((_e3489334982_
                                                               (gx#stx-e
                                                                _tl3488934971_)))
                                                          (let ((_tl3489534987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3489334982_))
                        (_hd3489434985_ (##car _e3489334982_)))
                    (if (gx#stx-pair? _hd3489434985_)
                        (let ((_e3489634990_ (gx#stx-e _hd3489434985_)))
                          (let ((_tl3489834995_ (##cdr _e3489634990_))
                                (_hd3489734993_ (##car _e3489634990_)))
                            (if (gx#identifier? _hd3489734993_)
                                (if (gx#stx-eq? '%#lambda _hd3489734993_)
                                    (if (gx#stx-pair? _tl3489834995_)
                                        (let ((_e3489934998_
                                               (gx#stx-e _tl3489834995_)))
                                          (let ((_tl3490135003_
                                                 (##cdr _e3489934998_))
                                                (_hd3490035001_
                                                 (##car _e3489934998_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3490035001_)
                                                (let ((___splice4131141312_
                                                       (gx#syntax-split-splice
                                                        _hd3490035001_
                                                        '0)))
                                                  (let ((_tl3490435008_
                                                         (##vector-ref
                                                          ___splice4131141312_
                                                          '1))
                                                        (_target3490235006_
                                                         (##vector-ref
                                                          ___splice4131141312_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3490435008_)
                                                        (___match4150241503_
                                                         _e3476135446_
                                                         _hd3476235449_
                                                         _tl3476335451_
                                                         _e3488134950_
                                                         _hd3488234953_
                                                         _tl3488334955_
                                                         _e3488434958_
                                                         _hd3488534961_
                                                         _tl3488634963_
                                                         _e3488734966_
                                                         _hd3488834969_
                                                         _tl3488934971_
                                                         _e3489034974_
                                                         _hd3489134977_
                                                         _tl3489234979_
                                                         _e3489334982_
                                                         _hd3489434985_
                                                         _tl3489534987_
                                                         _e3489634990_
                                                         _hd3489734993_
                                                         _tl3489834995_
                                                         _e3489934998_
                                                         _hd3490035001_
                                                         _tl3490135003_
                                                         ___splice4131141312_
                                                         _target3490235006_
                                                         _tl3490435008_)
                                                        (___kont4131541316_))))
                                                (___kont4131541316_))))
                                        (___kont4131541316_))
                                    (___kont4131541316_))
                                (___kont4131541316_))))
                        (___kont4131541316_))))
                (___kont4131541316_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4131541316_))))
                                            (___kont4131541316_))))
                                    (___kont4131541316_))))
                            (___kont4131541316_))))
                    (___kont4131541316_))
                (___kont4131541316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4131541316_))))
                                (___kont4131541316_)))))))))
                (_optimize-f__0__4001040011_
                 (lambda (_expr35655_)
                   (let ((_test35657_ '#f))
                     (_optimize-f__4000840009_ _expr35655_ _test35657_))))
                (_optimize-f32680_
                 (lambda _g43108_
                   (let ((_g43107_ (length _g43108_)))
                     (cond ((##fx= _g43107_ 1)
                            (apply _optimize-f__0__4001040011_ _g43108_))
                           ((##fx= _g43107_ 2)
                            (apply _optimize-f__4000840009_ _g43108_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g43108_))))))
                (_assert-e32681_
                 (lambda (_expr33689_)
                   (let* ((_sexpr33691_
                           (gxc#apply-generate-runtime-repr _expr33689_))
                          (_$e33693_ (assoc _sexpr33691_ _env-assert32663_)))
                     (if _$e33693_
                         (cdr _$e33693_)
                         (let _assert33696_ ((_expr33698_ _expr33689_))
                           (let* ((___stx4159941600_ _expr33698_)
                                  (_g3370633885_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4159941600_))))
                             (let ((___kont4160141602_
                                    (lambda (_L34716_ _L34717_)
                                      (let ((_$e34739_
                                             (_predicate-type32668_ _L34717_)))
                                        (if _$e34739_
                                            ((lambda (_t34742_)
                                               (_assert-type32682_
                                                _L34716_
                                                _t34742_))
                                             _$e34739_)
                                            '#!void))))
                                   (___kont4160341604_
                                    (lambda (_L34409_ _L34410_ _L34411_)
                                      (let ((_$e34436_
                                             (gxc#identifier-symbol _L34411_)))
                                        (if (if (eq? '##fx= _$e34436_)
                                                '#t
                                                (eq? 'fx= _$e34436_))
                                            (let* ((___stx4150541506_ _L34410_)
                                                   (_g3444334472_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4150541506_))))
                                              (let ((___kont4150741508_
                                                     (lambda (_L34540_
                                                              _L34541_)
                                                       (let ((_$e34566_
                                                              (_countf-symbol32670_
                                                               _L34541_)))
                                                         (if _$e34566_
                                                             ((lambda (_sym34569_)
                                                                (_assert-count32683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L34540_
                         _sym34569_
                         (gx#stx-e _L34409_)))
                      _$e34566_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4150941510_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4150541506_)
                                                    (let ((_e3444734484_
                                                           (gx#stx-e
                                                            ___stx4150541506_)))
                                                      (let ((_tl3444934489_
                                                             (##cdr _e3444734484_))
                                                            (_hd3444834487_
                                                             (##car _e3444734484_)))
                                                        (if (gx#identifier?
                                                             _hd3444834487_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3444834487_)
                        (if (gx#stx-pair? _tl3444934489_)
                            (let ((_e3445034492_ (gx#stx-e _tl3444934489_)))
                              (let ((_tl3445234497_ (##cdr _e3445034492_))
                                    (_hd3445134495_ (##car _e3445034492_)))
                                (if (gx#stx-pair? _hd3445134495_)
                                    (let ((_e3445334500_
                                           (gx#stx-e _hd3445134495_)))
                                      (let ((_tl3445534505_
                                             (##cdr _e3445334500_))
                                            (_hd3445434503_
                                             (##car _e3445334500_)))
                                        (if (gx#identifier? _hd3445434503_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3445434503_)
                                                (if (gx#stx-pair?
                                                     _tl3445534505_)
                                                    (let ((_e3445634508_
                                                           (gx#stx-e
                                                            _tl3445534505_)))
                                                      (let ((_tl3445834513_
                                                             (##cdr _e3445634508_))
                                                            (_hd3445734511_
                                                             (##car _e3445634508_)))
                                                        (if (gx#stx-null?
                                                             _tl3445834513_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3445234497_)
                        (let ((_e3445934516_ (gx#stx-e _tl3445234497_)))
                          (let ((_tl3446134521_ (##cdr _e3445934516_))
                                (_hd3446034519_ (##car _e3445934516_)))
                            (if (gx#stx-pair? _hd3446034519_)
                                (let ((_e3446234524_
                                       (gx#stx-e _hd3446034519_)))
                                  (let ((_tl3446434529_ (##cdr _e3446234524_))
                                        (_hd3446334527_ (##car _e3446234524_)))
                                    (if (gx#identifier? _hd3446334527_)
                                        (if (gx#stx-eq? '%#ref _hd3446334527_)
                                            (if (gx#stx-pair? _tl3446434529_)
                                                (let ((_e3446534532_
                                                       (gx#stx-e
                                                        _tl3446434529_)))
                                                  (let ((_tl3446734537_
                                                         (##cdr _e3446534532_))
                                                        (_hd3446634535_
                                                         (##car _e3446534532_)))
                                                    (if (gx#stx-null?
                                                         _tl3446734537_)
                                                        (if (gx#stx-null?
                                                             _tl3446134521_)
                                                            (___kont4150741508_
                                                             _hd3446634535_
                                                             _hd3445734511_)
                                                            (___kont4150941510_))
                                                        (___kont4150941510_))))
                                                (___kont4150941510_))
                                            (___kont4150941510_))
                                        (___kont4150941510_))))
                                (___kont4150941510_))))
                        (___kont4150941510_))
                    (___kont4150941510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4150941510_))
                                                (___kont4150941510_))
                                            (___kont4150941510_))))
                                    (___kont4150941510_))))
                            (___kont4150941510_))
                        (___kont4150941510_))
                    (___kont4150941510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4150941510_))))
                                            (if (if (eq? '##eq? _$e34436_)
                                                    '#t
                                                    (if (eq? 'eq? _$e34436_)
                                                        '#t
                                                        (if (eq? '##eqv?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e34436_)
                    '#t
                    (if (eq? 'eqv? _$e34436_)
                        '#t
                        (if (eq? '##equal? _$e34436_)
                            '#t
                            (if (eq? 'equal? _$e34436_)
                                '#t
                                (if (eq? 'gx#free-identifier=? _$e34436_)
                                    '#t
                                    (eq? 'gx#stx-eq? _$e34436_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                ((lambda (_sym34595_)
                                                   (let* ((___stx4157341574_
                                                           _L34410_)
                                                          (_g3459834611_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4157341574_))))
                                                     (let ((___kont4157541576_
                                                            (lambda (_L34639_)
                                                              (_assert-eqf32684_
                                                               _L34639_
                                                               (_eqf-symbol32671_
                                                                _sym34595_)
                                                               (gx#stx-e
                                                                _L34409_))))
                                                           (___kont4157741578_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4157341574_)
                                                           (let ((_e3460134623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4157341574_)))
                     (let ((_tl3460334628_ (##cdr _e3460134623_))
                           (_hd3460234626_ (##car _e3460134623_)))
                       (if (gx#identifier? _hd3460234626_)
                           (if (gx#stx-eq? '%#ref _hd3460234626_)
                               (if (gx#stx-pair? _tl3460334628_)
                                   (let ((_e3460434631_
                                          (gx#stx-e _tl3460334628_)))
                                     (let ((_tl3460634636_
                                            (##cdr _e3460434631_))
                                           (_hd3460534634_
                                            (##car _e3460434631_)))
                                       (if (gx#stx-null? _tl3460634636_)
                                           (___kont4157541576_ _hd3460534634_)
                                           (___kont4157741578_))))
                                   (___kont4157741578_))
                               (___kont4157741578_))
                           (___kont4157741578_))))
                   (___kont4157741578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e34436_)
                                                '#!void)))))
                                   (___kont4160541606_
                                    (lambda (_L34313_ _L34314_ _L34315_)
                                      (_assert33696_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L34315_ '()))
                                                   (cons _L34313_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L34314_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4160741608_
                                    (lambda (_L34205_ _L34206_ _L34207_)
                                      (let ((_$e34236_
                                             (gxc#identifier-symbol _L34207_)))
                                        (if (if (eq? 'gx#free-identifier=?
                                                     _$e34236_)
                                                '#t
                                                (eq? 'gx#stx-eq? _$e34236_))
                                            ((lambda (_sym34242_)
                                               (_assert-eqf32684_
                                                _L34206_
                                                (_eqf-symbol32671_ _sym34242_)
                                                _L34205_))
                                             _$e34236_)
                                            '#!void))))
                                   (___kont4160941610_
                                    (lambda (_L34089_ _L34090_ _L34091_)
                                      (_assert33696_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L34091_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L34089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L34090_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4161141612_
                                    (lambda (_L33969_ _L33970_ _L33971_)
                                      (_assert33696_
                                       (gxc#apply-expression-subst
                                        _L33970_
                                        _L33971_
                                        _L33969_))))
                                   (___kont4161341614_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4159941600_)
                                   (let ((_e3371034660_
                                          (gx#stx-e ___stx4159941600_)))
                                     (let ((_tl3371234665_
                                            (##cdr _e3371034660_))
                                           (_hd3371134663_
                                            (##car _e3371034660_)))
                                       (if (gx#identifier? _hd3371134663_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3371134663_)
                                               (if (gx#stx-pair?
                                                    _tl3371234665_)
                                                   (let ((_e3371334668_
                                                          (gx#stx-e
                                                           _tl3371234665_)))
                                                     (let ((_tl3371534673_
                                                            (##cdr _e3371334668_))
                                                           (_hd3371434671_
                                                            (##car _e3371334668_)))
                                                       (if (gx#stx-pair?
                                                            _hd3371434671_)
                                                           (let ((_e3371634676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3371434671_)))
                     (let ((_tl3371834681_ (##cdr _e3371634676_))
                           (_hd3371734679_ (##car _e3371634676_)))
                       (if (gx#identifier? _hd3371734679_)
                           (if (gx#stx-eq? '%#ref _hd3371734679_)
                               (if (gx#stx-pair? _tl3371834681_)
                                   (let ((_e3371934684_
                                          (gx#stx-e _tl3371834681_)))
                                     (let ((_tl3372134689_
                                            (##cdr _e3371934684_))
                                           (_hd3372034687_
                                            (##car _e3371934684_)))
                                       (if (gx#stx-null? _tl3372134689_)
                                           (if (gx#stx-pair? _tl3371534673_)
                                               (let ((_e3372234692_
                                                      (gx#stx-e
                                                       _tl3371534673_)))
                                                 (let ((_tl3372434697_
                                                        (##cdr _e3372234692_))
                                                       (_hd3372334695_
                                                        (##car _e3372234692_)))
                                                   (if (gx#stx-pair?
                                                        _hd3372334695_)
                                                       (let ((_e3372534700_
                                                              (gx#stx-e
                                                               _hd3372334695_)))
                                                         (let ((_tl3372734705_
                                                                (##cdr _e3372534700_))
                                                               (_hd3372634703_
                                                                (##car _e3372534700_)))
                                                           (if (gx#identifier?
                                                                _hd3372634703_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3372634703_)
                           (if (gx#stx-pair? _tl3372734705_)
                               (let ((_e3372834708_ (gx#stx-e _tl3372734705_)))
                                 (let ((_tl3373034713_ (##cdr _e3372834708_))
                                       (_hd3372934711_ (##car _e3372834708_)))
                                   (if (gx#stx-null? _tl3373034713_)
                                       (if (gx#stx-null? _tl3372434697_)
                                           (___kont4160141602_
                                            _hd3372934711_
                                            _hd3372034687_)
                                           (if (gx#stx-pair? _tl3372434697_)
                                               (let ((_e3374934385_
                                                      (gx#stx-e
                                                       _tl3372434697_)))
                                                 (let ((_tl3375134390_
                                                        (##cdr _e3374934385_))
                                                       (_hd3375034388_
                                                        (##car _e3374934385_)))
                                                   (if (gx#stx-pair?
                                                        _hd3375034388_)
                                                       (let ((_e3375234393_
                                                              (gx#stx-e
                                                               _hd3375034388_)))
                                                         (let ((_tl3375434398_
                                                                (##cdr _e3375234393_))
                                                               (_hd3375334396_
                                                                (##car _e3375234393_)))
                                                           (if (gx#identifier?
                                                                _hd3375334396_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3375334396_)
                           (if (gx#stx-pair? _tl3375434398_)
                               (let ((_e3375534401_ (gx#stx-e _tl3375434398_)))
                                 (let ((_tl3375734406_ (##cdr _e3375534401_))
                                       (_hd3375634404_ (##car _e3375534401_)))
                                   (if (gx#stx-null? _tl3375734406_)
                                       (if (gx#stx-null? _tl3375134390_)
                                           (___kont4160341604_
                                            _hd3375634404_
                                            _hd3372334695_
                                            _hd3372034687_)
                                           (___kont4161341614_))
                                       (___kont4161341614_))))
                               (___kont4161341614_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3375334396_)
                               (if (gx#stx-pair? _tl3375434398_)
                                   (let ((_e3381534197_
                                          (gx#stx-e _tl3375434398_)))
                                     (let ((_tl3381734202_
                                            (##cdr _e3381534197_))
                                           (_hd3381634200_
                                            (##car _e3381534197_)))
                                       (if (gx#stx-null? _tl3381734202_)
                                           (if (gx#stx-null? _tl3375134390_)
                                               (___kont4160741608_
                                                _hd3381634200_
                                                _hd3372934711_
                                                _hd3372034687_)
                                               (___kont4161341614_))
                                           (___kont4161341614_))))
                                   (___kont4161341614_))
                               (___kont4161341614_)))
                       (___kont4161341614_))))
               (___kont4161341614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4161341614_)))
                                       (if (gx#stx-pair? _tl3372434697_)
                                           (let ((_e3374934385_
                                                  (gx#stx-e _tl3372434697_)))
                                             (let ((_tl3375134390_
                                                    (##cdr _e3374934385_))
                                                   (_hd3375034388_
                                                    (##car _e3374934385_)))
                                               (if (gx#stx-pair?
                                                    _hd3375034388_)
                                                   (let ((_e3375234393_
                                                          (gx#stx-e
                                                           _hd3375034388_)))
                                                     (let ((_tl3375434398_
                                                            (##cdr _e3375234393_))
                                                           (_hd3375334396_
                                                            (##car _e3375234393_)))
                                                       (if (gx#identifier?
                                                            _hd3375334396_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3375334396_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3375434398_)
                           (let ((_e3375534401_ (gx#stx-e _tl3375434398_)))
                             (let ((_tl3375734406_ (##cdr _e3375534401_))
                                   (_hd3375634404_ (##car _e3375534401_)))
                               (if (gx#stx-null? _tl3375734406_)
                                   (if (gx#stx-null? _tl3375134390_)
                                       (___kont4160341604_
                                        _hd3375634404_
                                        _hd3372334695_
                                        _hd3372034687_)
                                       (___kont4161341614_))
                                   (___kont4161341614_))))
                           (___kont4161341614_))
                       (___kont4161341614_))
                   (___kont4161341614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4161341614_))))
                                           (___kont4161341614_)))))
                               (if (gx#stx-pair? _tl3372434697_)
                                   (let ((_e3374934385_
                                          (gx#stx-e _tl3372434697_)))
                                     (let ((_tl3375134390_
                                            (##cdr _e3374934385_))
                                           (_hd3375034388_
                                            (##car _e3374934385_)))
                                       (if (gx#stx-pair? _hd3375034388_)
                                           (let ((_e3375234393_
                                                  (gx#stx-e _hd3375034388_)))
                                             (let ((_tl3375434398_
                                                    (##cdr _e3375234393_))
                                                   (_hd3375334396_
                                                    (##car _e3375234393_)))
                                               (if (gx#identifier?
                                                    _hd3375334396_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3375334396_)
                                                       (if (gx#stx-pair?
                                                            _tl3375434398_)
                                                           (let ((_e3375534401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3375434398_)))
                     (let ((_tl3375734406_ (##cdr _e3375534401_))
                           (_hd3375634404_ (##car _e3375534401_)))
                       (if (gx#stx-null? _tl3375734406_)
                           (if (gx#stx-null? _tl3375134390_)
                               (___kont4160341604_
                                _hd3375634404_
                                _hd3372334695_
                                _hd3372034687_)
                               (___kont4161341614_))
                           (___kont4161341614_))))
                   (___kont4161341614_))
               (___kont4161341614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4161341614_))))
                                           (___kont4161341614_))))
                                   (___kont4161341614_)))
                           (if (gx#stx-pair? _tl3372434697_)
                               (let ((_e3374934385_ (gx#stx-e _tl3372434697_)))
                                 (let ((_tl3375134390_ (##cdr _e3374934385_))
                                       (_hd3375034388_ (##car _e3374934385_)))
                                   (if (gx#stx-pair? _hd3375034388_)
                                       (let ((_e3375234393_
                                              (gx#stx-e _hd3375034388_)))
                                         (let ((_tl3375434398_
                                                (##cdr _e3375234393_))
                                               (_hd3375334396_
                                                (##car _e3375234393_)))
                                           (if (gx#identifier? _hd3375334396_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3375334396_)
                                                   (if (gx#stx-pair?
                                                        _tl3375434398_)
                                                       (let ((_e3375534401_
                                                              (gx#stx-e
                                                               _tl3375434398_)))
                                                         (let ((_tl3375734406_
                                                                (##cdr _e3375534401_))
                                                               (_hd3375634404_
                                                                (##car _e3375534401_)))
                                                           (if (gx#stx-null?
                                                                _tl3375734406_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3375134390_)
                           (___kont4160341604_
                            _hd3375634404_
                            _hd3372334695_
                            _hd3372034687_)
                           (if (gx#stx-eq? '%#quote _hd3372634703_)
                               (if (gx#stx-pair? _tl3372734705_)
                                   (let ((_e3377934297_
                                          (gx#stx-e _tl3372734705_)))
                                     (let ((_tl3378134302_
                                            (##cdr _e3377934297_))
                                           (_hd3378034300_
                                            (##car _e3377934297_)))
                                       (___kont4161341614_)))
                                   (___kont4161341614_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3372634703_)
                                   (if (gx#stx-pair? _tl3372734705_)
                                       (let ((_e3383934057_
                                              (gx#stx-e _tl3372734705_)))
                                         (let ((_tl3384134062_
                                                (##cdr _e3383934057_))
                                               (_hd3384034060_
                                                (##car _e3383934057_)))
                                           (___kont4161341614_)))
                                       (___kont4161341614_))
                                   (___kont4161341614_))))
                       (if (gx#stx-eq? '%#quote _hd3372634703_)
                           (if (gx#stx-pair? _tl3372734705_)
                               (let ((_e3377934297_ (gx#stx-e _tl3372734705_)))
                                 (let ((_tl3378134302_ (##cdr _e3377934297_))
                                       (_hd3378034300_ (##car _e3377934297_)))
                                   (if (gx#stx-null? _tl3378134302_)
                                       (if (gx#stx-null? _tl3375134390_)
                                           (___kont4160541606_
                                            _hd3375034388_
                                            _hd3378034300_
                                            _hd3372034687_)
                                           (___kont4161341614_))
                                       (___kont4161341614_))))
                               (___kont4161341614_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3372634703_)
                               (if (gx#stx-pair? _tl3372734705_)
                                   (let ((_e3383934057_
                                          (gx#stx-e _tl3372734705_)))
                                     (let ((_tl3384134062_
                                            (##cdr _e3383934057_))
                                           (_hd3384034060_
                                            (##car _e3383934057_)))
                                       (___kont4161341614_)))
                                   (___kont4161341614_))
                               (___kont4161341614_))))))
               (if (gx#stx-eq? '%#quote _hd3372634703_)
                   (if (gx#stx-pair? _tl3372734705_)
                       (let ((_e3377934297_ (gx#stx-e _tl3372734705_)))
                         (let ((_tl3378134302_ (##cdr _e3377934297_))
                               (_hd3378034300_ (##car _e3377934297_)))
                           (if (gx#stx-null? _tl3378134302_)
                               (if (gx#stx-null? _tl3375134390_)
                                   (___kont4160541606_
                                    _hd3375034388_
                                    _hd3378034300_
                                    _hd3372034687_)
                                   (___kont4161341614_))
                               (___kont4161341614_))))
                       (___kont4161341614_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3372634703_)
                       (if (gx#stx-pair? _tl3372734705_)
                           (let ((_e3383934057_ (gx#stx-e _tl3372734705_)))
                             (let ((_tl3384134062_ (##cdr _e3383934057_))
                                   (_hd3384034060_ (##car _e3383934057_)))
                               (___kont4161341614_)))
                           (___kont4161341614_))
                       (___kont4161341614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3372634703_)
                                                       (if (gx#stx-pair?
                                                            _tl3372734705_)
                                                           (let ((_e3377934297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3372734705_)))
                     (let ((_tl3378134302_ (##cdr _e3377934297_))
                           (_hd3378034300_ (##car _e3377934297_)))
                       (if (gx#stx-null? _tl3378134302_)
                           (if (gx#stx-null? _tl3375134390_)
                               (___kont4160541606_
                                _hd3375034388_
                                _hd3378034300_
                                _hd3372034687_)
                               (___kont4161341614_))
                           (___kont4161341614_))))
                   (___kont4161341614_))
               (if (gx#stx-eq? '%#quote-syntax _hd3372634703_)
                   (if (gx#stx-pair? _tl3372734705_)
                       (let ((_e3383934057_ (gx#stx-e _tl3372734705_)))
                         (let ((_tl3384134062_ (##cdr _e3383934057_))
                               (_hd3384034060_ (##car _e3383934057_)))
                           (if (gx#stx-null? _tl3384134062_)
                               (if (gx#stx-eq? '%#ref _hd3375334396_)
                                   (if (gx#stx-pair? _tl3375434398_)
                                       (let ((_e3384834081_
                                              (gx#stx-e _tl3375434398_)))
                                         (let ((_tl3385034086_
                                                (##cdr _e3384834081_))
                                               (_hd3384934084_
                                                (##car _e3384834081_)))
                                           (if (gx#stx-null? _tl3385034086_)
                                               (if (gx#stx-null?
                                                    _tl3375134390_)
                                                   (___kont4160941610_
                                                    _hd3384934084_
                                                    _hd3384034060_
                                                    _hd3372034687_)
                                                   (___kont4161341614_))
                                               (___kont4161341614_))))
                                       (___kont4161341614_))
                                   (___kont4161341614_))
                               (___kont4161341614_))))
                       (___kont4161341614_))
                   (___kont4161341614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3372634703_)
                                                   (if (gx#stx-pair?
                                                        _tl3372734705_)
                                                       (let ((_e3377934297_
                                                              (gx#stx-e
                                                               _tl3372734705_)))
                                                         (let ((_tl3378134302_
                                                                (##cdr _e3377934297_))
                                                               (_hd3378034300_
                                                                (##car _e3377934297_)))
                                                           (if (gx#stx-null?
                                                                _tl3378134302_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3375134390_)
                           (___kont4160541606_
                            _hd3375034388_
                            _hd3378034300_
                            _hd3372034687_)
                           (___kont4161341614_))
                       (___kont4161341614_))))
               (___kont4161341614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3372634703_)
                                                       (if (gx#stx-pair?
                                                            _tl3372734705_)
                                                           (let ((_e3383934057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3372734705_)))
                     (let ((_tl3384134062_ (##cdr _e3383934057_))
                           (_hd3384034060_ (##car _e3383934057_)))
                       (___kont4161341614_)))
                   (___kont4161341614_))
               (___kont4161341614_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3372634703_)
                                           (if (gx#stx-pair? _tl3372734705_)
                                               (let ((_e3377934297_
                                                      (gx#stx-e
                                                       _tl3372734705_)))
                                                 (let ((_tl3378134302_
                                                        (##cdr _e3377934297_))
                                                       (_hd3378034300_
                                                        (##car _e3377934297_)))
                                                   (if (gx#stx-null?
                                                        _tl3378134302_)
                                                       (if (gx#stx-null?
                                                            _tl3375134390_)
                                                           (___kont4160541606_
                                                            _hd3375034388_
                                                            _hd3378034300_
                                                            _hd3372034687_)
                                                           (___kont4161341614_))
                                                       (___kont4161341614_))))
                                               (___kont4161341614_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3372634703_)
                                               (if (gx#stx-pair?
                                                    _tl3372734705_)
                                                   (let ((_e3383934057_
                                                          (gx#stx-e
                                                           _tl3372734705_)))
                                                     (let ((_tl3384134062_
                                                            (##cdr _e3383934057_))
                                                           (_hd3384034060_
                                                            (##car _e3383934057_)))
                                                       (___kont4161341614_)))
                                                   (___kont4161341614_))
                                               (___kont4161341614_))))))
                               (if (gx#stx-eq? '%#quote _hd3372634703_)
                                   (if (gx#stx-pair? _tl3372734705_)
                                       (let ((_e3377934297_
                                              (gx#stx-e _tl3372734705_)))
                                         (let ((_tl3378134302_
                                                (##cdr _e3377934297_))
                                               (_hd3378034300_
                                                (##car _e3377934297_)))
                                           (___kont4161341614_)))
                                       (___kont4161341614_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3372634703_)
                                       (if (gx#stx-pair? _tl3372734705_)
                                           (let ((_e3383934057_
                                                  (gx#stx-e _tl3372734705_)))
                                             (let ((_tl3384134062_
                                                    (##cdr _e3383934057_))
                                                   (_hd3384034060_
                                                    (##car _e3383934057_)))
                                               (___kont4161341614_)))
                                           (___kont4161341614_))
                                       (___kont4161341614_)))))
                       (if (gx#stx-pair? _tl3372434697_)
                           (let ((_e3374934385_ (gx#stx-e _tl3372434697_)))
                             (let ((_tl3375134390_ (##cdr _e3374934385_))
                                   (_hd3375034388_ (##car _e3374934385_)))
                               (if (gx#stx-pair? _hd3375034388_)
                                   (let ((_e3375234393_
                                          (gx#stx-e _hd3375034388_)))
                                     (let ((_tl3375434398_
                                            (##cdr _e3375234393_))
                                           (_hd3375334396_
                                            (##car _e3375234393_)))
                                       (if (gx#identifier? _hd3375334396_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3375334396_)
                                               (if (gx#stx-pair?
                                                    _tl3375434398_)
                                                   (let ((_e3375534401_
                                                          (gx#stx-e
                                                           _tl3375434398_)))
                                                     (let ((_tl3375734406_
                                                            (##cdr _e3375534401_))
                                                           (_hd3375634404_
                                                            (##car _e3375534401_)))
                                                       (if (gx#stx-null?
                                                            _tl3375734406_)
                                                           (if (gx#stx-null?
                                                                _tl3375134390_)
                                                               (___kont4160341604_
                                                                _hd3375634404_
                                                                _hd3372334695_
                                                                _hd3372034687_)
                                                               (___kont4161341614_))
                                                           (___kont4161341614_))))
                                                   (___kont4161341614_))
                                               (___kont4161341614_))
                                           (___kont4161341614_))))
                                   (___kont4161341614_))))
                           (___kont4161341614_)))))
               (if (gx#stx-pair? _tl3372434697_)
                   (let ((_e3374934385_ (gx#stx-e _tl3372434697_)))
                     (let ((_tl3375134390_ (##cdr _e3374934385_))
                           (_hd3375034388_ (##car _e3374934385_)))
                       (if (gx#stx-pair? _hd3375034388_)
                           (let ((_e3375234393_ (gx#stx-e _hd3375034388_)))
                             (let ((_tl3375434398_ (##cdr _e3375234393_))
                                   (_hd3375334396_ (##car _e3375234393_)))
                               (if (gx#identifier? _hd3375334396_)
                                   (if (gx#stx-eq? '%#quote _hd3375334396_)
                                       (if (gx#stx-pair? _tl3375434398_)
                                           (let ((_e3375534401_
                                                  (gx#stx-e _tl3375434398_)))
                                             (let ((_tl3375734406_
                                                    (##cdr _e3375534401_))
                                                   (_hd3375634404_
                                                    (##car _e3375534401_)))
                                               (if (gx#stx-null?
                                                    _tl3375734406_)
                                                   (if (gx#stx-null?
                                                        _tl3375134390_)
                                                       (___kont4160341604_
                                                        _hd3375634404_
                                                        _hd3372334695_
                                                        _hd3372034687_)
                                                       (___kont4161341614_))
                                                   (___kont4161341614_))))
                                           (___kont4161341614_))
                                       (___kont4161341614_))
                                   (___kont4161341614_))))
                           (___kont4161341614_))))
                   (___kont4161341614_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4161341614_))
                                           (___kont4161341614_))))
                                   (___kont4161341614_))
                               (if (gx#stx-eq? '%#lambda _hd3371734679_)
                                   (if (gx#stx-pair? _tl3371834681_)
                                       (let ((_e3386333921_
                                              (gx#stx-e _tl3371834681_)))
                                         (let ((_tl3386533926_
                                                (##cdr _e3386333921_))
                                               (_hd3386433924_
                                                (##car _e3386333921_)))
                                           (if (gx#stx-pair? _hd3386433924_)
                                               (let ((_e3386633929_
                                                      (gx#stx-e
                                                       _hd3386433924_)))
                                                 (let ((_tl3386833934_
                                                        (##cdr _e3386633929_))
                                                       (_hd3386733932_
                                                        (##car _e3386633929_)))
                                                   (if (gx#stx-null?
                                                        _tl3386833934_)
                                                       (if (gx#stx-pair?
                                                            _tl3386533926_)
                                                           (let ((_e3386933937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3386533926_)))
                     (let ((_tl3387133942_ (##cdr _e3386933937_))
                           (_hd3387033940_ (##car _e3386933937_)))
                       (if (gx#stx-null? _tl3387133942_)
                           (if (gx#stx-pair? _tl3371534673_)
                               (let ((_e3387233945_ (gx#stx-e _tl3371534673_)))
                                 (let ((_tl3387433950_ (##cdr _e3387233945_))
                                       (_hd3387333948_ (##car _e3387233945_)))
                                   (if (gx#stx-pair? _hd3387333948_)
                                       (let ((_e3387533953_
                                              (gx#stx-e _hd3387333948_)))
                                         (let ((_tl3387733958_
                                                (##cdr _e3387533953_))
                                               (_hd3387633956_
                                                (##car _e3387533953_)))
                                           (if (gx#identifier? _hd3387633956_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3387633956_)
                                                   (if (gx#stx-pair?
                                                        _tl3387733958_)
                                                       (let ((_e3387833961_
                                                              (gx#stx-e
                                                               _tl3387733958_)))
                                                         (let ((_tl3388033966_
                                                                (##cdr _e3387833961_))
                                                               (_hd3387933964_
                                                                (##car _e3387833961_)))
                                                           (if (gx#stx-null?
                                                                _tl3388033966_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3387433950_)
                           (___kont4161141612_
                            _hd3387933964_
                            _hd3387033940_
                            _hd3386733932_)
                           (___kont4161341614_))
                       (___kont4161341614_))))
               (___kont4161341614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4161341614_))
                                               (___kont4161341614_))))
                                       (___kont4161341614_))))
                               (___kont4161341614_))
                           (___kont4161341614_))))
                   (___kont4161341614_))
               (___kont4161341614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4161341614_))))
                                       (___kont4161341614_))
                                   (___kont4161341614_)))
                           (___kont4161341614_))))
                   (___kont4161341614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4161341614_))
                                               (___kont4161341614_))
                                           (___kont4161341614_))))
                                   (___kont4161341614_)))))))))
                (_assert-type32682_
                 (lambda (_id33581_ _t33582_)
                   (letrec ((_super-e33584_
                             (lambda (_t33681_)
                               (let ((_tid3368233684_
                                      (##structure-ref
                                       _t33681_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3368233684_
                                     (let ((_tid33687_ _tid3368233684_))
                                       (gxc#optimizer-resolve-type _tid33687_))
                                     '#f)))))
                     (let _lp33586_ ((_rest33588_ _env-type32664_))
                       (let* ((_rest3358933597_ _rest33588_)
                              (_else3359133605_ (lambda () '#!void))
                              (_K3359333669_
                               (lambda (_rest33608_ _type-info33609_)
                                 (let* ((_type-info3361033622_
                                         _type-info33609_)
                                        (_else3361233630_
                                         (lambda () (_lp33586_ _rest33608_)))
                                        (_K3361433645_
                                         (lambda (_val33633_
                                                  _xt33634_
                                                  _xid33635_)
                                           (if (gx#free-identifier=?
                                                _id33581_
                                                _xid33635_)
                                               (if (eq? _t33582_ _xt33634_)
                                                   _val33633_
                                                   (if _val33633_
                                                       (if (if (##structure-instance-of?
                                                                _t33582_
                                                                'gxc#!struct-type::t)
                                                               (##structure-instance-of?
                                                                _xt33634_
                                                                'gxc#!struct-type::t)
                                                               '#f)
                                                           (let _subtype?33637_ ((_xt33639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          (_super-e33584_ _xt33634_)))
                     (if (not _xt33639_)
                         '#f
                         (if (eq? _xt33639_ _t33582_)
                             '#t
                             (_subtype?33637_ (_super-e33584_ _xt33639_)))))
                   '#f)
               (if (if (##structure-instance-of? _t33582_ 'gxc#!struct-type::t)
                       (##structure-instance-of?
                        _xt33634_
                        'gxc#!struct-type::t)
                       '#f)
                   (let _supertype?33641_ ((_t33643_
                                            (_super-e33584_ _t33582_)))
                     (if (not _t33643_)
                         (_lp33586_ _rest33608_)
                         (if (eq? _t33643_ _xt33634_)
                             '#f
                             (_supertype?33641_ (_super-e33584_ _t33643_)))))
                   (_lp33586_ _rest33608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp33586_ _rest33608_)))))
                                   (if (##pair? _type-info3361033622_)
                                       (let ((_hd3361533648_
                                              (##car _type-info3361033622_))
                                             (_tl3361633650_
                                              (##cdr _type-info3361033622_)))
                                         (let ((_xid33653_ _hd3361533648_))
                                           (if (##pair? _tl3361633650_)
                                               (let ((_hd3361733655_
                                                      (##car _tl3361633650_))
                                                     (_tl3361833657_
                                                      (##cdr _tl3361633650_)))
                                                 (let ((_xt33660_
                                                        _hd3361733655_))
                                                   (if (##pair? _tl3361833657_)
                                                       (let ((_hd3361933662_
                                                              (##car _tl3361833657_))
                                                             (_tl3362033664_
                                                              (##cdr _tl3361833657_)))
                                                         (let ((_val33667_
                                                                _hd3361933662_))
                                                           (if (##null? _tl3362033664_)
                                                               (_K3361433645_
                                                                _val33667_
                                                                _xt33660_
                                                                _xid33653_)
                                                               (_else3361233630_))))
                                                       (_else3361233630_))))
                                               (_else3361233630_))))
                                       (_else3361233630_))))))
                         (if (##pair? _rest3358933597_)
                             (let ((_hd3359433672_ (##car _rest3358933597_))
                                   (_tl3359533674_ (##cdr _rest3358933597_)))
                               (let* ((_type-info33677_ _hd3359433672_)
                                      (_rest33679_ _tl3359533674_))
                                 (_K3359333669_ _rest33679_ _type-info33677_)))
                             (_else3359133605_)))))))
                (_assert-count32683_
                 (lambda (_id33480_ _sym33481_ _count33482_)
                   (let _lp33484_ ((_rest33486_ _env-type32664_))
                     (let* ((_rest3348733495_ _rest33486_)
                            (_else3348933503_ (lambda () '#!void))
                            (_K3349133569_
                             (lambda (_rest33506_ _type-info33507_)
                               (let* ((_type-info3350833522_ _type-info33507_)
                                      (_else3351033530_
                                       (lambda () (_lp33484_ _rest33506_)))
                                      (_K3351233538_
                                       (lambda (_val33533_
                                                _xcount33534_
                                                _xsym33535_
                                                _xid33536_)
                                         (if (if (eq? _sym33481_ _xsym33535_)
                                                 (gx#free-identifier=?
                                                  _id33480_
                                                  _xid33536_)
                                                 '#f)
                                             (if _val33533_
                                                 (fx= _count33482_
                                                      _xcount33534_)
                                                 (if (fx= _count33482_
                                                          _xcount33534_)
                                                     '#f
                                                     (_lp33484_ _rest33506_)))
                                             (_lp33484_ _rest33506_)))))
                                 (if (##pair? _type-info3350833522_)
                                     (let ((_hd3351333541_
                                            (##car _type-info3350833522_))
                                           (_tl3351433543_
                                            (##cdr _type-info3350833522_)))
                                       (let ((_xid33546_ _hd3351333541_))
                                         (if (##pair? _tl3351433543_)
                                             (let ((_hd3351533548_
                                                    (##car _tl3351433543_))
                                                   (_tl3351633550_
                                                    (##cdr _tl3351433543_)))
                                               (let ((_xsym33553_
                                                      _hd3351533548_))
                                                 (if (##pair? _tl3351633550_)
                                                     (let ((_hd3351733555_
                                                            (##car _tl3351633550_))
                                                           (_tl3351833557_
                                                            (##cdr _tl3351633550_)))
                                                       (let ((_xcount33560_
                                                              _hd3351733555_))
                                                         (if (##pair? _tl3351833557_)
                                                             (let ((_hd3351933562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3351833557_))
                           (_tl3352033564_ (##cdr _tl3351833557_)))
                       (let ((_val33567_ _hd3351933562_))
                         (if (##null? _tl3352033564_)
                             (_K3351233538_
                              _val33567_
                              _xcount33560_
                              _xsym33553_
                              _xid33546_)
                             (_else3351033530_))))
                     (_else3351033530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3351033530_))))
                                             (_else3351033530_))))
                                     (_else3351033530_))))))
                       (if (##pair? _rest3348733495_)
                           (let ((_hd3349233572_ (##car _rest3348733495_))
                                 (_tl3349333574_ (##cdr _rest3348733495_)))
                             (let* ((_type-info33577_ _hd3349233572_)
                                    (_rest33579_ _tl3349333574_))
                               (_K3349133569_ _rest33579_ _type-info33577_)))
                           (_else3348933503_))))))
                (_assert-eqf32684_
                 (lambda (_id33370_ _sym33371_ _datum33372_)
                   (letrec ((_eqf33374_
                             (lambda (_sym33475_)
                               (let ((_$e33477_ _sym33475_))
                                 (if (eq? 'eq? _$e33477_)
                                     eq?
                                     (if (eq? 'eqv? _$e33477_)
                                         eqv?
                                         (if (eq? 'equal? _$e33477_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e33477_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e33477_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body32425_
                                                      _sym33475_))))))))))
                     (let _lp33376_ ((_rest33378_ _env-type32664_))
                       (let* ((_rest3337933387_ _rest33378_)
                              (_else3338133395_ (lambda () '#!void))
                              (_K3338333463_
                               (lambda (_rest33398_ _type-info33399_)
                                 (let* ((_type-info3340033414_
                                         _type-info33399_)
                                        (_else3340233422_
                                         (lambda () (_lp33376_ _rest33398_)))
                                        (_K3340433432_
                                         (lambda (_val33425_
                                                  _xdatum33426_
                                                  _xsym33427_
                                                  _xid33428_)
                                           (if (if (eq? _sym33371_ _xsym33427_)
                                                   (gx#free-identifier=?
                                                    _id33370_
                                                    _xid33428_)
                                                   '#f)
                                               (let ((_=?33430_
                                                      (_eqf33374_ _sym33371_)))
                                                 (if _val33425_
                                                     (_=?33430_
                                                      _datum33372_
                                                      _xdatum33426_)
                                                     (if (_=?33430_
                                                          _datum33372_
                                                          _xdatum33426_)
                                                         '#f
                                                         (_lp33376_
                                                          _rest33398_))))
                                               (_lp33376_ _rest33398_)))))
                                   (if (##pair? _type-info3340033414_)
                                       (let ((_hd3340533435_
                                              (##car _type-info3340033414_))
                                             (_tl3340633437_
                                              (##cdr _type-info3340033414_)))
                                         (let ((_xid33440_ _hd3340533435_))
                                           (if (##pair? _tl3340633437_)
                                               (let ((_hd3340733442_
                                                      (##car _tl3340633437_))
                                                     (_tl3340833444_
                                                      (##cdr _tl3340633437_)))
                                                 (let ((_xsym33447_
                                                        _hd3340733442_))
                                                   (if (##pair? _tl3340833444_)
                                                       (let ((_hd3340933449_
                                                              (##car _tl3340833444_))
                                                             (_tl3341033451_
                                                              (##cdr _tl3340833444_)))
                                                         (let ((_xdatum33454_
                                                                _hd3340933449_))
                                                           (if (##pair? _tl3341033451_)
                                                               (let ((_hd3341133456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3341033451_))
                             (_tl3341233458_ (##cdr _tl3341033451_)))
                         (let ((_val33461_ _hd3341133456_))
                           (if (##null? _tl3341233458_)
                               (_K3340433432_
                                _val33461_
                                _xdatum33454_
                                _xsym33447_
                                _xid33440_)
                               (_else3340233422_))))
                       (_else3340233422_))))
               (_else3340233422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3340233422_))))
                                       (_else3340233422_))))))
                         (if (##pair? _rest3337933387_)
                             (let ((_hd3338433466_ (##car _rest3337933387_))
                                   (_tl3338533468_ (##cdr _rest3337933387_)))
                               (let* ((_type-info33471_ _hd3338433466_)
                                      (_rest33473_ _tl3338533468_))
                                 (_K3338333463_ _rest33473_ _type-info33471_)))
                             (_else3338133395_)))))))
                (_bind-e__4001240013_
                 (lambda (_bind33273_ _body33274_ _continue33275_)
                   (let _lp33277_ ((_rest33279_ _bind33273_)
                                   (_subst33280_ '())
                                   (_locals33281_ '())
                                   (_env33282_ _env-bind32665_))
                     (let* ((_rest3328333291_ _rest33279_)
                            (_else3328533305_
                             (lambda ()
                               (let* ((_body33299_
                                       (if (null? _subst33280_)
                                           _body33274_
                                           (gxc#apply-expression-subst*
                                            _body33274_
                                            _subst33280_)))
                                      (_body33302_
                                       (_do-bind!32676_
                                        _env33282_
                                        (lambda ()
                                          (_continue33275_ _body33299_)))))
                                 (if (null? _locals33281_)
                                     _body33302_
                                     (cons '%#let-values
                                           (cons _locals33281_
                                                 (cons _body33302_ '())))))))
                            (_K3328733346_
                             (lambda (_rest33308_ _bind33309_)
                               (let* ((_bind3331033317_ _bind33309_)
                                      (_E3331233321_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3331033317_)))
                                      (_K3331333334_
                                       (lambda (_expr33324_ _id33325_)
                                         (let* ((_sexpr33327_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr33324_))
                                                (_$e33329_
                                                 (assget _sexpr33327_
                                                         _env-bind32665_)))
                                           (if _$e33329_
                                               ((lambda (_xid33332_)
                                                  (_lp33277_
                                                   _rest33308_
                                                   (cons (cons _id33325_
                                                               _xid33332_)
                                                         _subst33280_)
                                                   _locals33281_
                                                   _env33282_))
                                                _$e33329_)
                                               (_lp33277_
                                                _rest33308_
                                                _subst33280_
                                                (cons (cons (cons _id33325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr33324_ '()))
              _locals33281_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr33327_
                                                            _id33325_)
                                                      _env33282_)))))))
                                 (if (##pair? _bind3331033317_)
                                     (let ((_hd3331433337_
                                            (##car _bind3331033317_))
                                           (_tl3331533339_
                                            (##cdr _bind3331033317_)))
                                       (let* ((_id33342_ _hd3331433337_)
                                              (_expr33344_ _tl3331533339_))
                                         (_K3331333334_
                                          _expr33344_
                                          _id33342_)))
                                     (_E3331233321_))))))
                       (if (##pair? _rest3328333291_)
                           (let ((_hd3328833349_ (##car _rest3328333291_))
                                 (_tl3328933351_ (##cdr _rest3328333291_)))
                             (let* ((_bind33354_ _hd3328833349_)
                                    (_rest33356_ _tl3328933351_))
                               (_K3328733346_ _rest33356_ _bind33354_)))
                           (_else3328533305_))))))
                (_bind-e__0__4001440015_
                 (lambda (_bind33361_ _body33362_)
                   (let ((_continue33364_ _optimize-e32678_))
                     (_bind-e__4001240013_
                      _bind33361_
                      _body33362_
                      _continue33364_))))
                (_bind-e32685_
                 (lambda _g43110_
                   (let ((_g43109_ (length _g43110_)))
                     (cond ((##fx= _g43109_ 2)
                            (apply _bind-e__0__4001440015_ _g43110_))
                           ((##fx= _g43109_ 3)
                            (apply _bind-e__4001240013_ _g43110_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g43110_))))))
                (_lookup-block32686_
                 (lambda (_id33268_)
                   (find (lambda (_block33270_)
                           (gx#free-identifier=? (car _block33270_) _id33268_))
                         _blocks32428_)))
                (_inline-block32687_
                 (lambda (_block33144_ _args33145_)
                   (let* ((_kont33147_ (caddr _block33144_))
                          (_g3314933175_
                           (lambda (_g3315033172_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3315033172_)))
                          (_g3314833265_
                           (lambda (_g3315033178_)
                             (if (gx#stx-pair? _g3315033178_)
                                 (let ((_e3315333180_
                                        (gx#stx-e _g3315033178_)))
                                   (let ((_hd3315433183_ (##car _e3315333180_))
                                         (_tl3315533185_
                                          (##cdr _e3315333180_)))
                                     (if (gx#identifier? _hd3315433183_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3315433183_)
                                             (if (gx#stx-pair? _tl3315533185_)
                                                 (let ((_e3315633188_
                                                        (gx#stx-e
                                                         _tl3315533185_)))
                                                   (let ((_hd3315733191_
                                                          (##car _e3315633188_))
                                                         (_tl3315833193_
                                                          (##cdr _e3315633188_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3315733191_)
                                                         (let ((_g43111_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3315733191_
                         '0)))
                   (begin
                     (let ((_g43112_
                            (if (##values? _g43111_)
                                (##vector-length _g43111_)
                                1)))
                       (if (not (##fx= _g43112_ 2))
                           (error "Context expects 2 values" _g43112_)))
                     (let ((_target3315933196_ (##vector-ref _g43111_ 0))
                           (_tl3316133198_ (##vector-ref _g43111_ 1)))
                       (if (gx#stx-null? _tl3316133198_)
                           (letrec ((_loop3316233201_
                                     (lambda (_hd3316033204_ _id3316633206_)
                                       (if (gx#stx-pair? _hd3316033204_)
                                           (let ((_e3316333209_
                                                  (gx#stx-e _hd3316033204_)))
                                             (let ((_lp-hd3316433212_
                                                    (##car _e3316333209_))
                                                   (_lp-tl3316533214_
                                                    (##cdr _e3316333209_)))
                                               (_loop3316233201_
                                                _lp-tl3316533214_
                                                (cons _lp-hd3316433212_
                                                      _id3316633206_))))
                                           (let ((_id3316733217_
                                                  (reverse _id3316633206_)))
                                             (if (gx#stx-pair? _tl3315833193_)
                                                 (let ((_e3316833220_
                                                        (gx#stx-e
                                                         _tl3315833193_)))
                                                   (let ((_hd3316933223_
                                                          (##car _e3316833220_))
                                                         (_tl3317033225_
                                                          (##cdr _e3316833220_)))
                                                     (if (gx#stx-null?
                                                          _tl3317033225_)
                                                         ((lambda (_L33228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L33229_)
                    (if (null? (begin
                                 '#!void
                                 (foldr1 (lambda (_g3324833251_ _g3324933253_)
                                           (cons _g3324833251_ _g3324933253_))
                                         '()
                                         _L33229_)))
                        _L33228_
                        (let ((_subst33263_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3325533258_
                                                       _g3325633260_)
                                                (cons _g3325533258_
                                                      _g3325633260_))
                                              '()
                                              _L33229_))
                                    _args33145_)))
                          (gxc#apply-expression-subst*
                           _L33228_
                           _subst33263_))))
                  _hd3316933223_
                  _id3316733217_)
                 (_g3314933175_ _g3315033178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3314933175_
                                                  _g3315033178_)))))))
                             (_loop3316233201_ _target3315933196_ '()))
                           (_g3314933175_ _g3315033178_)))))
                 (_g3314933175_ _g3315033178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3314933175_ _g3315033178_))
                                             (_g3314933175_ _g3315033178_))
                                         (_g3314933175_ _g3315033178_))))
                                 (_g3314933175_ _g3315033178_)))))
                     (_g3314833265_ _kont33147_))))
                (_nonlinear-block?32688_
                 (lambda (_block32693_)
                   (letrec ((_nonlinear-expr?32695_
                             (lambda (_expr32803_)
                               (let* ((___stx4206942070_ _expr32803_)
                                      (_g3280932875_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4206942070_))))
                                 (let ((___kont4207142072_ (lambda () '#t))
                                       (___kont4207342074_
                                        (lambda (_L33074_)
                                          (let* ((___stx4205142052_ _L33074_)
                                                 (_g3309233101_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4205142052_))))
                                            (let ((___kont4205342054_
                                                   (lambda () '#f))
                                                  (___kont4205542056_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4205142052_)
                                                  (let ((_e3309433113_
                                                         (gx#stx-e
                                                          ___stx4205142052_)))
                                                    (let ((_tl3309633118_
                                                           (##cdr _e3309433113_))
                                                          (_hd3309533116_
                                                           (##car _e3309433113_)))
                                                      (if (gx#identifier?
                                                           _hd3309533116_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3309533116_)
                                                              (___kont4205342054_)
                                                              (___kont4205542056_))
                                                          (___kont4205542056_))))
                                                  (___kont4205542056_))))))
                                       (___kont4207742078_
                                        (lambda (_L32972_)
                                          (_nonlinear-expr?32695_ _L32972_)))
                                       (___kont4207942080_
                                        (lambda (_L32919_ _L32920_ _L32921_)
                                          (let ((_$e32940_
                                                 (_nonlinear-expr?32695_
                                                  _L32920_)))
                                            (if _$e32940_
                                                _$e32940_
                                                (_nonlinear-expr?32695_
                                                 _L32919_)))))
                                       (___kont4208142082_ (lambda () '#f)))
                                   (let* ((___match4213242133_
                                           (lambda (_e3284732948_
                                                    _hd3284832951_
                                                    _tl3284932953_
                                                    _e3285032956_
                                                    _hd3285132959_
                                                    _tl3285232961_)
                                             (if (gx#stx-pair? _tl3285232961_)
                                                 (let ((_e3285332964_
                                                        (gx#stx-e
                                                         _tl3285232961_)))
                                                   (let ((_tl3285532969_
                                                          (##cdr _e3285332964_))
                                                         (_hd3285432967_
                                                          (##car _e3285332964_)))
                                                     (if (gx#stx-null?
                                                          _tl3285532969_)
                                                         (___kont4207742078_
                                                          _hd3285432967_)
                                                         (___kont4208142082_))))
                                                 (___kont4208142082_))))
                                          (___match4211642117_
                                           (lambda (_e3281532990_
                                                    _hd3281632993_
                                                    _tl3281732995_
                                                    _e3281832998_
                                                    _hd3281933001_
                                                    _tl3282033003_
                                                    ___splice4207542076_
                                                    _target3282133006_
                                                    _tl3282333008_)
                                             (letrec ((_loop3282433011_
                                                       (lambda (_hd3282233014_)
                                                         (if (gx#stx-pair?
                                                              _hd3282233014_)
                                                             (let ((_e3282533017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3282233014_)))
                       (let ((_lp-tl3282733022_ (##cdr _e3282533017_))
                             (_lp-hd3282633020_ (##car _e3282533017_)))
                         (if (gx#stx-pair? _lp-hd3282633020_)
                             (let ((_e3282833025_
                                    (gx#stx-e _lp-hd3282633020_)))
                               (let ((_tl3283033030_ (##cdr _e3282833025_))
                                     (_hd3282933028_ (##car _e3282833025_)))
                                 (if (gx#stx-pair? _hd3282933028_)
                                     (let ((_e3283133033_
                                            (gx#stx-e _hd3282933028_)))
                                       (let ((_tl3283333038_
                                              (##cdr _e3283133033_))
                                             (_hd3283233036_
                                              (##car _e3283133033_)))
                                         (if (gx#stx-null? _tl3283333038_)
                                             (if (gx#stx-pair? _tl3283033030_)
                                                 (let ((_e3283433041_
                                                        (gx#stx-e
                                                         _tl3283033030_)))
                                                   (let ((_tl3283633046_
                                                          (##cdr _e3283433041_))
                                                         (_hd3283533044_
                                                          (##car _e3283433041_)))
                                                     (if (gx#stx-pair?
                                                          _hd3283533044_)
                                                         (let ((_e3283733049_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3283533044_)))
                   (let ((_tl3283933054_ (##cdr _e3283733049_))
                         (_hd3283833052_ (##car _e3283733049_)))
                     (if (gx#identifier? _hd3283833052_)
                         (if (gx#stx-eq? '%#ref _hd3283833052_)
                             (if (gx#stx-pair? _tl3283933054_)
                                 (let ((_e3284033057_
                                        (gx#stx-e _tl3283933054_)))
                                   (let ((_tl3284233062_ (##cdr _e3284033057_))
                                         (_hd3284133060_
                                          (##car _e3284033057_)))
                                     (if (gx#stx-null? _tl3284233062_)
                                         (if (gx#stx-null? _tl3283633046_)
                                             (_loop3282433011_
                                              _lp-tl3282733022_)
                                             (___match4213242133_
                                              _e3281532990_
                                              _hd3281632993_
                                              _tl3281732995_
                                              _e3281832998_
                                              _hd3281933001_
                                              _tl3282033003_))
                                         (___match4213242133_
                                          _e3281532990_
                                          _hd3281632993_
                                          _tl3281732995_
                                          _e3281832998_
                                          _hd3281933001_
                                          _tl3282033003_))))
                                 (___match4213242133_
                                  _e3281532990_
                                  _hd3281632993_
                                  _tl3281732995_
                                  _e3281832998_
                                  _hd3281933001_
                                  _tl3282033003_))
                             (___match4213242133_
                              _e3281532990_
                              _hd3281632993_
                              _tl3281732995_
                              _e3281832998_
                              _hd3281933001_
                              _tl3282033003_))
                         (___match4213242133_
                          _e3281532990_
                          _hd3281632993_
                          _tl3281732995_
                          _e3281832998_
                          _hd3281933001_
                          _tl3282033003_))))
                 (___match4213242133_
                  _e3281532990_
                  _hd3281632993_
                  _tl3281732995_
                  _e3281832998_
                  _hd3281933001_
                  _tl3282033003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4213242133_
                                                  _e3281532990_
                                                  _hd3281632993_
                                                  _tl3281732995_
                                                  _e3281832998_
                                                  _hd3281933001_
                                                  _tl3282033003_))
                                             (___match4213242133_
                                              _e3281532990_
                                              _hd3281632993_
                                              _tl3281732995_
                                              _e3281832998_
                                              _hd3281933001_
                                              _tl3282033003_))))
                                     (___match4213242133_
                                      _e3281532990_
                                      _hd3281632993_
                                      _tl3281732995_
                                      _e3281832998_
                                      _hd3281933001_
                                      _tl3282033003_))))
                             (___match4213242133_
                              _e3281532990_
                              _hd3281632993_
                              _tl3281732995_
                              _e3281832998_
                              _hd3281933001_
                              _tl3282033003_))))
                     (let ()
                       (if (gx#stx-pair? _tl3282033003_)
                           (let ((_e3284333066_ (gx#stx-e _tl3282033003_)))
                             (let ((_tl3284533071_ (##cdr _e3284333066_))
                                   (_hd3284433069_ (##car _e3284333066_)))
                               (if (gx#stx-null? _tl3284533071_)
                                   (___kont4207342074_ _hd3284433069_)
                                   (___kont4208142082_))))
                           (___kont4208142082_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3282433011_
                                                _target3282133006_)))))
                                     (if (gx#stx-pair? ___stx4206942070_)
                                         (let ((_e3281133131_
                                                (gx#stx-e ___stx4206942070_)))
                                           (let ((_tl3281333136_
                                                  (##cdr _e3281133131_))
                                                 (_hd3281233134_
                                                  (##car _e3281133131_)))
                                             (if (gx#identifier?
                                                  _hd3281233134_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3281233134_)
                                                     (___kont4207142072_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3281233134_)
                                                         (if (gx#stx-pair?
                                                              _tl3281333136_)
                                                             (let ((_e3281832998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3281333136_)))
                       (let ((_tl3282033003_ (##cdr _e3281832998_))
                             (_hd3281933001_ (##car _e3281832998_)))
                         (if (gx#stx-pair/null? _hd3281933001_)
                             (let ((___splice4207542076_
                                    (gx#syntax-split-splice
                                     _hd3281933001_
                                     '0)))
                               (let ((_tl3282333008_
                                      (##vector-ref ___splice4207542076_ '1))
                                     (_target3282133006_
                                      (##vector-ref ___splice4207542076_ '0)))
                                 (if (gx#stx-null? _tl3282333008_)
                                     (___match4211642117_
                                      _e3281133131_
                                      _hd3281233134_
                                      _tl3281333136_
                                      _e3281832998_
                                      _hd3281933001_
                                      _tl3282033003_
                                      ___splice4207542076_
                                      _target3282133006_
                                      _tl3282333008_)
                                     (if (gx#stx-pair? _tl3282033003_)
                                         (let ((_e3285332964_
                                                (gx#stx-e _tl3282033003_)))
                                           (let ((_tl3285532969_
                                                  (##cdr _e3285332964_))
                                                 (_hd3285432967_
                                                  (##car _e3285332964_)))
                                             (if (gx#stx-null? _tl3285532969_)
                                                 (___kont4207742078_
                                                  _hd3285432967_)
                                                 (___kont4208142082_))))
                                         (___kont4208142082_)))))
                             (if (gx#stx-pair? _tl3282033003_)
                                 (let ((_e3285332964_
                                        (gx#stx-e _tl3282033003_)))
                                   (let ((_tl3285532969_ (##cdr _e3285332964_))
                                         (_hd3285432967_
                                          (##car _e3285332964_)))
                                     (if (gx#stx-null? _tl3285532969_)
                                         (___kont4207742078_ _hd3285432967_)
                                         (___kont4208142082_))))
                                 (___kont4208142082_)))))
                     (___kont4208142082_))
                 (if (gx#stx-eq? '%#if _hd3281233134_)
                     (if (gx#stx-pair? _tl3281333136_)
                         (let ((_e3286232895_ (gx#stx-e _tl3281333136_)))
                           (let ((_tl3286432900_ (##cdr _e3286232895_))
                                 (_hd3286332898_ (##car _e3286232895_)))
                             (if (gx#stx-pair? _tl3286432900_)
                                 (let ((_e3286532903_
                                        (gx#stx-e _tl3286432900_)))
                                   (let ((_tl3286732908_ (##cdr _e3286532903_))
                                         (_hd3286632906_
                                          (##car _e3286532903_)))
                                     (if (gx#stx-pair? _tl3286732908_)
                                         (let ((_e3286832911_
                                                (gx#stx-e _tl3286732908_)))
                                           (let ((_tl3287032916_
                                                  (##cdr _e3286832911_))
                                                 (_hd3286932914_
                                                  (##car _e3286832911_)))
                                             (if (gx#stx-null? _tl3287032916_)
                                                 (___kont4207942080_
                                                  _hd3286932914_
                                                  _hd3286632906_
                                                  _hd3286332898_)
                                                 (___kont4208142082_))))
                                         (___kont4208142082_))))
                                 (___kont4208142082_))))
                         (___kont4208142082_))
                     (___kont4208142082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4208142082_))))
                                         (___kont4208142082_))))))))
                     (let* ((_kont32697_ (caddr _block32693_))
                            (_g3269932725_
                             (lambda (_g3270032722_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3270032722_)))
                            (_g3269832800_
                             (lambda (_g3270032728_)
                               (if (gx#stx-pair? _g3270032728_)
                                   (let ((_e3270332730_
                                          (gx#stx-e _g3270032728_)))
                                     (let ((_hd3270432733_
                                            (##car _e3270332730_))
                                           (_tl3270532735_
                                            (##cdr _e3270332730_)))
                                       (if (gx#identifier? _hd3270432733_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3270432733_)
                                               (if (gx#stx-pair?
                                                    _tl3270532735_)
                                                   (let ((_e3270632738_
                                                          (gx#stx-e
                                                           _tl3270532735_)))
                                                     (let ((_hd3270732741_
                                                            (##car _e3270632738_))
                                                           (_tl3270832743_
                                                            (##cdr _e3270632738_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3270732741_)
                                                           (let ((_g43113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3270732741_ '0)))
                     (begin
                       (let ((_g43114_
                              (if (##values? _g43113_)
                                  (##vector-length _g43113_)
                                  1)))
                         (if (not (##fx= _g43114_ 2))
                             (error "Context expects 2 values" _g43114_)))
                       (let ((_target3270932746_ (##vector-ref _g43113_ 0))
                             (_tl3271132748_ (##vector-ref _g43113_ 1)))
                         (if (gx#stx-null? _tl3271132748_)
                             (letrec ((_loop3271232751_
                                       (lambda (_hd3271032754_ _id3271632756_)
                                         (if (gx#stx-pair? _hd3271032754_)
                                             (let ((_e3271332759_
                                                    (gx#stx-e _hd3271032754_)))
                                               (let ((_lp-hd3271432762_
                                                      (##car _e3271332759_))
                                                     (_lp-tl3271532764_
                                                      (##cdr _e3271332759_)))
                                                 (_loop3271232751_
                                                  _lp-tl3271532764_
                                                  (cons _lp-hd3271432762_
                                                        _id3271632756_))))
                                             (let ((_id3271732767_
                                                    (reverse _id3271632756_)))
                                               (if (gx#stx-pair?
                                                    _tl3270832743_)
                                                   (let ((_e3271832770_
                                                          (gx#stx-e
                                                           _tl3270832743_)))
                                                     (let ((_hd3271932773_
                                                            (##car _e3271832770_))
                                                           (_tl3272032775_
                                                            (##cdr _e3271832770_)))
                                                       (if (gx#stx-null?
                                                            _tl3272032775_)
                                                           ((lambda (_L32778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L32779_)
                      (_nonlinear-expr?32695_ _L32778_))
                    _hd3271932773_
                    _id3271732767_)
                   (_g3269932725_ _g3270032728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3269932725_
                                                    _g3270032728_)))))))
                               (_loop3271232751_ _target3270932746_ '()))
                             (_g3269932725_ _g3270032728_)))))
                   (_g3269932725_ _g3270032728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3269932725_
                                                    _g3270032728_))
                                               (_g3269932725_ _g3270032728_))
                                           (_g3269932725_ _g3270032728_))))
                                   (_g3269932725_ _g3270032728_)))))
                       (_g3269832800_ _kont32697_))))))
        (_do-assert32667_
         _assert32426_
         (lambda ()
           (_do-bind32674_
            _bind32427_
            (lambda ()
              (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                  (_do-splice!32677_
                   (lambda () (_optimize-e32678_ _body32425_)))
                  (_optimize-e32678_ _body32425_)))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks32337_ _konts32338_)
      (letrec* ((_rtab32340_ (make-hash-table-eq)))
        (begin
          (for-each
           (lambda (_block32342_)
             (gxc#apply-collect-runtime-refs (caddr _block32342_) _rtab32340_))
           _konts32338_)
          (let _lp32344_ ((_rest32346_ _blocks32337_) (_r32347_ '()))
            (let* ((_rest3234832356_ _rest32346_)
                   (_else3235032364_ (lambda () (reverse _r32347_)))
                   (_K3235232413_
                    (lambda (_rest32367_ _block32368_)
                      (let* ((_block3236932380_ _block32368_)
                             (_E3237132384_
                              (lambda ()
                                (error '"No clause matching"
                                       _block3236932380_)))
                             (_K3237232391_
                              (lambda (_kont32387_ _type32388_ _name32389_)
                                (if (table-ref
                                     _rtab32340_
                                     (gxc#identifier-symbol _name32389_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont32387_
                                       _rtab32340_)
                                      (_lp32344_
                                       _rest32367_
                                       (cons _block32368_ _r32347_)))
                                    (_lp32344_ _rest32367_ _r32347_)))))
                        (if (##pair? _block3236932380_)
                            (let ((_hd3237332394_ (##car _block3236932380_))
                                  (_tl3237432396_ (##cdr _block3236932380_)))
                              (let ((_name32399_ _hd3237332394_))
                                (if (##pair? _tl3237432396_)
                                    (let ((_hd3237532401_
                                           (##car _tl3237432396_))
                                          (_tl3237632403_
                                           (##cdr _tl3237432396_)))
                                      (let ((_type32406_ _hd3237532401_))
                                        (if (##pair? _tl3237632403_)
                                            (let* ((_hd3237732408_
                                                    (##car _tl3237632403_))
                                                   (_kont32411_
                                                    _hd3237732408_))
                                              (_K3237232391_
                                               _kont32411_
                                               _type32406_
                                               _name32399_))
                                            (_E3237132384_))))
                                    (_E3237132384_))))
                            (_E3237132384_))))))
              (if (##pair? _rest3234832356_)
                  (let ((_hd3235332416_ (##car _rest3234832356_))
                        (_tl3235432418_ (##cdr _rest3234832356_)))
                    (let* ((_block32421_ _hd3235332416_)
                           (_rest32423_ _tl3235432418_))
                      (_K3235232413_ _rest32423_ _block32421_)))
                  (_else3235032364_))))))))
  (define gxc#optimize-match-fuse-restart-blocks
    (lambda (_blocks32261_ _konts32262_)
      (let* ((_blocks3226332279_ _blocks32261_)
             (_else3226532287_ (lambda () _blocks32261_))
             (_K3226732305_
              (lambda (_rest32290_ _kont32291_ _name32292_)
                (letrec* ((_rtab32294_ (make-hash-table-eq)))
                  (begin
                    (for-each
                     (lambda (_block32296_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _block32296_)
                        _rtab32294_))
                     _konts32262_)
                    (if (fx= (table-ref
                              _rtab32294_
                              (gxc#identifier-symbol _name32292_))
                             '1)
                        (let* ((_rblock32300_
                                (find (lambda (_block32298_)
                                        (gxc#apply-find-var-refs
                                         (caddr _block32298_)
                                         (cons _name32292_ '())))
                                      _konts32262_))
                               (_assert32302_
                                (gxc#optimize-match-assert-restart
                                 _rblock32300_
                                 _name32292_)))
                          (cons (cons _name32292_
                                      (cons 'restart:
                                            (cons _kont32291_
                                                  (cons _assert32302_ '()))))
                                _rest32290_))
                        _blocks32261_))))))
        (if (##pair? _blocks3226332279_)
            (let ((_hd3226832308_ (##car _blocks3226332279_))
                  (_tl3226932310_ (##cdr _blocks3226332279_)))
              (if (##pair? _hd3226832308_)
                  (let ((_hd3227032313_ (##car _hd3226832308_))
                        (_tl3227132315_ (##cdr _hd3226832308_)))
                    (let ((_name32318_ _hd3227032313_))
                      (if (##pair? _tl3227132315_)
                          (let ((_hd3227232320_ (##car _tl3227132315_))
                                (_tl3227332322_ (##cdr _tl3227132315_)))
                            (if (##eq? _hd3227232320_ 'restart:)
                                (if (##pair? _tl3227332322_)
                                    (let ((_hd3227432325_
                                           (##car _tl3227332322_))
                                          (_tl3227532327_
                                           (##cdr _tl3227332322_)))
                                      (let ((_kont32330_ _hd3227432325_))
                                        (if (##pair? _tl3227532327_)
                                            (let ((_tl3227732332_
                                                   (##cdr _tl3227532327_)))
                                              (if (##null? _tl3227732332_)
                                                  (let ((_rest32335_
                                                         _tl3226932310_))
                                                    (_K3226732305_
                                                     _rest32335_
                                                     _kont32330_
                                                     _name32318_))
                                                  (_else3226532287_)))
                                            (_else3226532287_))))
                                    (_else3226532287_))
                                (_else3226532287_)))
                          (_else3226532287_))))
                  (_else3226532287_)))
            (_else3226532287_)))))
  (define gxc#optimize-match-assert-restart
    (lambda (_block31657_ _name31658_)
      (letrec ((_assert-restart31660_
                (lambda (_expr31816_ _assert31817_)
                  (let* ((___stx4217342174_ _expr31816_)
                         (_g3182331920_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4217342174_))))
                    (let ((___kont4217542176_
                           (lambda (_L32236_ _L32237_ _L32238_)
                             (let ((_$e32255_
                                    (_assert-restart31660_
                                     _L32237_
                                     (cons (cons _L32238_ '#t)
                                           _assert31817_))))
                               (if _$e32255_
                                   _$e32255_
                                   (_assert-restart31660_
                                    _L32236_
                                    (cons (cons _L32238_ '#f)
                                          _assert31817_))))))
                          (___kont4217742178_
                           (lambda (_L32184_)
                             (if (gx#free-identifier=? _L32184_ _name31658_)
                                 _assert31817_
                                 '#f)))
                          (___kont4217942180_
                           (lambda (_L32134_)
                             (_assert-restart31660_ _L32134_ _assert31817_)))
                          (___kont4218142182_
                           (lambda (_L32060_
                                    _L32061_
                                    _L32062_
                                    _L32063_
                                    _L32064_)
                             (_assert-restart31660_ _L32062_ _assert31817_)))
                          (___kont4218742188_ (lambda () '#f)))
                      (let ((___match4234242343_
                             (lambda (_e3186831932_
                                      _hd3186931935_
                                      _tl3187031937_
                                      _e3187131940_
                                      _hd3187231943_
                                      _tl3187331945_
                                      _e3187431948_
                                      _hd3187531951_
                                      _tl3187631953_
                                      _e3187731956_
                                      _hd3187831959_
                                      _tl3187931961_
                                      _e3188031964_
                                      _hd3188131967_
                                      _tl3188231969_
                                      _e3188331972_
                                      _hd3188431975_
                                      _tl3188531977_
                                      _e3188631980_
                                      _hd3188731983_
                                      _tl3188831985_
                                      _e3188931988_
                                      _hd3189031991_
                                      _tl3189131993_
                                      ___splice4218342184_
                                      _target3189231996_
                                      _tl3189431998_)
                               (letrec ((_loop3189532001_
                                         (lambda (_hd3189332004_
                                                  _id3189932006_)
                                           (if (gx#stx-pair? _hd3189332004_)
                                               (let ((_e3189632009_
                                                      (gx#stx-e
                                                       _hd3189332004_)))
                                                 (let ((_lp-tl3189832014_
                                                        (##cdr _e3189632009_))
                                                       (_lp-hd3189732012_
                                                        (##car _e3189632009_)))
                                                   (_loop3189532001_
                                                    _lp-tl3189832014_
                                                    (cons _lp-hd3189732012_
                                                          _id3189932006_))))
                                               (let ((_id3190032017_
                                                      (reverse _id3189932006_)))
                                                 (if (gx#stx-pair?
                                                      _tl3189131993_)
                                                     (let ((_e3190132020_
                                                            (gx#stx-e
                                                             _tl3189131993_)))
                                                       (let ((_tl3190332025_
                                                              (##cdr _e3190132020_))
                                                             (_hd3190232023_
                                                              (##car _e3190132020_)))
                                                         (if (gx#stx-null?
                                                              _tl3190332025_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3188531977_)
                         (if (gx#stx-pair/null? _tl3187631953_)
                             (let ((___splice4218542186_
                                    (gx#syntax-split-splice
                                     _tl3187631953_
                                     '0)))
                               (let ((_tl3190632030_
                                      (##vector-ref ___splice4218542186_ '1))
                                     (_target3190432028_
                                      (##vector-ref ___splice4218542186_ '0)))
                                 (if (gx#stx-null? _tl3190632030_)
                                     (letrec ((_loop3190732033_
                                               (lambda (_hd3190532036_
                                                        _bind3191132038_)
                                                 (if (gx#stx-pair?
                                                      _hd3190532036_)
                                                     (let ((_e3190832041_
                                                            (gx#stx-e
                                                             _hd3190532036_)))
                                                       (let ((_lp-tl3191032046_
                                                              (##cdr _e3190832041_))
                                                             (_lp-hd3190932044_
                                                              (##car _e3190832041_)))
                                                         (_loop3190732033_
                                                          _lp-tl3191032046_
                                                          (cons _lp-hd3190932044_
                                                                _bind3191132038_))))
                                                     (let ((_bind3191232049_
                                                            (reverse _bind3191132038_)))
                                                       (if (gx#stx-pair?
                                                            _tl3187331945_)
                                                           (let ((_e3191332052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3187331945_)))
                     (let ((_tl3191532057_ (##cdr _e3191332052_))
                           (_hd3191432055_ (##car _e3191332052_)))
                       (if (gx#stx-null? _tl3191532057_)
                           (___kont4218142182_
                            _hd3191432055_
                            _bind3191232049_
                            _hd3190232023_
                            _id3190032017_
                            _hd3188131967_)
                           (___kont4218742188_))))
                   (___kont4218742188_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3190732033_
                                        _target3190432028_
                                        '()))
                                     (___kont4218742188_))))
                             (___kont4218742188_))
                         (___kont4218742188_))
                     (___kont4218742188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4218742188_)))))))
                                 (_loop3189532001_ _target3189231996_ '())))))
                        (if (gx#stx-pair? ___stx4217342174_)
                            (let ((_e3182832204_ (gx#stx-e ___stx4217342174_)))
                              (let ((_tl3183032209_ (##cdr _e3182832204_))
                                    (_hd3182932207_ (##car _e3182832204_)))
                                (if (gx#identifier? _hd3182932207_)
                                    (if (gx#stx-eq? '%#if _hd3182932207_)
                                        (if (gx#stx-pair? _tl3183032209_)
                                            (let ((_e3183132212_
                                                   (gx#stx-e _tl3183032209_)))
                                              (let ((_tl3183332217_
                                                     (##cdr _e3183132212_))
                                                    (_hd3183232215_
                                                     (##car _e3183132212_)))
                                                (if (gx#stx-pair?
                                                     _tl3183332217_)
                                                    (let ((_e3183432220_
                                                           (gx#stx-e
                                                            _tl3183332217_)))
                                                      (let ((_tl3183632225_
                                                             (##cdr _e3183432220_))
                                                            (_hd3183532223_
                                                             (##car _e3183432220_)))
                                                        (if (gx#stx-pair?
                                                             _tl3183632225_)
                                                            (let ((_e3183732228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3183632225_)))
                      (let ((_tl3183932233_ (##cdr _e3183732228_))
                            (_hd3183832231_ (##car _e3183732228_)))
                        (if (gx#stx-null? _tl3183932233_)
                            (___kont4217542176_
                             _hd3183832231_
                             _hd3183532223_
                             _hd3183232215_)
                            (___kont4218742188_))))
                    (___kont4218742188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4218742188_))))
                                            (___kont4218742188_))
                                        (if (gx#stx-eq? '%#call _hd3182932207_)
                                            (if (gx#stx-pair? _tl3183032209_)
                                                (let ((_e3184432160_
                                                       (gx#stx-e
                                                        _tl3183032209_)))
                                                  (let ((_tl3184632165_
                                                         (##cdr _e3184432160_))
                                                        (_hd3184532163_
                                                         (##car _e3184432160_)))
                                                    (if (gx#stx-pair?
                                                         _hd3184532163_)
                                                        (let ((_e3184732168_
                                                               (gx#stx-e
                                                                _hd3184532163_)))
                                                          (let ((_tl3184932173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3184732168_))
                        (_hd3184832171_ (##car _e3184732168_)))
                    (if (gx#identifier? _hd3184832171_)
                        (if (gx#stx-eq? '%#ref _hd3184832171_)
                            (if (gx#stx-pair? _tl3184932173_)
                                (let ((_e3185032176_
                                       (gx#stx-e _tl3184932173_)))
                                  (let ((_tl3185232181_ (##cdr _e3185032176_))
                                        (_hd3185132179_ (##car _e3185032176_)))
                                    (if (gx#stx-null? _tl3185232181_)
                                        (___kont4217742178_ _hd3185132179_)
                                        (___kont4218742188_))))
                                (___kont4218742188_))
                            (___kont4218742188_))
                        (___kont4218742188_))))
                (___kont4218742188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4218742188_))
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3182932207_)
                                                (if (gx#stx-pair?
                                                     _tl3183032209_)
                                                    (let ((_e3185732118_
                                                           (gx#stx-e
                                                            _tl3183032209_)))
                                                      (let ((_tl3185932123_
                                                             (##cdr _e3185732118_))
                                                            (_hd3185832121_
                                                             (##car _e3185732118_)))
                                                        (if (gx#stx-pair?
                                                             _tl3185932123_)
                                                            (let ((_e3186032126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3185932123_)))
                      (let ((_tl3186232131_ (##cdr _e3186032126_))
                            (_hd3186132129_ (##car _e3186032126_)))
                        (if (gx#stx-null? _tl3186232131_)
                            (___kont4217942180_ _hd3186132129_)
                            (___kont4218742188_))))
                    (___kont4218742188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4218742188_))
                                                (if (gx#stx-eq?
                                                     '%#letrec-values
                                                     _hd3182932207_)
                                                    (if (gx#stx-pair?
                                                         _tl3183032209_)
                                                        (let ((_e3187131940_
                                                               (gx#stx-e
                                                                _tl3183032209_)))
                                                          (let ((_tl3187331945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3187131940_))
                        (_hd3187231943_ (##car _e3187131940_)))
                    (if (gx#stx-pair? _hd3187231943_)
                        (let ((_e3187431948_ (gx#stx-e _hd3187231943_)))
                          (let ((_tl3187631953_ (##cdr _e3187431948_))
                                (_hd3187531951_ (##car _e3187431948_)))
                            (if (gx#stx-pair? _hd3187531951_)
                                (let ((_e3187731956_
                                       (gx#stx-e _hd3187531951_)))
                                  (let ((_tl3187931961_ (##cdr _e3187731956_))
                                        (_hd3187831959_ (##car _e3187731956_)))
                                    (if (gx#stx-pair? _hd3187831959_)
                                        (let ((_e3188031964_
                                               (gx#stx-e _hd3187831959_)))
                                          (let ((_tl3188231969_
                                                 (##cdr _e3188031964_))
                                                (_hd3188131967_
                                                 (##car _e3188031964_)))
                                            (if (gx#stx-null? _tl3188231969_)
                                                (if (gx#stx-pair?
                                                     _tl3187931961_)
                                                    (let ((_e3188331972_
                                                           (gx#stx-e
                                                            _tl3187931961_)))
                                                      (let ((_tl3188531977_
                                                             (##cdr _e3188331972_))
                                                            (_hd3188431975_
                                                             (##car _e3188331972_)))
                                                        (if (gx#stx-pair?
                                                             _hd3188431975_)
                                                            (let ((_e3188631980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3188431975_)))
                      (let ((_tl3188831985_ (##cdr _e3188631980_))
                            (_hd3188731983_ (##car _e3188631980_)))
                        (if (gx#identifier? _hd3188731983_)
                            (if (gx#stx-eq? '%#lambda _hd3188731983_)
                                (if (gx#stx-pair? _tl3188831985_)
                                    (let ((_e3188931988_
                                           (gx#stx-e _tl3188831985_)))
                                      (let ((_tl3189131993_
                                             (##cdr _e3188931988_))
                                            (_hd3189031991_
                                             (##car _e3188931988_)))
                                        (if (gx#stx-pair/null? _hd3189031991_)
                                            (let ((___splice4218342184_
                                                   (gx#syntax-split-splice
                                                    _hd3189031991_
                                                    '0)))
                                              (let ((_tl3189431998_
                                                     (##vector-ref
                                                      ___splice4218342184_
                                                      '1))
                                                    (_target3189231996_
                                                     (##vector-ref
                                                      ___splice4218342184_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3189431998_)
                                                    (___match4234242343_
                                                     _e3182832204_
                                                     _hd3182932207_
                                                     _tl3183032209_
                                                     _e3187131940_
                                                     _hd3187231943_
                                                     _tl3187331945_
                                                     _e3187431948_
                                                     _hd3187531951_
                                                     _tl3187631953_
                                                     _e3187731956_
                                                     _hd3187831959_
                                                     _tl3187931961_
                                                     _e3188031964_
                                                     _hd3188131967_
                                                     _tl3188231969_
                                                     _e3188331972_
                                                     _hd3188431975_
                                                     _tl3188531977_
                                                     _e3188631980_
                                                     _hd3188731983_
                                                     _tl3188831985_
                                                     _e3188931988_
                                                     _hd3189031991_
                                                     _tl3189131993_
                                                     ___splice4218342184_
                                                     _target3189231996_
                                                     _tl3189431998_)
                                                    (___kont4218742188_))))
                                            (___kont4218742188_))))
                                    (___kont4218742188_))
                                (___kont4218742188_))
                            (___kont4218742188_))))
                    (___kont4218742188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4218742188_))
                                                (___kont4218742188_))))
                                        (___kont4218742188_))))
                                (___kont4218742188_))))
                        (___kont4218742188_))))
                (___kont4218742188_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4218742188_)))))
                                    (___kont4218742188_))))
                            (___kont4218742188_))))))))
        (let* ((_block3166131674_ _block31657_)
               (_E3166331678_
                (lambda () (error '"No clause matching" _block3166131674_)))
               (_K3166431791_
                (lambda (_maybe-bind31681_ _assert31682_ _kont31683_)
                  (let* ((_g3168531711_
                          (lambda (_g3168631708_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3168631708_)))
                         (_g3168431788_
                          (lambda (_g3168631714_)
                            (if (gx#stx-pair? _g3168631714_)
                                (let ((_e3168931716_ (gx#stx-e _g3168631714_)))
                                  (let ((_hd3169031719_ (##car _e3168931716_))
                                        (_tl3169131721_ (##cdr _e3168931716_)))
                                    (if (gx#identifier? _hd3169031719_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3169031719_)
                                            (if (gx#stx-pair? _tl3169131721_)
                                                (let ((_e3169231724_
                                                       (gx#stx-e
                                                        _tl3169131721_)))
                                                  (let ((_hd3169331727_
                                                         (##car _e3169231724_))
                                                        (_tl3169431729_
                                                         (##cdr _e3169231724_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3169331727_)
                                                        (let ((_g43115_
                                                               (gx#syntax-split-splice
                                                                _hd3169331727_
                                                                '0)))
                                                          (begin
                                                            (let ((_g43116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g43115_)
                               (##vector-length _g43115_)
                               1)))
                      (if (not (##fx= _g43116_ 2))
                          (error "Context expects 2 values" _g43116_)))
                    (let ((_target3169531732_ (##vector-ref _g43115_ 0))
                          (_tl3169731734_ (##vector-ref _g43115_ 1)))
                      (if (gx#stx-null? _tl3169731734_)
                          (letrec ((_loop3169831737_
                                    (lambda (_hd3169631740_ _id3170231742_)
                                      (if (gx#stx-pair? _hd3169631740_)
                                          (let ((_e3169931745_
                                                 (gx#stx-e _hd3169631740_)))
                                            (let ((_lp-hd3170031748_
                                                   (##car _e3169931745_))
                                                  (_lp-tl3170131750_
                                                   (##cdr _e3169931745_)))
                                              (_loop3169831737_
                                               _lp-tl3170131750_
                                               (cons _lp-hd3170031748_
                                                     _id3170231742_))))
                                          (let ((_id3170331753_
                                                 (reverse _id3170231742_)))
                                            (if (gx#stx-pair? _tl3169431729_)
                                                (let ((_e3170431756_
                                                       (gx#stx-e
                                                        _tl3169431729_)))
                                                  (let ((_hd3170531759_
                                                         (##car _e3170431756_))
                                                        (_tl3170631761_
                                                         (##cdr _e3170431756_)))
                                                    (if (gx#stx-null?
                                                         _tl3170631761_)
                                                        ((lambda (_L31764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31765_)
                   (_assert-restart31660_ _L31764_ _assert31682_))
                 _hd3170531759_
                 _id3170331753_)
                (_g3168531711_ _g3168631714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3168531711_
                                                 _g3168631714_)))))))
                            (_loop3169831737_ _target3169531732_ '()))
                          (_g3168531711_ _g3168631714_)))))
                (_g3168531711_ _g3168631714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3168531711_ _g3168631714_))
                                            (_g3168531711_ _g3168631714_))
                                        (_g3168531711_ _g3168631714_))))
                                (_g3168531711_ _g3168631714_)))))
                    (_g3168431788_ _kont31683_)))))
          (if (##pair? _block3166131674_)
              (let ((_tl3166631794_ (##cdr _block3166131674_)))
                (if (##pair? _tl3166631794_)
                    (let ((_tl3166831797_ (##cdr _tl3166631794_)))
                      (if (##pair? _tl3166831797_)
                          (let ((_hd3166931800_ (##car _tl3166831797_))
                                (_tl3167031802_ (##cdr _tl3166831797_)))
                            (let ((_kont31805_ _hd3166931800_))
                              (if (##pair? _tl3167031802_)
                                  (let ((_hd3167131807_ (##car _tl3167031802_))
                                        (_tl3167231809_
                                         (##cdr _tl3167031802_)))
                                    (let* ((_assert31812_ _hd3167131807_)
                                           (_maybe-bind31814_ _tl3167231809_))
                                      (_K3166431791_
                                       _maybe-bind31814_
                                       _assert31812_
                                       _kont31805_)))
                                  (_E3166331678_))))
                          (_E3166331678_)))
                    (_E3166331678_)))
              (_E3166331678_))))))
  (define gxc#optimize-syntax-case
    (lambda (_stx31288_)
      (let* ((_g3129031320_
              (lambda (_g3129131317_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3129131317_)))
             (_g3128931654_
              (lambda (_g3129131323_)
                (if (gx#stx-pair? _g3129131323_)
                    (let ((_e3129531325_ (gx#stx-e _g3129131323_)))
                      (let ((_hd3129631328_ (##car _e3129531325_))
                            (_tl3129731330_ (##cdr _e3129531325_)))
                        (if (gx#identifier? _hd3129631328_)
                            (if (gx#stx-eq? '%#let-values _hd3129631328_)
                                (if (gx#stx-pair? _tl3129731330_)
                                    (let ((_e3129831333_
                                           (gx#stx-e _tl3129731330_)))
                                      (let ((_hd3129931336_
                                             (##car _e3129831333_))
                                            (_tl3130031338_
                                             (##cdr _e3129831333_)))
                                        (if (gx#stx-pair? _hd3129931336_)
                                            (let ((_e3130131341_
                                                   (gx#stx-e _hd3129931336_)))
                                              (let ((_hd3130231344_
                                                     (##car _e3130131341_))
                                                    (_tl3130331346_
                                                     (##cdr _e3130131341_)))
                                                (if (gx#stx-pair?
                                                     _hd3130231344_)
                                                    (let ((_e3130431349_
                                                           (gx#stx-e
                                                            _hd3130231344_)))
                                                      (let ((_hd3130531352_
                                                             (##car _e3130431349_))
                                                            (_tl3130631354_
                                                             (##cdr _e3130431349_)))
                                                        (if (gx#stx-pair?
                                                             _hd3130531352_)
                                                            (let ((_e3130731357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3130531352_)))
                      (let ((_hd3130831360_ (##car _e3130731357_))
                            (_tl3130931362_ (##cdr _e3130731357_)))
                        (if (gx#stx-null? _tl3130931362_)
                            (if (gx#stx-pair? _tl3130631354_)
                                (let ((_e3131031365_
                                       (gx#stx-e _tl3130631354_)))
                                  (let ((_hd3131131368_ (##car _e3131031365_))
                                        (_tl3131231370_ (##cdr _e3131031365_)))
                                    (if (gx#stx-null? _tl3131231370_)
                                        (if (gx#stx-null? _tl3130331346_)
                                            (if (gx#stx-pair? _tl3130031338_)
                                                (let ((_e3131331373_
                                                       (gx#stx-e
                                                        _tl3130031338_)))
                                                  (let ((_hd3131431376_
                                                         (##car _e3131331373_))
                                                        (_tl3131531378_
                                                         (##cdr _e3131331373_)))
                                                    (if (gx#stx-null?
                                                         _tl3131531378_)
                                                        ((lambda (_L31381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31382_
                          _L31383_)
                   (let _lp31407_ ((_body31409_ _L31381_) (_clauses31410_ '()))
                     (let* ((___stx4234542346_ _body31409_)
                            (_g3141331460_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4234542346_))))
                       (let ((___kont4234742348_
                              (lambda (_L31626_ _L31627_ _L31628_)
                                (_lp31407_
                                 _L31626_
                                 (cons (cons _L31628_ (gxc#compile-e _L31627_))
                                       _clauses31410_))))
                             (___kont4234942350_
                              (lambda (_L31505_ _L31506_)
                                (let ((_$e31527_ (length _clauses31410_)))
                                  (if (eq? '0 _$e31527_)
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _L31383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L31382_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gxc#compile-e
                                                          _body31409_)
                                                         '())))
                                       _stx31288_)
                                      (if (eq? '1 _$e31527_)
                                          (let* ((_clauses3152931538_
                                                  _clauses31410_)
                                                 (_E3153131542_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _clauses3152931538_)))
                                                 (_K3153231548_
                                                  (lambda (_clause-lambda31545_
                                                           _clause31546_)
                                                    (gxc#xform-wrap-source
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _L31383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _L31382_ '()))
                               '())
                         (cons (cons '%#let-values
                                     (cons (cons (cons (cons _clause31546_ '())
                                                       (cons _clause-lambda31545_
                                                             '()))
                                                 '())
                                           (cons (gxc#compile-e _body31409_)
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx31288_))))
                                            (if (##pair? _clauses3152931538_)
                                                (let ((_hd3153331551_
                                                       (##car _clauses3152931538_))
                                                      (_tl3153431553_
                                                       (##cdr _clauses3152931538_)))
                                                  (if (##pair? _hd3153331551_)
                                                      (let ((_hd3153531556_
                                                             (##car _hd3153331551_))
                                                            (_tl3153631558_
                                                             (##cdr _hd3153331551_)))
                                                        (let* ((_clause31561_
                                                                _hd3153531556_)
                                                               (_clause-lambda31563_
                                                                _tl3153631558_))
                                                          (if (##null? _tl3153431553_)
                                                              (_K3153231548_
                                                               _clause-lambda31563_
                                                               _clause31561_)
                                                              (_E3153131542_))))
                                                      (_E3153131542_)))
                                                (_E3153131542_)))
                                          (gxc#optimize-syntax-case-body
                                           _stx31288_
                                           (gxc#compile-e _L31505_)
                                           (cons _L31383_ _L31382_)
                                           _clauses31410_)))))))
                         (if (gx#stx-pair? ___stx4234542346_)
                             (let ((_e3141831570_
                                    (gx#stx-e ___stx4234542346_)))
                               (let ((_tl3142031575_ (##cdr _e3141831570_))
                                     (_hd3141931573_ (##car _e3141831570_)))
                                 (if (gx#identifier? _hd3141931573_)
                                     (if (gx#stx-eq?
                                          '%#let-values
                                          _hd3141931573_)
                                         (if (gx#stx-pair? _tl3142031575_)
                                             (let ((_e3142131578_
                                                    (gx#stx-e _tl3142031575_)))
                                               (let ((_tl3142331583_
                                                      (##cdr _e3142131578_))
                                                     (_hd3142231581_
                                                      (##car _e3142131578_)))
                                                 (if (gx#stx-pair?
                                                      _hd3142231581_)
                                                     (let ((_e3142431586_
                                                            (gx#stx-e
                                                             _hd3142231581_)))
                                                       (let ((_tl3142631591_
                                                              (##cdr _e3142431586_))
                                                             (_hd3142531589_
                                                              (##car _e3142431586_)))
                                                         (if (gx#stx-pair?
                                                              _hd3142531589_)
                                                             (let ((_e3142731594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3142531589_)))
                       (let ((_tl3142931599_ (##cdr _e3142731594_))
                             (_hd3142831597_ (##car _e3142731594_)))
                         (if (gx#stx-pair? _hd3142831597_)
                             (let ((_e3143031602_ (gx#stx-e _hd3142831597_)))
                               (let ((_tl3143231607_ (##cdr _e3143031602_))
                                     (_hd3143131605_ (##car _e3143031602_)))
                                 (if (gx#stx-null? _tl3143231607_)
                                     (if (gx#stx-pair? _tl3142931599_)
                                         (let ((_e3143331610_
                                                (gx#stx-e _tl3142931599_)))
                                           (let ((_tl3143531615_
                                                  (##cdr _e3143331610_))
                                                 (_hd3143431613_
                                                  (##car _e3143331610_)))
                                             (if (gx#stx-null? _tl3143531615_)
                                                 (if (gx#stx-null?
                                                      _tl3142631591_)
                                                     (if (gx#stx-pair?
                                                          _tl3142331583_)
                                                         (let ((_e3143631618_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3142331583_)))
                   (let ((_tl3143831623_ (##cdr _e3143631618_))
                         (_hd3143731621_ (##car _e3143631618_)))
                     (if (gx#stx-null? _tl3143831623_)
                         (___kont4234742348_
                          _hd3143731621_
                          _hd3143431613_
                          _hd3143131605_)
                         (_g3141331460_))))
                 (_g3141331460_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3141331460_))
                                                 (_g3141331460_))))
                                         (_g3141331460_))
                                     (_g3141331460_))))
                             (_g3141331460_))))
                     (_g3141331460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3141331460_))))
                                             (_g3141331460_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3141931573_)
                                             (if (gx#stx-pair? _tl3142031575_)
                                                 (let ((_e3144431473_
                                                        (gx#stx-e
                                                         _tl3142031575_)))
                                                   (let ((_tl3144631478_
                                                          (##cdr _e3144431473_))
                                                         (_hd3144531476_
                                                          (##car _e3144431473_)))
                                                     (if (gx#stx-pair?
                                                          _hd3144531476_)
                                                         (let ((_e3144731481_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3144531476_)))
                   (let ((_tl3144931486_ (##cdr _e3144731481_))
                         (_hd3144831484_ (##car _e3144731481_)))
                     (if (gx#identifier? _hd3144831484_)
                         (if (gx#stx-eq? '%#ref _hd3144831484_)
                             (if (gx#stx-pair? _tl3144931486_)
                                 (let ((_e3145031489_
                                        (gx#stx-e _tl3144931486_)))
                                   (let ((_tl3145231494_ (##cdr _e3145031489_))
                                         (_hd3145131492_
                                          (##car _e3145031489_)))
                                     (if (gx#stx-null? _tl3145231494_)
                                         (if (gx#stx-pair? _tl3144631478_)
                                             (let ((_e3145331497_
                                                    (gx#stx-e _tl3144631478_)))
                                               (let ((_tl3145531502_
                                                      (##cdr _e3145331497_))
                                                     (_hd3145431500_
                                                      (##car _e3145331497_)))
                                                 (if (gx#stx-null?
                                                      _tl3145531502_)
                                                     (___kont4234942350_
                                                      _hd3145431500_
                                                      _hd3145131492_)
                                                     (_g3141331460_))))
                                             (_g3141331460_))
                                         (_g3141331460_))))
                                 (_g3141331460_))
                             (_g3141331460_))
                         (_g3141331460_))))
                 (_g3141331460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3141331460_))
                                             (_g3141331460_)))
                                     (_g3141331460_))))
                             (_g3141331460_))))))
                 _hd3131431376_
                 _hd3131131368_
                 _hd3130831360_)
                (_g3129031320_ _g3129131323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3129031320_ _g3129131323_))
                                            (_g3129031320_ _g3129131323_))
                                        (_g3129031320_ _g3129131323_))))
                                (_g3129031320_ _g3129131323_))
                            (_g3129031320_ _g3129131323_))))
                    (_g3129031320_ _g3129131323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3129031320_
                                                     _g3129131323_))))
                                            (_g3129031320_ _g3129131323_))))
                                    (_g3129031320_ _g3129131323_))
                                (_g3129031320_ _g3129131323_))
                            (_g3129031320_ _g3129131323_))))
                    (_g3129031320_ _g3129131323_)))))
        (_g3128931654_ _stx31288_))))
  (define gxc#optimize-syntax-case-body
    (lambda (_stx31216_ _expr31217_ _negation31218_ _clauses31219_)
      (letrec ((_normalize31221_
                (lambda (_clauses31248_)
                  (let* ((_clauses3124931258_ _clauses31248_)
                         (_E3125131262_
                          (lambda ()
                            (error '"No clause matching" _clauses3124931258_)))
                         (_K3125231269_
                          (lambda (_rest31265_ _kont31266_ _id31267_)
                            (cons (cons '#f _kont31266_) _rest31265_))))
                    (if (##pair? _clauses3124931258_)
                        (let ((_hd3125331272_ (##car _clauses3124931258_))
                              (_tl3125431274_ (##cdr _clauses3124931258_)))
                          (if (##pair? _hd3125331272_)
                              (let ((_hd3125531277_ (##car _hd3125331272_))
                                    (_tl3125631279_ (##cdr _hd3125331272_)))
                                (let* ((_id31282_ _hd3125531277_)
                                       (_kont31284_ _tl3125631279_)
                                       (_rest31286_ _tl3125431274_))
                                  (_K3125231269_
                                   _rest31286_
                                   _kont31284_
                                   _id31282_)))
                              (_E3125131262_)))
                        (_E3125131262_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_id31224_ (make-symbol (gensym '__stx)))
                  (_id31226_ (gx#core-quote-syntax__0 _id31224_))
                  (_g43117_ (gx#core-bind-runtime!__0 _id31226_))
                  (_g43118_
                   (gxc#optimize-syntax-case-clauses
                    _clauses31219_
                    (car _negation31218_))))
             (begin
               (let ((_g43119_
                      (if (##values? _g43118_) (##vector-length _g43118_) 1)))
                 (if (not (##fx= _g43119_ 2))
                     (error "Context expects 2 values" _g43119_)))
               (let ((_clauses31229_ (##vector-ref _g43118_ 0))
                     (_konts31230_ (##vector-ref _g43118_ 1)))
                 (let* ((_clauses31239_
                         (map (lambda (_g3123131234_ _g3123231236_)
                                (gxc#optimize-syntax-case-closure
                                 _g3123131234_
                                 _g3123231236_
                                 _id31226_))
                              _clauses31229_
                              (foldr1 cons
                                      (cons (car _negation31218_) '())
                                      (map car (cdr _clauses31229_)))))
                        (_clauses31241_ (_normalize31221_ _clauses31239_))
                        (_negation31243_
                         (gxc#optimize-syntax-case-closure
                          _negation31218_
                          '#f
                          _id31226_))
                        (_body31245_
                         (gxc#optimize-match-body
                          _stx31216_
                          _negation31243_
                          _clauses31241_
                          _konts31230_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _id31226_ '())
                                            (cons _expr31217_ '()))
                                      '())
                                (cons _body31245_ '())))
                    _stx31216_))))))
         gx#current-expander-context
         (let ((__obj43091 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj43091) __obj43091))))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses29974_ _negation-id29975_)
      (letrec ((_xform-e29977_
                (lambda (_expr30361_
                         _kont-id30362_
                         _kont-box30363_
                         _negation-id30364_)
                  (let* ((___stx4254742548_ _expr30361_)
                         (_g3037030503_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4254742548_))))
                    (let ((___kont4254942550_
                           (lambda (_L31192_ _L31193_ _L31194_)
                             (let ((_K31211_
                                    (_xform-e29977_
                                     _L31193_
                                     _kont-id30362_
                                     _kont-box30363_
                                     _negation-id30364_)))
                               (cons '%#if
                                     (cons _L31194_
                                           (cons _K31211_
                                                 (cons _L31192_ '())))))))
                          (___kont4255142552_
                           (lambda (_L31108_
                                    _L31109_
                                    _L31110_
                                    _L31111_
                                    _L31112_)
                             (let* ((_id31147_
                                     (make-symbol (gensym '__splice)))
                                    (_id31149_
                                     (gx#core-quote-syntax__0 _id31147_))
                                    (_g43120_
                                     (gx#core-bind-runtime!__0 _id31149_))
                                    (_body31152_
                                     (_xform-e29977_
                                      _L31108_
                                      _kont-id30362_
                                      _kont-box30363_
                                      _negation-id30364_)))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _id31149_ '())
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#call)
                           (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                       (cons _L31110_ '()))
                                 _L31109_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons '%#let-values
                                                       (cons (cons (cons (cons _L31112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#call
                                             (cons '(%#ref ##vector-ref)
                                                   (cons (cons '%#ref
                                                               (cons _id31149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (cons _L31111_ '())
                                       (cons (cons '%#call
                                                   (cons '(%#ref ##vector-ref)
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id31149_ '()))
                       (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))
                     (cons _body31152_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                          (___kont4255342554_
                           (lambda (_L30990_ _L30991_)
                             (let ((_body31005_
                                    (_xform-e29977_
                                     _L30990_
                                     _kont-id30362_
                                     _kont-box30363_
                                     _negation-id30364_)))
                               (cons '%#let-values
                                     (cons _L30991_ (cons _body31005_ '()))))))
                          (___kont4255542556_
                           (lambda (_L30934_ _L30935_ _L30936_)
                             (let ((_lambda-expr30959_
                                    (_xform-loop-e29978_
                                     _L30935_
                                     _kont-id30362_
                                     _kont-box30363_
                                     _negation-id30364_)))
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L30936_ '())
                                                       (cons _lambda-expr30959_
                                                             '()))
                                                 '())
                                           (cons _L30934_ '()))))))
                          (___kont4255742558_
                           (lambda (_L30596_ _L30597_ _L30598_)
                             (let* ((___stx4244942450_ _L30597_)
                                    (_g3062730670_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4244942450_))))
                               (let ((___kont4245142452_
                                      (lambda (_L30786_
                                               _L30787_
                                               _L30788_
                                               _L30789_)
                                        (let ((_kont30830_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3082230825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3082330827_)
                               (cons _g3082230825_ _g3082330827_))
                             '()
                             _L30598_))
                   (cons _L30788_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box30363_
                                             _kont30830_)
                                            (let* ((_kont-args30841_
                                                    (map (lambda (_id30832_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id30832_ '())))
                 (begin
                   '#!void
                   (foldr1 (lambda (_g3083330836_ _g3083430838_)
                             (cons _g3083330836_ _g3083430838_))
                           '()
                           _L30598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_body30843_
                                                    (cons '%#if
                                                          (cons _L30789_
                                                                (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#ref
                                                (cons _kont-id30362_ '()))
                                          _kont-args30841_))
                              (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L30787_ '()))
                                                (cons (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)
                                                            (cons _L30786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3084530848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3084630850_)
                             (cons _g3084530848_ _g3084630850_))
                           '()
                           _L30598_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _body30843_
                                                  (cons '%#let-values
                                                        (cons (map (lambda (_id30853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _arg30854_)
                             (cons (cons _id30853_ '()) (cons _arg30854_ '())))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3085530858_ _g3085630860_)
                                       (cons _g3085530858_ _g3085630860_))
                                     '()
                                     _L30598_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3086230865_ _g3086330867_)
                                       (cons _g3086230865_ _g3086330867_))
                                     '()
                                     _L30596_)))
                      (cons _body30843_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont4245342454_
                                      (lambda ()
                                        (let ((_kont30684_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3067630679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3067730681_)
                               (cons _g3067630679_ _g3067730681_))
                             '()
                             _L30598_))
                   (cons _L30597_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box30363_
                                             _kont30684_)
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kont-id30362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3068530688_ _g3068630690_)
                            (cons _g3068530688_ _g3068630690_))
                          '()
                          _L30596_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((___match4254442545_
                                        (lambda (_e3063330698_
                                                 _hd3063430701_
                                                 _tl3063530703_
                                                 _e3063630706_
                                                 _hd3063730709_
                                                 _tl3063830711_
                                                 _e3063930714_
                                                 _hd3064030717_
                                                 _tl3064130719_
                                                 _e3064230722_
                                                 _hd3064330725_
                                                 _tl3064430727_
                                                 _e3064530730_
                                                 _hd3064630733_
                                                 _tl3064730735_
                                                 _e3064830738_
                                                 _hd3064930741_
                                                 _tl3065030743_
                                                 _e3065130746_
                                                 _hd3065230749_
                                                 _tl3065330751_
                                                 _e3065430754_
                                                 _hd3065530757_
                                                 _tl3065630759_
                                                 _e3065730762_
                                                 _hd3065830765_
                                                 _tl3065930767_
                                                 _e3066030770_
                                                 _hd3066130773_
                                                 _tl3066230775_
                                                 _e3066330778_
                                                 _hd3066430781_
                                                 _tl3066530783_)
                                          (let ((_L30786_ _hd3066430781_)
                                                (_L30787_ _hd3065530757_)
                                                (_L30788_ _hd3064030717_)
                                                (_L30789_ _hd3063730709_))
                                            (if (gx#free-identifier=?
                                                 _L30787_
                                                 _negation-id30364_)
                                                (___kont4245142452_
                                                 _L30786_
                                                 _L30787_
                                                 _L30788_
                                                 _L30789_)
                                                (___kont4245342454_))))))
                                   (if (gx#stx-pair? ___stx4244942450_)
                                       (let ((_e3063330698_
                                              (gx#stx-e ___stx4244942450_)))
                                         (let ((_tl3063530703_
                                                (##cdr _e3063330698_))
                                               (_hd3063430701_
                                                (##car _e3063330698_)))
                                           (if (gx#identifier? _hd3063430701_)
                                               (if (gx#stx-eq?
                                                    '%#if
                                                    _hd3063430701_)
                                                   (if (gx#stx-pair?
                                                        _tl3063530703_)
                                                       (let ((_e3063630706_
                                                              (gx#stx-e
                                                               _tl3063530703_)))
                                                         (let ((_tl3063830711_
                                                                (##cdr _e3063630706_))
                                                               (_hd3063730709_
                                                                (##car _e3063630706_)))
                                                           (if (gx#stx-pair?
                                                                _tl3063830711_)
                                                               (let ((_e3063930714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3063830711_)))
                         (let ((_tl3064130719_ (##cdr _e3063930714_))
                               (_hd3064030717_ (##car _e3063930714_)))
                           (if (gx#stx-pair? _tl3064130719_)
                               (let ((_e3064230722_ (gx#stx-e _tl3064130719_)))
                                 (let ((_tl3064430727_ (##cdr _e3064230722_))
                                       (_hd3064330725_ (##car _e3064230722_)))
                                   (if (gx#stx-pair? _hd3064330725_)
                                       (let ((_e3064530730_
                                              (gx#stx-e _hd3064330725_)))
                                         (let ((_tl3064730735_
                                                (##cdr _e3064530730_))
                                               (_hd3064630733_
                                                (##car _e3064530730_)))
                                           (if (gx#identifier? _hd3064630733_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd3064630733_)
                                                   (if (gx#stx-pair?
                                                        _tl3064730735_)
                                                       (let ((_e3064830738_
                                                              (gx#stx-e
                                                               _tl3064730735_)))
                                                         (let ((_tl3065030743_
                                                                (##cdr _e3064830738_))
                                                               (_hd3064930741_
                                                                (##car _e3064830738_)))
                                                           (if (gx#stx-pair?
                                                                _hd3064930741_)
                                                               (let ((_e3065130746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3064930741_)))
                         (let ((_tl3065330751_ (##cdr _e3065130746_))
                               (_hd3065230749_ (##car _e3065130746_)))
                           (if (gx#identifier? _hd3065230749_)
                               (if (gx#stx-eq? '%#ref _hd3065230749_)
                                   (if (gx#stx-pair? _tl3065330751_)
                                       (let ((_e3065430754_
                                              (gx#stx-e _tl3065330751_)))
                                         (let ((_tl3065630759_
                                                (##cdr _e3065430754_))
                                               (_hd3065530757_
                                                (##car _e3065430754_)))
                                           (if (gx#stx-null? _tl3065630759_)
                                               (if (gx#stx-pair?
                                                    _tl3065030743_)
                                                   (let ((_e3065730762_
                                                          (gx#stx-e
                                                           _tl3065030743_)))
                                                     (let ((_tl3065930767_
                                                            (##cdr _e3065730762_))
                                                           (_hd3065830765_
                                                            (##car _e3065730762_)))
                                                       (if (gx#stx-pair?
                                                            _hd3065830765_)
                                                           (let ((_e3066030770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3065830765_)))
                     (let ((_tl3066230775_ (##cdr _e3066030770_))
                           (_hd3066130773_ (##car _e3066030770_)))
                       (if (gx#identifier? _hd3066130773_)
                           (if (gx#stx-eq? '%#ref _hd3066130773_)
                               (if (gx#stx-pair? _tl3066230775_)
                                   (let ((_e3066330778_
                                          (gx#stx-e _tl3066230775_)))
                                     (let ((_tl3066530783_
                                            (##cdr _e3066330778_))
                                           (_hd3066430781_
                                            (##car _e3066330778_)))
                                       (if (gx#stx-null? _tl3066530783_)
                                           (if (gx#stx-null? _tl3065930767_)
                                               (if (gx#stx-null?
                                                    _tl3064430727_)
                                                   (___match4254442545_
                                                    _e3063330698_
                                                    _hd3063430701_
                                                    _tl3063530703_
                                                    _e3063630706_
                                                    _hd3063730709_
                                                    _tl3063830711_
                                                    _e3063930714_
                                                    _hd3064030717_
                                                    _tl3064130719_
                                                    _e3064230722_
                                                    _hd3064330725_
                                                    _tl3064430727_
                                                    _e3064530730_
                                                    _hd3064630733_
                                                    _tl3064730735_
                                                    _e3064830738_
                                                    _hd3064930741_
                                                    _tl3065030743_
                                                    _e3065130746_
                                                    _hd3065230749_
                                                    _tl3065330751_
                                                    _e3065430754_
                                                    _hd3065530757_
                                                    _tl3065630759_
                                                    _e3065730762_
                                                    _hd3065830765_
                                                    _tl3065930767_
                                                    _e3066030770_
                                                    _hd3066130773_
                                                    _tl3066230775_
                                                    _e3066330778_
                                                    _hd3066430781_
                                                    _tl3066530783_)
                                                   (___kont4245342454_))
                                               (___kont4245342454_))
                                           (___kont4245342454_))))
                                   (___kont4245342454_))
                               (___kont4245342454_))
                           (___kont4245342454_))))
                   (___kont4245342454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4245342454_))
                                               (___kont4245342454_))))
                                       (___kont4245342454_))
                                   (___kont4245342454_))
                               (___kont4245342454_))))
                       (___kont4245342454_))))
               (___kont4245342454_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4245342454_))
                                               (___kont4245342454_))))
                                       (___kont4245342454_))))
                               (___kont4245342454_))))
                       (___kont4245342454_))))
               (___kont4245342454_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4245342454_))
                                               (___kont4245342454_))))
                                       (___kont4245342454_))))))))
                      (let* ((___match4280442805_
                              (lambda (_e3046630508_
                                       _hd3046730511_
                                       _tl3046830513_
                                       _e3046930516_
                                       _hd3047030519_
                                       _tl3047130521_
                                       _e3047230524_
                                       _hd3047330527_
                                       _tl3047430529_
                                       _e3047530532_
                                       _hd3047630535_
                                       _tl3047730537_
                                       ___splice4255942560_
                                       _target3047830540_
                                       _tl3048030542_)
                                (letrec ((_loop3048130545_
                                          (lambda (_hd3047930548_
                                                   _id3048530550_)
                                            (if (gx#stx-pair? _hd3047930548_)
                                                (let ((_e3048230553_
                                                       (gx#stx-e
                                                        _hd3047930548_)))
                                                  (let ((_lp-tl3048430558_
                                                         (##cdr _e3048230553_))
                                                        (_lp-hd3048330556_
                                                         (##car _e3048230553_)))
                                                    (_loop3048130545_
                                                     _lp-tl3048430558_
                                                     (cons _lp-hd3048330556_
                                                           _id3048530550_))))
                                                (let ((_id3048630561_
                                                       (reverse _id3048530550_)))
                                                  (if (gx#stx-pair?
                                                       _tl3047730537_)
                                                      (let ((_e3048730564_
                                                             (gx#stx-e
                                                              _tl3047730537_)))
                                                        (let ((_tl3048930569_
                                                               (##cdr _e3048730564_))
                                                              (_hd3048830567_
                                                               (##car _e3048730564_)))
                                                          (if (gx#stx-null?
                                                               _tl3048930569_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3047130521_)
                          (let ((___splice4256142562_
                                 (gx#syntax-split-splice _tl3047130521_ '0)))
                            (let ((_tl3049230574_
                                   (##vector-ref ___splice4256142562_ '1))
                                  (_target3049030572_
                                   (##vector-ref ___splice4256142562_ '0)))
                              (if (gx#stx-null? _tl3049230574_)
                                  (letrec ((_loop3049330577_
                                            (lambda (_hd3049130580_
                                                     _arg3049730582_)
                                              (if (gx#stx-pair? _hd3049130580_)
                                                  (let ((_e3049430585_
                                                         (gx#stx-e
                                                          _hd3049130580_)))
                                                    (let ((_lp-tl3049630590_
                                                           (##cdr _e3049430585_))
                                                          (_lp-hd3049530588_
                                                           (##car _e3049430585_)))
                                                      (_loop3049330577_
                                                       _lp-tl3049630590_
                                                       (cons _lp-hd3049530588_
                                                             _arg3049730582_))))
                                                  (let ((_arg3049830593_
                                                         (reverse _arg3049730582_)))
                                                    (___kont4255742558_
                                                     _arg3049830593_
                                                     _hd3048830567_
                                                     _id3048630561_))))))
                                    (_loop3049330577_ _target3049030572_ '()))
                                  (_g3037030503_))))
                          (_g3037030503_))
                      (_g3037030503_))))
              (_g3037030503_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop3048130545_ _target3047830540_ '()))))
                             (___match4268642687_
                              (lambda (_e3039231012_
                                       _hd3039331015_
                                       _tl3039431017_
                                       _e3039531020_
                                       _hd3039631023_
                                       _tl3039731025_
                                       _e3039831028_
                                       _hd3039931031_
                                       _tl3040031033_
                                       _e3040131036_
                                       _hd3040231039_
                                       _tl3040331041_
                                       _e3040431044_
                                       _hd3040531047_
                                       _tl3040631049_
                                       _e3040731052_
                                       _hd3040831055_
                                       _tl3040931057_
                                       _e3041031060_
                                       _hd3041131063_
                                       _tl3041231065_
                                       _e3041331068_
                                       _hd3041431071_
                                       _tl3041531073_
                                       _e3041631076_
                                       _hd3041731079_
                                       _tl3041831081_
                                       _e3041931084_
                                       _hd3042031087_
                                       _tl3042131089_
                                       _e3042231092_
                                       _hd3042331095_
                                       _tl3042431097_
                                       _e3042531100_
                                       _hd3042631103_
                                       _tl3042731105_)
                                (let ((_L31108_ _hd3042631103_)
                                      (_L31109_ _tl3041831081_)
                                      (_L31110_ _hd3042331095_)
                                      (_L31111_ _hd3040831055_)
                                      (_L31112_ _hd3040531047_))
                                  (if (gxc#runtime-identifier=?
                                       _L31110_
                                       'gx#syntax-split-splice)
                                      (___kont4255142552_
                                       _L31108_
                                       _L31109_
                                       _L31110_
                                       _L31111_
                                       _L31112_)
                                      (___kont4255342554_
                                       _hd3042631103_
                                       _hd3039631023_))))))
                        (if (gx#stx-pair? ___stx4254742548_)
                            (let ((_e3037531160_ (gx#stx-e ___stx4254742548_)))
                              (let ((_tl3037731165_ (##cdr _e3037531160_))
                                    (_hd3037631163_ (##car _e3037531160_)))
                                (if (gx#identifier? _hd3037631163_)
                                    (if (gx#stx-eq? '%#if _hd3037631163_)
                                        (if (gx#stx-pair? _tl3037731165_)
                                            (let ((_e3037831168_
                                                   (gx#stx-e _tl3037731165_)))
                                              (let ((_tl3038031173_
                                                     (##cdr _e3037831168_))
                                                    (_hd3037931171_
                                                     (##car _e3037831168_)))
                                                (if (gx#stx-pair?
                                                     _tl3038031173_)
                                                    (let ((_e3038131176_
                                                           (gx#stx-e
                                                            _tl3038031173_)))
                                                      (let ((_tl3038331181_
                                                             (##cdr _e3038131176_))
                                                            (_hd3038231179_
                                                             (##car _e3038131176_)))
                                                        (if (gx#stx-pair?
                                                             _tl3038331181_)
                                                            (let ((_e3038431184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3038331181_)))
                      (let ((_tl3038631189_ (##cdr _e3038431184_))
                            (_hd3038531187_ (##car _e3038431184_)))
                        (if (gx#stx-null? _tl3038631189_)
                            (___kont4254942550_
                             _hd3038531187_
                             _hd3038231179_
                             _hd3037931171_)
                            (_g3037030503_))))
                    (_g3037030503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3037030503_))))
                                            (_g3037030503_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3037631163_)
                                            (if (gx#stx-pair? _tl3037731165_)
                                                (let ((_e3039531020_
                                                       (gx#stx-e
                                                        _tl3037731165_)))
                                                  (let ((_tl3039731025_
                                                         (##cdr _e3039531020_))
                                                        (_hd3039631023_
                                                         (##car _e3039531020_)))
                                                    (if (gx#stx-pair?
                                                         _hd3039631023_)
                                                        (let ((_e3039831028_
                                                               (gx#stx-e
                                                                _hd3039631023_)))
                                                          (let ((_tl3040031033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3039831028_))
                        (_hd3039931031_ (##car _e3039831028_)))
                    (if (gx#stx-pair? _hd3039931031_)
                        (let ((_e3040131036_ (gx#stx-e _hd3039931031_)))
                          (let ((_tl3040331041_ (##cdr _e3040131036_))
                                (_hd3040231039_ (##car _e3040131036_)))
                            (if (gx#stx-pair? _hd3040231039_)
                                (let ((_e3040431044_
                                       (gx#stx-e _hd3040231039_)))
                                  (let ((_tl3040631049_ (##cdr _e3040431044_))
                                        (_hd3040531047_ (##car _e3040431044_)))
                                    (if (gx#stx-pair? _tl3040631049_)
                                        (let ((_e3040731052_
                                               (gx#stx-e _tl3040631049_)))
                                          (let ((_tl3040931057_
                                                 (##cdr _e3040731052_))
                                                (_hd3040831055_
                                                 (##car _e3040731052_)))
                                            (if (gx#stx-null? _tl3040931057_)
                                                (if (gx#stx-pair?
                                                     _tl3040331041_)
                                                    (let ((_e3041031060_
                                                           (gx#stx-e
                                                            _tl3040331041_)))
                                                      (let ((_tl3041231065_
                                                             (##cdr _e3041031060_))
                                                            (_hd3041131063_
                                                             (##car _e3041031060_)))
                                                        (if (gx#stx-pair?
                                                             _hd3041131063_)
                                                            (let ((_e3041331068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3041131063_)))
                      (let ((_tl3041531073_ (##cdr _e3041331068_))
                            (_hd3041431071_ (##car _e3041331068_)))
                        (if (gx#identifier? _hd3041431071_)
                            (if (gx#stx-eq? '%#call _hd3041431071_)
                                (if (gx#stx-pair? _tl3041531073_)
                                    (let ((_e3041631076_
                                           (gx#stx-e _tl3041531073_)))
                                      (let ((_tl3041831081_
                                             (##cdr _e3041631076_))
                                            (_hd3041731079_
                                             (##car _e3041631076_)))
                                        (if (gx#stx-pair? _hd3041731079_)
                                            (let ((_e3041931084_
                                                   (gx#stx-e _hd3041731079_)))
                                              (let ((_tl3042131089_
                                                     (##cdr _e3041931084_))
                                                    (_hd3042031087_
                                                     (##car _e3041931084_)))
                                                (if (gx#identifier?
                                                     _hd3042031087_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3042031087_)
                                                        (if (gx#stx-pair?
                                                             _tl3042131089_)
                                                            (let ((_e3042231092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3042131089_)))
                      (let ((_tl3042431097_ (##cdr _e3042231092_))
                            (_hd3042331095_ (##car _e3042231092_)))
                        (if (gx#stx-null? _tl3042431097_)
                            (if (gx#stx-null? _tl3041231065_)
                                (if (gx#stx-null? _tl3040031033_)
                                    (if (gx#stx-pair? _tl3039731025_)
                                        (let ((_e3042531100_
                                               (gx#stx-e _tl3039731025_)))
                                          (let ((_tl3042731105_
                                                 (##cdr _e3042531100_))
                                                (_hd3042631103_
                                                 (##car _e3042531100_)))
                                            (if (gx#stx-null? _tl3042731105_)
                                                (___match4268642687_
                                                 _e3037531160_
                                                 _hd3037631163_
                                                 _tl3037731165_
                                                 _e3039531020_
                                                 _hd3039631023_
                                                 _tl3039731025_
                                                 _e3039831028_
                                                 _hd3039931031_
                                                 _tl3040031033_
                                                 _e3040131036_
                                                 _hd3040231039_
                                                 _tl3040331041_
                                                 _e3040431044_
                                                 _hd3040531047_
                                                 _tl3040631049_
                                                 _e3040731052_
                                                 _hd3040831055_
                                                 _tl3040931057_
                                                 _e3041031060_
                                                 _hd3041131063_
                                                 _tl3041231065_
                                                 _e3041331068_
                                                 _hd3041431071_
                                                 _tl3041531073_
                                                 _e3041631076_
                                                 _hd3041731079_
                                                 _tl3041831081_
                                                 _e3041931084_
                                                 _hd3042031087_
                                                 _tl3042131089_
                                                 _e3042231092_
                                                 _hd3042331095_
                                                 _tl3042431097_
                                                 _e3042531100_
                                                 _hd3042631103_
                                                 _tl3042731105_)
                                                (_g3037030503_))))
                                        (_g3037030503_))
                                    (if (gx#stx-pair? _tl3039731025_)
                                        (let ((_e3043630982_
                                               (gx#stx-e _tl3039731025_)))
                                          (let ((_tl3043830987_
                                                 (##cdr _e3043630982_))
                                                (_hd3043730985_
                                                 (##car _e3043630982_)))
                                            (if (gx#stx-null? _tl3043830987_)
                                                (___kont4255342554_
                                                 _hd3043730985_
                                                 _hd3039631023_)
                                                (_g3037030503_))))
                                        (_g3037030503_)))
                                (if (gx#stx-pair? _tl3039731025_)
                                    (let ((_e3043630982_
                                           (gx#stx-e _tl3039731025_)))
                                      (let ((_tl3043830987_
                                             (##cdr _e3043630982_))
                                            (_hd3043730985_
                                             (##car _e3043630982_)))
                                        (if (gx#stx-null? _tl3043830987_)
                                            (___kont4255342554_
                                             _hd3043730985_
                                             _hd3039631023_)
                                            (_g3037030503_))))
                                    (_g3037030503_)))
                            (if (gx#stx-pair? _tl3039731025_)
                                (let ((_e3043630982_
                                       (gx#stx-e _tl3039731025_)))
                                  (let ((_tl3043830987_ (##cdr _e3043630982_))
                                        (_hd3043730985_ (##car _e3043630982_)))
                                    (if (gx#stx-null? _tl3043830987_)
                                        (___kont4255342554_
                                         _hd3043730985_
                                         _hd3039631023_)
                                        (_g3037030503_))))
                                (_g3037030503_)))))
                    (if (gx#stx-pair? _tl3039731025_)
                        (let ((_e3043630982_ (gx#stx-e _tl3039731025_)))
                          (let ((_tl3043830987_ (##cdr _e3043630982_))
                                (_hd3043730985_ (##car _e3043630982_)))
                            (if (gx#stx-null? _tl3043830987_)
                                (___kont4255342554_
                                 _hd3043730985_
                                 _hd3039631023_)
                                (_g3037030503_))))
                        (_g3037030503_)))
                (if (gx#stx-pair? _tl3039731025_)
                    (let ((_e3043630982_ (gx#stx-e _tl3039731025_)))
                      (let ((_tl3043830987_ (##cdr _e3043630982_))
                            (_hd3043730985_ (##car _e3043630982_)))
                        (if (gx#stx-null? _tl3043830987_)
                            (___kont4255342554_ _hd3043730985_ _hd3039631023_)
                            (_g3037030503_))))
                    (_g3037030503_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3039731025_)
                                                        (let ((_e3043630982_
                                                               (gx#stx-e
                                                                _tl3039731025_)))
                                                          (let ((_tl3043830987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3043630982_))
                        (_hd3043730985_ (##car _e3043630982_)))
                    (if (gx#stx-null? _tl3043830987_)
                        (___kont4255342554_ _hd3043730985_ _hd3039631023_)
                        (_g3037030503_))))
                (_g3037030503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3039731025_)
                                                (let ((_e3043630982_
                                                       (gx#stx-e
                                                        _tl3039731025_)))
                                                  (let ((_tl3043830987_
                                                         (##cdr _e3043630982_))
                                                        (_hd3043730985_
                                                         (##car _e3043630982_)))
                                                    (if (gx#stx-null?
                                                         _tl3043830987_)
                                                        (___kont4255342554_
                                                         _hd3043730985_
                                                         _hd3039631023_)
                                                        (_g3037030503_))))
                                                (_g3037030503_)))))
                                    (if (gx#stx-pair? _tl3039731025_)
                                        (let ((_e3043630982_
                                               (gx#stx-e _tl3039731025_)))
                                          (let ((_tl3043830987_
                                                 (##cdr _e3043630982_))
                                                (_hd3043730985_
                                                 (##car _e3043630982_)))
                                            (if (gx#stx-null? _tl3043830987_)
                                                (___kont4255342554_
                                                 _hd3043730985_
                                                 _hd3039631023_)
                                                (_g3037030503_))))
                                        (_g3037030503_)))
                                (if (gx#stx-pair? _tl3039731025_)
                                    (let ((_e3043630982_
                                           (gx#stx-e _tl3039731025_)))
                                      (let ((_tl3043830987_
                                             (##cdr _e3043630982_))
                                            (_hd3043730985_
                                             (##car _e3043630982_)))
                                        (if (gx#stx-null? _tl3043830987_)
                                            (___kont4255342554_
                                             _hd3043730985_
                                             _hd3039631023_)
                                            (_g3037030503_))))
                                    (_g3037030503_)))
                            (if (gx#stx-pair? _tl3039731025_)
                                (let ((_e3043630982_
                                       (gx#stx-e _tl3039731025_)))
                                  (let ((_tl3043830987_ (##cdr _e3043630982_))
                                        (_hd3043730985_ (##car _e3043630982_)))
                                    (if (gx#stx-null? _tl3043830987_)
                                        (___kont4255342554_
                                         _hd3043730985_
                                         _hd3039631023_)
                                        (_g3037030503_))))
                                (_g3037030503_)))))
                    (if (gx#stx-pair? _tl3039731025_)
                        (let ((_e3043630982_ (gx#stx-e _tl3039731025_)))
                          (let ((_tl3043830987_ (##cdr _e3043630982_))
                                (_hd3043730985_ (##car _e3043630982_)))
                            (if (gx#stx-null? _tl3043830987_)
                                (___kont4255342554_
                                 _hd3043730985_
                                 _hd3039631023_)
                                (_g3037030503_))))
                        (_g3037030503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3039731025_)
                                                        (let ((_e3043630982_
                                                               (gx#stx-e
                                                                _tl3039731025_)))
                                                          (let ((_tl3043830987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3043630982_))
                        (_hd3043730985_ (##car _e3043630982_)))
                    (if (gx#stx-null? _tl3043830987_)
                        (___kont4255342554_ _hd3043730985_ _hd3039631023_)
                        (_g3037030503_))))
                (_g3037030503_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl3039731025_)
                                                    (let ((_e3043630982_
                                                           (gx#stx-e
                                                            _tl3039731025_)))
                                                      (let ((_tl3043830987_
                                                             (##cdr _e3043630982_))
                                                            (_hd3043730985_
                                                             (##car _e3043630982_)))
                                                        (if (gx#stx-null?
                                                             _tl3043830987_)
                                                            (___kont4255342554_
                                                             _hd3043730985_
                                                             _hd3039631023_)
                                                            (_g3037030503_))))
                                                    (_g3037030503_)))))
                                        (if (gx#stx-pair? _tl3039731025_)
                                            (let ((_e3043630982_
                                                   (gx#stx-e _tl3039731025_)))
                                              (let ((_tl3043830987_
                                                     (##cdr _e3043630982_))
                                                    (_hd3043730985_
                                                     (##car _e3043630982_)))
                                                (if (gx#stx-null?
                                                     _tl3043830987_)
                                                    (___kont4255342554_
                                                     _hd3043730985_
                                                     _hd3039631023_)
                                                    (_g3037030503_))))
                                            (_g3037030503_)))))
                                (if (gx#stx-pair? _tl3039731025_)
                                    (let ((_e3043630982_
                                           (gx#stx-e _tl3039731025_)))
                                      (let ((_tl3043830987_
                                             (##cdr _e3043630982_))
                                            (_hd3043730985_
                                             (##car _e3043630982_)))
                                        (if (gx#stx-null? _tl3043830987_)
                                            (___kont4255342554_
                                             _hd3043730985_
                                             _hd3039631023_)
                                            (_g3037030503_))))
                                    (_g3037030503_)))))
                        (if (gx#stx-pair? _tl3039731025_)
                            (let ((_e3043630982_ (gx#stx-e _tl3039731025_)))
                              (let ((_tl3043830987_ (##cdr _e3043630982_))
                                    (_hd3043730985_ (##car _e3043630982_)))
                                (if (gx#stx-null? _tl3043830987_)
                                    (___kont4255342554_
                                     _hd3043730985_
                                     _hd3039631023_)
                                    (_g3037030503_))))
                            (_g3037030503_)))))
                (if (gx#stx-pair? _tl3039731025_)
                    (let ((_e3043630982_ (gx#stx-e _tl3039731025_)))
                      (let ((_tl3043830987_ (##cdr _e3043630982_))
                            (_hd3043730985_ (##car _e3043630982_)))
                        (if (gx#stx-null? _tl3043830987_)
                            (___kont4255342554_ _hd3043730985_ _hd3039631023_)
                            (_g3037030503_))))
                    (_g3037030503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3037030503_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3037631163_)
                                                (if (gx#stx-pair?
                                                     _tl3037731165_)
                                                    (let ((_e3044530886_
                                                           (gx#stx-e
                                                            _tl3037731165_)))
                                                      (let ((_tl3044730891_
                                                             (##cdr _e3044530886_))
                                                            (_hd3044630889_
                                                             (##car _e3044530886_)))
                                                        (if (gx#stx-pair?
                                                             _hd3044630889_)
                                                            (let ((_e3044830894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3044630889_)))
                      (let ((_tl3045030899_ (##cdr _e3044830894_))
                            (_hd3044930897_ (##car _e3044830894_)))
                        (if (gx#stx-pair? _hd3044930897_)
                            (let ((_e3045130902_ (gx#stx-e _hd3044930897_)))
                              (let ((_tl3045330907_ (##cdr _e3045130902_))
                                    (_hd3045230905_ (##car _e3045130902_)))
                                (if (gx#stx-pair? _hd3045230905_)
                                    (let ((_e3045430910_
                                           (gx#stx-e _hd3045230905_)))
                                      (let ((_tl3045630915_
                                             (##cdr _e3045430910_))
                                            (_hd3045530913_
                                             (##car _e3045430910_)))
                                        (if (gx#stx-null? _tl3045630915_)
                                            (if (gx#stx-pair? _tl3045330907_)
                                                (let ((_e3045730918_
                                                       (gx#stx-e
                                                        _tl3045330907_)))
                                                  (let ((_tl3045930923_
                                                         (##cdr _e3045730918_))
                                                        (_hd3045830921_
                                                         (##car _e3045730918_)))
                                                    (if (gx#stx-null?
                                                         _tl3045930923_)
                                                        (if (gx#stx-null?
                                                             _tl3045030899_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3044730891_)
                        (let ((_e3046030926_ (gx#stx-e _tl3044730891_)))
                          (let ((_tl3046230931_ (##cdr _e3046030926_))
                                (_hd3046130929_ (##car _e3046030926_)))
                            (if (gx#stx-null? _tl3046230931_)
                                (___kont4255542556_
                                 _hd3046130929_
                                 _hd3045830921_
                                 _hd3045530913_)
                                (_g3037030503_))))
                        (_g3037030503_))
                    (_g3037030503_))
                (_g3037030503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3037030503_))
                                            (_g3037030503_))))
                                    (_g3037030503_))))
                            (_g3037030503_))))
                    (_g3037030503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3037030503_))
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd3037631163_)
                                                    (if (gx#stx-pair?
                                                         _tl3037731165_)
                                                        (let ((_e3046930516_
                                                               (gx#stx-e
                                                                _tl3037731165_)))
                                                          (let ((_tl3047130521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3046930516_))
                        (_hd3047030519_ (##car _e3046930516_)))
                    (if (gx#stx-pair? _hd3047030519_)
                        (let ((_e3047230524_ (gx#stx-e _hd3047030519_)))
                          (let ((_tl3047430529_ (##cdr _e3047230524_))
                                (_hd3047330527_ (##car _e3047230524_)))
                            (if (gx#identifier? _hd3047330527_)
                                (if (gx#stx-eq? '%#lambda _hd3047330527_)
                                    (if (gx#stx-pair? _tl3047430529_)
                                        (let ((_e3047530532_
                                               (gx#stx-e _tl3047430529_)))
                                          (let ((_tl3047730537_
                                                 (##cdr _e3047530532_))
                                                (_hd3047630535_
                                                 (##car _e3047530532_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3047630535_)
                                                (let ((___splice4255942560_
                                                       (gx#syntax-split-splice
                                                        _hd3047630535_
                                                        '0)))
                                                  (let ((_tl3048030542_
                                                         (##vector-ref
                                                          ___splice4255942560_
                                                          '1))
                                                        (_target3047830540_
                                                         (##vector-ref
                                                          ___splice4255942560_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3048030542_)
                                                        (___match4280442805_
                                                         _e3037531160_
                                                         _hd3037631163_
                                                         _tl3037731165_
                                                         _e3046930516_
                                                         _hd3047030519_
                                                         _tl3047130521_
                                                         _e3047230524_
                                                         _hd3047330527_
                                                         _tl3047430529_
                                                         _e3047530532_
                                                         _hd3047630535_
                                                         _tl3047730537_
                                                         ___splice4255942560_
                                                         _target3047830540_
                                                         _tl3048030542_)
                                                        (_g3037030503_))))
                                                (_g3037030503_))))
                                        (_g3037030503_))
                                    (_g3037030503_))
                                (_g3037030503_))))
                        (_g3037030503_))))
                (_g3037030503_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3037030503_)))))
                                    (_g3037030503_))))
                            (_g3037030503_)))))))
               (_xform-loop-e29978_
                (lambda (_expr30187_
                         _kont-id30188_
                         _kont-box30189_
                         _negation-id30190_)
                  (let* ((_g3019230232_
                          (lambda (_g3019330229_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3019330229_)))
                         (_g3019130358_
                          (lambda (_g3019330235_)
                            (if (gx#stx-pair? _g3019330235_)
                                (let ((_e3019830237_ (gx#stx-e _g3019330235_)))
                                  (let ((_hd3019930240_ (##car _e3019830237_))
                                        (_tl3020030242_ (##cdr _e3019830237_)))
                                    (if (gx#identifier? _hd3019930240_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3019930240_)
                                            (if (gx#stx-pair? _tl3020030242_)
                                                (let ((_e3020130245_
                                                       (gx#stx-e
                                                        _tl3020030242_)))
                                                  (let ((_hd3020230248_
                                                         (##car _e3020130245_))
                                                        (_tl3020330250_
                                                         (##cdr _e3020130245_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3020230248_)
                                                        (let ((_g43121_
                                                               (gx#syntax-split-splice
                                                                _hd3020230248_
                                                                '0)))
                                                          (begin
                                                            (let ((_g43122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g43121_)
                               (##vector-length _g43121_)
                               1)))
                      (if (not (##fx= _g43122_ 2))
                          (error "Context expects 2 values" _g43122_)))
                    (let ((_target3020430253_ (##vector-ref _g43121_ 0))
                          (_tl3020630255_ (##vector-ref _g43121_ 1)))
                      (if (gx#stx-null? _tl3020630255_)
                          (letrec ((_loop3020730258_
                                    (lambda (_hd3020530261_ _id3021130263_)
                                      (if (gx#stx-pair? _hd3020530261_)
                                          (let ((_e3020830266_
                                                 (gx#stx-e _hd3020530261_)))
                                            (let ((_lp-hd3020930269_
                                                   (##car _e3020830266_))
                                                  (_lp-tl3021030271_
                                                   (##cdr _e3020830266_)))
                                              (_loop3020730258_
                                               _lp-tl3021030271_
                                               (cons _lp-hd3020930269_
                                                     _id3021130263_))))
                                          (let ((_id3021230274_
                                                 (reverse _id3021130263_)))
                                            (if (gx#stx-pair? _tl3020330250_)
                                                (let ((_e3021330277_
                                                       (gx#stx-e
                                                        _tl3020330250_)))
                                                  (let ((_hd3021430280_
                                                         (##car _e3021330277_))
                                                        (_tl3021530282_
                                                         (##cdr _e3021330277_)))
                                                    (if (gx#stx-pair?
                                                         _hd3021430280_)
                                                        (let ((_e3021630285_
                                                               (gx#stx-e
                                                                _hd3021430280_)))
                                                          (let ((_hd3021730288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3021630285_))
                        (_tl3021830290_ (##cdr _e3021630285_)))
                    (if (gx#identifier? _hd3021730288_)
                        (if (gx#stx-eq? '%#if _hd3021730288_)
                            (if (gx#stx-pair? _tl3021830290_)
                                (let ((_e3021930293_
                                       (gx#stx-e _tl3021830290_)))
                                  (let ((_hd3022030296_ (##car _e3021930293_))
                                        (_tl3022130298_ (##cdr _e3021930293_)))
                                    (if (gx#stx-pair? _tl3022130298_)
                                        (let ((_e3022230301_
                                               (gx#stx-e _tl3022130298_)))
                                          (let ((_hd3022330304_
                                                 (##car _e3022230301_))
                                                (_tl3022430306_
                                                 (##cdr _e3022230301_)))
                                            (if (gx#stx-pair? _tl3022430306_)
                                                (let ((_e3022530309_
                                                       (gx#stx-e
                                                        _tl3022430306_)))
                                                  (let ((_hd3022630312_
                                                         (##car _e3022530309_))
                                                        (_tl3022730314_
                                                         (##cdr _e3022530309_)))
                                                    (if (gx#stx-null?
                                                         _tl3022730314_)
                                                        (if (gx#stx-null?
                                                             _tl3021530282_)
                                                            ((lambda (_L30317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L30318_
                              _L30319_
                              _L30320_)
                       (let ((_E30349_
                              (_xform-e29977_
                               _L30317_
                               _kont-id30188_
                               _kont-box30189_
                               _negation-id30190_)))
                         (cons '%#lambda
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3035030353_
                                                        _g3035130355_)
                                                 (cons _g3035030353_
                                                       _g3035130355_))
                                               '()
                                               _L30320_))
                                     (cons (cons '%#if
                                                 (cons _L30319_
                                                       (cons _L30318_
                                                             (cons _E30349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _hd3022630312_
                     _hd3022330304_
                     _hd3022030296_
                     _id3021230274_)
                    (_g3019230232_ _g3019330235_))
                (_g3019230232_ _g3019330235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3019230232_
                                                 _g3019330235_))))
                                        (_g3019230232_ _g3019330235_))))
                                (_g3019230232_ _g3019330235_))
                            (_g3019230232_ _g3019330235_))
                        (_g3019230232_ _g3019330235_))))
                (_g3019230232_ _g3019330235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3019230232_
                                                 _g3019330235_)))))))
                            (_loop3020730258_ _target3020430253_ '()))
                          (_g3019230232_ _g3019330235_)))))
                (_g3019230232_ _g3019330235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3019230232_ _g3019330235_))
                                            (_g3019230232_ _g3019330235_))
                                        (_g3019230232_ _g3019330235_))))
                                (_g3019230232_ _g3019330235_)))))
                    (_g3019130358_ _expr30187_))))
               (_clause-e29979_
                (lambda (_clause-lambda30057_ _kont-id30058_ _rest30059_)
                  (letrec* ((_kont-box30061_ (box '#f)))
                    (let* ((_negation-id30101_
                            (let* ((_rest3006230072_ _rest30059_)
                                   (_else3006430080_
                                    (lambda () _negation-id29975_))
                                   (_K3006630086_
                                    (lambda (_clause30083_ _clause-id30084_)
                                      _clause-id30084_)))
                              (if (##pair? _rest3006230072_)
                                  (let ((_hd3006730089_
                                         (##car _rest3006230072_)))
                                    (if (##pair? _hd3006730089_)
                                        (let ((_hd3006930092_
                                               (##car _hd3006730089_))
                                              (_tl3007030094_
                                               (##cdr _hd3006730089_)))
                                          (let* ((_clause-id30097_
                                                  _hd3006930092_)
                                                 (_clause30099_
                                                  _tl3007030094_))
                                            (_K3006630086_
                                             _clause30099_
                                             _clause-id30097_)))
                                        (_else3006430080_)))
                                  (_else3006430080_))))
                           (_g3010330123_
                            (lambda (_g3010430120_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g3010430120_)))
                           (_g3010230184_
                            (lambda (_g3010430126_)
                              (if (gx#stx-pair? _g3010430126_)
                                  (let ((_e3010730128_
                                         (gx#stx-e _g3010430126_)))
                                    (let ((_hd3010830131_
                                           (##car _e3010730128_))
                                          (_tl3010930133_
                                           (##cdr _e3010730128_)))
                                      (if (gx#identifier? _hd3010830131_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd3010830131_)
                                              (if (gx#stx-pair? _tl3010930133_)
                                                  (let ((_e3011030136_
                                                         (gx#stx-e
                                                          _tl3010930133_)))
                                                    (let ((_hd3011130139_
                                                           (##car _e3011030136_))
                                                          (_tl3011230141_
                                                           (##cdr _e3011030136_)))
                                                      (if (gx#stx-pair?
                                                           _hd3011130139_)
                                                          (let ((_e3011330144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3011130139_)))
                    (let ((_hd3011430147_ (##car _e3011330144_))
                          (_tl3011530149_ (##cdr _e3011330144_)))
                      (if (gx#stx-null? _tl3011530149_)
                          (if (gx#stx-pair? _tl3011230141_)
                              (let ((_e3011630152_ (gx#stx-e _tl3011230141_)))
                                (let ((_hd3011730155_ (##car _e3011630152_))
                                      (_tl3011830157_ (##cdr _e3011630152_)))
                                  (if (gx#stx-null? _tl3011830157_)
                                      ((lambda (_L30160_ _L30161_)
                                         (let ((_body30182_
                                                (_xform-e29977_
                                                 _L30160_
                                                 _kont-id30058_
                                                 _kont-box30061_
                                                 _negation-id30101_)))
                                           (values (cons '%#lambda
                                                         (cons (cons _L30161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _body30182_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (unbox _kont-box30061_))))
                                       _hd3011730155_
                                       _hd3011430147_)
                                      (_g3010330123_ _g3010430126_))))
                              (_g3010330123_ _g3010430126_))
                          (_g3010330123_ _g3010430126_))))
                  (_g3010330123_ _g3010430126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3010330123_
                                                   _g3010430126_))
                                              (_g3010330123_ _g3010430126_))
                                          (_g3010330123_ _g3010430126_))))
                                  (_g3010330123_ _g3010430126_)))))
                      (_g3010230184_ _clause-lambda30057_))))))
        (let _lp29981_ ((_rest29983_ _clauses29974_)
                        (_clauses29984_ '())
                        (_konts29985_ '()))
          (let* ((_rest2998629994_ _rest29983_)
                 (_else2998830002_
                  (lambda ()
                    (values (reverse _clauses29984_) (reverse _konts29985_))))
                 (_K2999030045_
                  (lambda (_rest30005_ _clause30006_)
                    (let* ((_clause3000730014_ _clause30006_)
                           (_E3000930018_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3000730014_)))
                           (_K3001030033_
                            (lambda (_clause-lambda30021_ _clause-id30022_)
                              (let* ((_id30024_ (make-symbol (gensym '__kont)))
                                     (_id30026_
                                      (gx#core-quote-syntax__0 _id30024_))
                                     (_g43123_
                                      (gx#core-bind-runtime!__0 _id30026_))
                                     (_g43124_
                                      (_clause-e29979_
                                       _clause-lambda30021_
                                       _id30026_
                                       _rest30005_)))
                                (begin
                                  (let ((_g43125_
                                         (if (##values? _g43124_)
                                             (##vector-length _g43124_)
                                             1)))
                                    (if (not (##fx= _g43125_ 2))
                                        (error "Context expects 2 values"
                                               _g43125_)))
                                  (let ((_clause-lambda30029_
                                         (##vector-ref _g43124_ 0))
                                        (_kont30030_
                                         (##vector-ref _g43124_ 1)))
                                    (let ()
                                      (_lp29981_
                                       _rest30005_
                                       (cons (cons _clause-id30022_
                                                   _clause-lambda30029_)
                                             _clauses29984_)
                                       (cons (cons _id30026_ _kont30030_)
                                             _konts29985_)))))))))
                      (if (##pair? _clause3000730014_)
                          (let ((_hd3001130036_ (##car _clause3000730014_))
                                (_tl3001230038_ (##cdr _clause3000730014_)))
                            (let* ((_clause-id30041_ _hd3001130036_)
                                   (_clause-lambda30043_ _tl3001230038_))
                              (_K3001030033_
                               _clause-lambda30043_
                               _clause-id30041_)))
                          (_E3000930018_))))))
            (if (##pair? _rest2998629994_)
                (let ((_hd2999130048_ (##car _rest2998629994_))
                      (_tl2999230050_ (##cdr _rest2998629994_)))
                  (let* ((_clause30053_ _hd2999130048_)
                         (_rest30055_ _tl2999230050_))
                    (_K2999030045_ _rest30055_ _clause30053_)))
                (_else2998830002_)))))))
  (define gxc#optimize-syntax-case-closure
    (lambda (_clause29318_ _negation29319_ _target29320_)
      (letrec ((_closure-e29322_
                (lambda (_expr29439_)
                  (let* ((___stx4280742808_ _expr29439_)
                         (_g2944629561_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4280742808_))))
                    (let ((___kont4280942810_
                           (lambda (_L29952_ _L29953_ _L29954_)
                             (cons '%#if
                                   (cons _L29954_
                                         (cons (_closure-e29322_ _L29953_)
                                               (cons (_closure-e29322_
                                                      _L29952_)
                                                     '()))))))
                          (___kont4281142812_
                           (lambda (_L29900_ _L29901_)
                             (cons '%#let-values
                                   (cons _L29901_
                                         (cons (_closure-e29322_ _L29900_)
                                               '())))))
                          (___kont4281342814_
                           (lambda (_L29846_ _L29847_ _L29848_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L29848_ '())
                                                     (cons (_closure-e29322_
                                                            _L29847_)
                                                           '()))
                                               '())
                                         (cons _L29846_ '())))))
                          (___kont4281542816_
                           (lambda (_L29759_ _L29760_)
                             (cons '%#lambda
                                   (cons (begin
                                           '#!void
                                           (foldr1 (lambda (_g2977729780_
                                                            _g2977829782_)
                                                     (cons _g2977729780_
                                                           _g2977829782_))
                                                   '()
                                                   _L29760_))
                                         (cons (_closure-e29322_ _L29759_)
                                               '())))))
                          (___kont4281942820_
                           (lambda (_L29689_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L29689_ '()))
                                         '()))))
                          (___kont4282142822_
                           (lambda (_L29622_ _L29623_) _expr29439_)))
                      (let* ((___match4304043041_
                              (lambda (_e2953629566_
                                       _hd2953729569_
                                       _tl2953829571_
                                       _e2953929574_
                                       _hd2954029577_
                                       _tl2954129579_
                                       _e2954229582_
                                       _hd2954329585_
                                       _tl2954429587_
                                       _e2954529590_
                                       _hd2954629593_
                                       _tl2954729595_
                                       ___splice4282342824_
                                       _target2954829598_
                                       _tl2955029600_)
                                (letrec ((_loop2955129603_
                                          (lambda (_hd2954929606_
                                                   _arg2955529608_)
                                            (if (gx#stx-pair? _hd2954929606_)
                                                (let ((_e2955229611_
                                                       (gx#stx-e
                                                        _hd2954929606_)))
                                                  (let ((_lp-tl2955429616_
                                                         (##cdr _e2955229611_))
                                                        (_lp-hd2955329614_
                                                         (##car _e2955229611_)))
                                                    (_loop2955129603_
                                                     _lp-tl2955429616_
                                                     (cons _lp-hd2955329614_
                                                           _arg2955529608_))))
                                                (let ((_arg2955629619_
                                                       (reverse _arg2955529608_)))
                                                  (___kont4282142822_
                                                   _arg2955629619_
                                                   _hd2954629593_))))))
                                  (_loop2955129603_ _target2954829598_ '()))))
                             (___match4299842999_
                              (lambda (_e2951929649_
                                       _hd2952029652_
                                       _tl2952129654_
                                       _e2952229657_
                                       _hd2952329660_
                                       _tl2952429662_
                                       _e2952529665_
                                       _hd2952629668_
                                       _tl2952729670_
                                       _e2952829673_
                                       _hd2952929676_
                                       _tl2953029678_
                                       _e2953129681_
                                       _hd2953229684_
                                       _tl2953329686_)
                                (let ((_L29689_ _hd2952929676_))
                                  (if (gx#free-identifier=?
                                       _L29689_
                                       _negation29319_)
                                      (___kont4281942820_ _L29689_)
                                      (if (gx#stx-pair/null? _tl2952429662_)
                                          (let ((___splice4282342824_
                                                 (gx#syntax-split-splice
                                                  _tl2952429662_
                                                  '0)))
                                            (let ((_tl2955029600_
                                                   (##vector-ref
                                                    ___splice4282342824_
                                                    '1))
                                                  (_target2954829598_
                                                   (##vector-ref
                                                    ___splice4282342824_
                                                    '0)))
                                              (if (gx#stx-null? _tl2955029600_)
                                                  (___match4304043041_
                                                   _e2951929649_
                                                   _hd2952029652_
                                                   _tl2952129654_
                                                   _e2952229657_
                                                   _hd2952329660_
                                                   _tl2952429662_
                                                   _e2952529665_
                                                   _hd2952629668_
                                                   _tl2952729670_
                                                   _e2952829673_
                                                   _hd2952929676_
                                                   _tl2953029678_
                                                   ___splice4282342824_
                                                   _target2954829598_
                                                   _tl2955029600_)
                                                  (_g2944629561_))))
                                          (_g2944629561_))))))
                             (___match4295642957_
                              (lambda (_e2950029711_
                                       _hd2950129714_
                                       _tl2950229716_
                                       _e2950329719_
                                       _hd2950429722_
                                       _tl2950529724_
                                       ___splice4281742818_
                                       _target2950629727_
                                       _tl2950829729_)
                                (letrec ((_loop2950929732_
                                          (lambda (_hd2950729735_
                                                   _id2951329737_)
                                            (if (gx#stx-pair? _hd2950729735_)
                                                (let ((_e2951029740_
                                                       (gx#stx-e
                                                        _hd2950729735_)))
                                                  (let ((_lp-tl2951229745_
                                                         (##cdr _e2951029740_))
                                                        (_lp-hd2951129743_
                                                         (##car _e2951029740_)))
                                                    (_loop2950929732_
                                                     _lp-tl2951229745_
                                                     (cons _lp-hd2951129743_
                                                           _id2951329737_))))
                                                (let ((_id2951429748_
                                                       (reverse _id2951329737_)))
                                                  (if (gx#stx-pair?
                                                       _tl2950529724_)
                                                      (let ((_e2951529751_
                                                             (gx#stx-e
                                                              _tl2950529724_)))
                                                        (let ((_tl2951729756_
                                                               (##cdr _e2951529751_))
                                                              (_hd2951629754_
                                                               (##car _e2951529751_)))
                                                          (if (gx#stx-null?
                                                               _tl2951729756_)
                                                              (___kont4281542816_
                                                               _hd2951629754_
                                                               _id2951429748_)
                                                              (_g2944629561_))))
                                                      (_g2944629561_)))))))
                                  (_loop2950929732_ _target2950629727_ '())))))
                        (if (gx#stx-pair? ___stx4280742808_)
                            (let ((_e2945129920_ (gx#stx-e ___stx4280742808_)))
                              (let ((_tl2945329925_ (##cdr _e2945129920_))
                                    (_hd2945229923_ (##car _e2945129920_)))
                                (if (gx#identifier? _hd2945229923_)
                                    (if (gx#stx-eq? '%#if _hd2945229923_)
                                        (if (gx#stx-pair? _tl2945329925_)
                                            (let ((_e2945429928_
                                                   (gx#stx-e _tl2945329925_)))
                                              (let ((_tl2945629933_
                                                     (##cdr _e2945429928_))
                                                    (_hd2945529931_
                                                     (##car _e2945429928_)))
                                                (if (gx#stx-pair?
                                                     _tl2945629933_)
                                                    (let ((_e2945729936_
                                                           (gx#stx-e
                                                            _tl2945629933_)))
                                                      (let ((_tl2945929941_
                                                             (##cdr _e2945729936_))
                                                            (_hd2945829939_
                                                             (##car _e2945729936_)))
                                                        (if (gx#stx-pair?
                                                             _tl2945929941_)
                                                            (let ((_e2946029944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2945929941_)))
                      (let ((_tl2946229949_ (##cdr _e2946029944_))
                            (_hd2946129947_ (##car _e2946029944_)))
                        (if (gx#stx-null? _tl2946229949_)
                            (___kont4280942810_
                             _hd2946129947_
                             _hd2945829939_
                             _hd2945529931_)
                            (_g2944629561_))))
                    (_g2944629561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2944629561_))))
                                            (_g2944629561_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd2945229923_)
                                            (if (gx#stx-pair? _tl2945329925_)
                                                (let ((_e2946829884_
                                                       (gx#stx-e
                                                        _tl2945329925_)))
                                                  (let ((_tl2947029889_
                                                         (##cdr _e2946829884_))
                                                        (_hd2946929887_
                                                         (##car _e2946829884_)))
                                                    (if (gx#stx-pair?
                                                         _tl2947029889_)
                                                        (let ((_e2947129892_
                                                               (gx#stx-e
                                                                _tl2947029889_)))
                                                          (let ((_tl2947329897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2947129892_))
                        (_hd2947229895_ (##car _e2947129892_)))
                    (if (gx#stx-null? _tl2947329897_)
                        (___kont4281142812_ _hd2947229895_ _hd2946929887_)
                        (_g2944629561_))))
                (_g2944629561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2944629561_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd2945229923_)
                                                (if (gx#stx-pair?
                                                     _tl2945329925_)
                                                    (let ((_e2948029798_
                                                           (gx#stx-e
                                                            _tl2945329925_)))
                                                      (let ((_tl2948229803_
                                                             (##cdr _e2948029798_))
                                                            (_hd2948129801_
                                                             (##car _e2948029798_)))
                                                        (if (gx#stx-pair?
                                                             _hd2948129801_)
                                                            (let ((_e2948329806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2948129801_)))
                      (let ((_tl2948529811_ (##cdr _e2948329806_))
                            (_hd2948429809_ (##car _e2948329806_)))
                        (if (gx#stx-pair? _hd2948429809_)
                            (let ((_e2948629814_ (gx#stx-e _hd2948429809_)))
                              (let ((_tl2948829819_ (##cdr _e2948629814_))
                                    (_hd2948729817_ (##car _e2948629814_)))
                                (if (gx#stx-pair? _hd2948729817_)
                                    (let ((_e2948929822_
                                           (gx#stx-e _hd2948729817_)))
                                      (let ((_tl2949129827_
                                             (##cdr _e2948929822_))
                                            (_hd2949029825_
                                             (##car _e2948929822_)))
                                        (if (gx#stx-null? _tl2949129827_)
                                            (if (gx#stx-pair? _tl2948829819_)
                                                (let ((_e2949229830_
                                                       (gx#stx-e
                                                        _tl2948829819_)))
                                                  (let ((_tl2949429835_
                                                         (##cdr _e2949229830_))
                                                        (_hd2949329833_
                                                         (##car _e2949229830_)))
                                                    (if (gx#stx-null?
                                                         _tl2949429835_)
                                                        (if (gx#stx-null?
                                                             _tl2948529811_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2948229803_)
                        (let ((_e2949529838_ (gx#stx-e _tl2948229803_)))
                          (let ((_tl2949729843_ (##cdr _e2949529838_))
                                (_hd2949629841_ (##car _e2949529838_)))
                            (if (gx#stx-null? _tl2949729843_)
                                (___kont4281342814_
                                 _hd2949629841_
                                 _hd2949329833_
                                 _hd2949029825_)
                                (_g2944629561_))))
                        (_g2944629561_))
                    (_g2944629561_))
                (_g2944629561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2944629561_))
                                            (_g2944629561_))))
                                    (_g2944629561_))))
                            (_g2944629561_))))
                    (_g2944629561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2944629561_))
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd2945229923_)
                                                    (if (gx#stx-pair?
                                                         _tl2945329925_)
                                                        (let ((_e2950329719_
                                                               (gx#stx-e
                                                                _tl2945329925_)))
                                                          (let ((_tl2950529724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2950329719_))
                        (_hd2950429722_ (##car _e2950329719_)))
                    (if (gx#stx-pair/null? _hd2950429722_)
                        (let ((___splice4281742818_
                               (gx#syntax-split-splice _hd2950429722_ '0)))
                          (let ((_tl2950829729_
                                 (##vector-ref ___splice4281742818_ '1))
                                (_target2950629727_
                                 (##vector-ref ___splice4281742818_ '0)))
                            (if (gx#stx-null? _tl2950829729_)
                                (___match4295642957_
                                 _e2945129920_
                                 _hd2945229923_
                                 _tl2945329925_
                                 _e2950329719_
                                 _hd2950429722_
                                 _tl2950529724_
                                 ___splice4281742818_
                                 _target2950629727_
                                 _tl2950829729_)
                                (_g2944629561_))))
                        (_g2944629561_))))
                (_g2944629561_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2945229923_)
                                                        (if (gx#stx-pair?
                                                             _tl2945329925_)
                                                            (let ((_e2952229657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2945329925_)))
                      (let ((_tl2952429662_ (##cdr _e2952229657_))
                            (_hd2952329660_ (##car _e2952229657_)))
                        (if (gx#stx-pair? _hd2952329660_)
                            (let ((_e2952529665_ (gx#stx-e _hd2952329660_)))
                              (let ((_tl2952729670_ (##cdr _e2952529665_))
                                    (_hd2952629668_ (##car _e2952529665_)))
                                (if (gx#identifier? _hd2952629668_)
                                    (if (gx#stx-eq? '%#ref _hd2952629668_)
                                        (if (gx#stx-pair? _tl2952729670_)
                                            (let ((_e2952829673_
                                                   (gx#stx-e _tl2952729670_)))
                                              (let ((_tl2953029678_
                                                     (##cdr _e2952829673_))
                                                    (_hd2952929676_
                                                     (##car _e2952829673_)))
                                                (if (gx#stx-null?
                                                     _tl2953029678_)
                                                    (if (gx#stx-pair?
                                                         _tl2952429662_)
                                                        (let ((_e2953129681_
                                                               (gx#stx-e
                                                                _tl2952429662_)))
                                                          (let ((_tl2953329686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2953129681_))
                        (_hd2953229684_ (##car _e2953129681_)))
                    (if (gx#stx-null? _tl2953329686_)
                        (___match4299842999_
                         _e2945129920_
                         _hd2945229923_
                         _tl2945329925_
                         _e2952229657_
                         _hd2952329660_
                         _tl2952429662_
                         _e2952529665_
                         _hd2952629668_
                         _tl2952729670_
                         _e2952829673_
                         _hd2952929676_
                         _tl2953029678_
                         _e2953129681_
                         _hd2953229684_
                         _tl2953329686_)
                        (if (gx#stx-pair/null? _tl2952429662_)
                            (let ((___splice4282342824_
                                   (gx#syntax-split-splice _tl2952429662_ '0)))
                              (let ((_tl2955029600_
                                     (##vector-ref ___splice4282342824_ '1))
                                    (_target2954829598_
                                     (##vector-ref ___splice4282342824_ '0)))
                                (if (gx#stx-null? _tl2955029600_)
                                    (___match4304043041_
                                     _e2945129920_
                                     _hd2945229923_
                                     _tl2945329925_
                                     _e2952229657_
                                     _hd2952329660_
                                     _tl2952429662_
                                     _e2952529665_
                                     _hd2952629668_
                                     _tl2952729670_
                                     _e2952829673_
                                     _hd2952929676_
                                     _tl2953029678_
                                     ___splice4282342824_
                                     _target2954829598_
                                     _tl2955029600_)
                                    (_g2944629561_))))
                            (_g2944629561_)))))
                (if (gx#stx-pair/null? _tl2952429662_)
                    (let ((___splice4282342824_
                           (gx#syntax-split-splice _tl2952429662_ '0)))
                      (let ((_tl2955029600_
                             (##vector-ref ___splice4282342824_ '1))
                            (_target2954829598_
                             (##vector-ref ___splice4282342824_ '0)))
                        (if (gx#stx-null? _tl2955029600_)
                            (___match4304043041_
                             _e2945129920_
                             _hd2945229923_
                             _tl2945329925_
                             _e2952229657_
                             _hd2952329660_
                             _tl2952429662_
                             _e2952529665_
                             _hd2952629668_
                             _tl2952729670_
                             _e2952829673_
                             _hd2952929676_
                             _tl2953029678_
                             ___splice4282342824_
                             _target2954829598_
                             _tl2955029600_)
                            (_g2944629561_))))
                    (_g2944629561_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2944629561_))))
                                            (_g2944629561_))
                                        (_g2944629561_))
                                    (_g2944629561_))))
                            (_g2944629561_))))
                    (_g2944629561_))
                (_g2944629561_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g2944629561_))))
                            (_g2944629561_))))))))
        (let* ((_clause2932329330_ _clause29318_)
               (_E2932529334_
                (lambda () (error '"No clause matching" _clause2932329330_)))
               (_K2932629427_
                (lambda (_kont29337_ _id29338_)
                  (let* ((_g2934029360_
                          (lambda (_g2934129357_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2934129357_)))
                         (_g2933929424_
                          (lambda (_g2934129363_)
                            (if (gx#stx-pair? _g2934129363_)
                                (let ((_e2934429365_ (gx#stx-e _g2934129363_)))
                                  (let ((_hd2934529368_ (##car _e2934429365_))
                                        (_tl2934629370_ (##cdr _e2934429365_)))
                                    (if (gx#identifier? _hd2934529368_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2934529368_)
                                            (if (gx#stx-pair? _tl2934629370_)
                                                (let ((_e2934729373_
                                                       (gx#stx-e
                                                        _tl2934629370_)))
                                                  (let ((_hd2934829376_
                                                         (##car _e2934729373_))
                                                        (_tl2934929378_
                                                         (##cdr _e2934729373_)))
                                                    (if (gx#stx-pair?
                                                         _hd2934829376_)
                                                        (let ((_e2935029381_
                                                               (gx#stx-e
                                                                _hd2934829376_)))
                                                          (let ((_hd2935129384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2935029381_))
                        (_tl2935229386_ (##cdr _e2935029381_)))
                    (if (gx#stx-null? _tl2935229386_)
                        (if (gx#stx-pair? _tl2934929378_)
                            (let ((_e2935329389_ (gx#stx-e _tl2934929378_)))
                              (let ((_hd2935429392_ (##car _e2935329389_))
                                    (_tl2935529394_ (##cdr _e2935329389_)))
                                (if (gx#stx-null? _tl2935529394_)
                                    ((lambda (_L29397_ _L29398_)
                                       (let* ((_body29419_
                                               (gxc#apply-expression-subst
                                                _L29397_
                                                _L29398_
                                                _target29320_))
                                              (_body29421_
                                               (if _negation29319_
                                                   (_closure-e29322_
                                                    _body29419_)
                                                   _body29419_)))
                                         (cons _id29338_
                                               (cons '%#lambda
                                                     (cons '()
                                                           (cons _body29421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2935429392_
                                     _hd2935129384_)
                                    (_g2934029360_ _g2934129363_))))
                            (_g2934029360_ _g2934129363_))
                        (_g2934029360_ _g2934129363_))))
                (_g2934029360_ _g2934129363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2934029360_ _g2934129363_))
                                            (_g2934029360_ _g2934129363_))
                                        (_g2934029360_ _g2934129363_))))
                                (_g2934029360_ _g2934129363_)))))
                    (_g2933929424_ _kont29337_)))))
          (if (##pair? _clause2932329330_)
              (let ((_hd2932729430_ (##car _clause2932329330_))
                    (_tl2932829432_ (##cdr _clause2932329330_)))
                (let* ((_id29435_ _hd2932729430_) (_kont29437_ _tl2932829432_))
                  (_K2932629427_ _kont29437_ _id29435_)))
              (_E2932529334_))))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx29104_ _vars29105_ _K29106_)
      (let* ((_g2910829125_
              (lambda (_g2910929122_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2910929122_)))
             (_g2910729315_
              (lambda (_g2910929128_)
                (if (gx#stx-pair? _g2910929128_)
                    (let ((_e2911229130_ (gx#stx-e _g2910929128_)))
                      (let ((_hd2911329133_ (##car _e2911229130_))
                            (_tl2911429135_ (##cdr _e2911229130_)))
                        (if (gx#stx-pair? _tl2911429135_)
                            (let ((_e2911529138_ (gx#stx-e _tl2911429135_)))
                              (let ((_hd2911629141_ (##car _e2911529138_))
                                    (_tl2911729143_ (##cdr _e2911529138_)))
                                (if (gx#stx-pair? _tl2911729143_)
                                    (let ((_e2911829146_
                                           (gx#stx-e _tl2911729143_)))
                                      (let ((_hd2911929149_
                                             (##car _e2911829146_))
                                            (_tl2912029151_
                                             (##cdr _e2911829146_)))
                                        (if (gx#stx-null? _tl2912029151_)
                                            ((lambda (_L29154_ _L29155_)
                                               (let _lp29170_ ((_rest29172_
                                                                _L29155_)
                                                               (_rebind29173_
                                                                '())
                                                               (_vars29174_
                                                                _vars29105_))
                                                 (let* ((_rest2917529183_
                                                         _rest29172_)
                                                        (_else2917729191_
                                                         (lambda ()
                                                           (if (null? _rebind29173_)
                                                               (gxc#compile-e
                                                                _L29154_
                                                                _vars29174_
                                                                _K29106_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind29173_)
                                    (cons (gxc#compile-e
                                           _L29154_
                                           _vars29174_
                                           _K29106_)
                                          '())))
                        _stx29104_))))
                (_K2917929303_
                 (lambda (_rest29194_ _bind29195_)
                   (let* ((___stx4304343044_ _bind29195_)
                          (_g2919829221_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4304343044_))))
                     (let ((___kont4304543046_
                            (lambda (_L29273_ _L29274_)
                              (_lp29170_
                               _rest29194_
                               _rebind29173_
                               (cons _bind29195_ _vars29174_))))
                           (___kont4304743048_
                            (lambda ()
                              (_lp29170_
                               _rest29194_
                               (cons _bind29195_ _rebind29173_)
                               _vars29174_))))
                       (if (gx#stx-pair? ___stx4304343044_)
                           (let ((_e2920229233_ (gx#stx-e ___stx4304343044_)))
                             (let ((_tl2920429238_ (##cdr _e2920229233_))
                                   (_hd2920329236_ (##car _e2920229233_)))
                               (if (gx#stx-pair? _hd2920329236_)
                                   (let ((_e2920529241_
                                          (gx#stx-e _hd2920329236_)))
                                     (let ((_tl2920729246_
                                            (##cdr _e2920529241_))
                                           (_hd2920629244_
                                            (##car _e2920529241_)))
                                       (if (gx#stx-null? _tl2920729246_)
                                           (if (gx#stx-pair? _tl2920429238_)
                                               (let ((_e2920829249_
                                                      (gx#stx-e
                                                       _tl2920429238_)))
                                                 (let ((_tl2921029254_
                                                        (##cdr _e2920829249_))
                                                       (_hd2920929252_
                                                        (##car _e2920829249_)))
                                                   (if (gx#stx-pair?
                                                        _hd2920929252_)
                                                       (let ((_e2921129257_
                                                              (gx#stx-e
                                                               _hd2920929252_)))
                                                         (let ((_tl2921329262_
                                                                (##cdr _e2921129257_))
                                                               (_hd2921229260_
                                                                (##car _e2921129257_)))
                                                           (if (gx#identifier?
                                                                _hd2921229260_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd2921229260_)
                           (if (gx#stx-pair? _tl2921329262_)
                               (let ((_e2921429265_ (gx#stx-e _tl2921329262_)))
                                 (let ((_tl2921629270_ (##cdr _e2921429265_))
                                       (_hd2921529268_ (##car _e2921429265_)))
                                   (if (gx#stx-null? _tl2921629270_)
                                       (if (gx#stx-null? _tl2921029254_)
                                           (___kont4304543046_
                                            _hd2921529268_
                                            _hd2920629244_)
                                           (___kont4304743048_))
                                       (___kont4304743048_))))
                               (___kont4304743048_))
                           (___kont4304743048_))
                       (___kont4304743048_))))
               (___kont4304743048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4304743048_))
                                           (___kont4304743048_))))
                                   (___kont4304743048_))))
                           (___kont4304743048_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest2917529183_)
                                                       (let ((_hd2918029306_
                                                              (##car _rest2917529183_))
                                                             (_tl2918129308_
                                                              (##cdr _rest2917529183_)))
                                                         (let* ((_bind29311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2918029306_)
                        (_rest29313_ _tl2918129308_))
                   (_K2917929303_ _rest29313_ _bind29311_)))
               (_else2917729191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd2911929149_
                                             _hd2911629141_)
                                            (_g2910829125_ _g2910929128_))))
                                    (_g2910829125_ _g2910929128_))))
                            (_g2910829125_ _g2910929128_))))
                    (_g2910829125_ _g2910929128_)))))
        (_g2910729315_ _stx29104_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx29019_ _vars29020_ _K29021_)
      (let* ((_g2902329044_
              (lambda (_g2902429041_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2902429041_)))
             (_g2902229101_
              (lambda (_g2902429047_)
                (if (gx#stx-pair? _g2902429047_)
                    (let ((_e2902829049_ (gx#stx-e _g2902429047_)))
                      (let ((_hd2902929052_ (##car _e2902829049_))
                            (_tl2903029054_ (##cdr _e2902829049_)))
                        (if (gx#stx-pair? _tl2903029054_)
                            (let ((_e2903129057_ (gx#stx-e _tl2903029054_)))
                              (let ((_hd2903229060_ (##car _e2903129057_))
                                    (_tl2903329062_ (##cdr _e2903129057_)))
                                (if (gx#stx-pair? _tl2903329062_)
                                    (let ((_e2903429065_
                                           (gx#stx-e _tl2903329062_)))
                                      (let ((_hd2903529068_
                                             (##car _e2903429065_))
                                            (_tl2903629070_
                                             (##cdr _e2903429065_)))
                                        (if (gx#stx-pair? _tl2903629070_)
                                            (let ((_e2903729073_
                                                   (gx#stx-e _tl2903629070_)))
                                              (let ((_hd2903829076_
                                                     (##car _e2903729073_))
                                                    (_tl2903929078_
                                                     (##cdr _e2903729073_)))
                                                (if (gx#stx-null?
                                                     _tl2903929078_)
                                                    ((lambda (_L29081_
                                                              _L29082_
                                                              _L29083_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L29083_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars29020_))
                   (gxc#push-match-vars-stop _stx29019_ _vars29020_ _K29021_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L29083_
                                (cons (gxc#compile-e
                                       _L29082_
                                       _vars29020_
                                       _K29021_)
                                      (cons (gxc#compile-e
                                             _L29081_
                                             _vars29020_
                                             _K29021_)
                                            '()))))
                    _stx29019_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd2903829076_
                                                     _hd2903529068_
                                                     _hd2903229060_)
                                                    (_g2902329044_
                                                     _g2902429047_))))
                                            (_g2902329044_ _g2902429047_))))
                                    (_g2902329044_ _g2902429047_))))
                            (_g2902329044_ _g2902429047_))))
                    (_g2902329044_ _g2902429047_)))))
        (_g2902229101_ _stx29019_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx28939_ _vars28940_ _K28941_)
      (let* ((_g2894328962_
              (lambda (_g2894428959_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2894428959_)))
             (_g2894229016_
              (lambda (_g2894428965_)
                (if (gx#stx-pair? _g2894428965_)
                    (let ((_e2894628967_ (gx#stx-e _g2894428965_)))
                      (let ((_hd2894728970_ (##car _e2894628967_))
                            (_tl2894828972_ (##cdr _e2894628967_)))
                        (if (gx#stx-pair? _tl2894828972_)
                            (let ((_e2894928975_ (gx#stx-e _tl2894828972_)))
                              (let ((_hd2895028978_ (##car _e2894928975_))
                                    (_tl2895128980_ (##cdr _e2894928975_)))
                                (if (gx#stx-pair? _hd2895028978_)
                                    (let ((_e2895228983_
                                           (gx#stx-e _hd2895028978_)))
                                      (let ((_hd2895328986_
                                             (##car _e2895228983_))
                                            (_tl2895428988_
                                             (##cdr _e2895228983_)))
                                        (if (gx#identifier? _hd2895328986_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2895328986_)
                                                (if (gx#stx-pair?
                                                     _tl2895428988_)
                                                    (let ((_e2895528991_
                                                           (gx#stx-e
                                                            _tl2895428988_)))
                                                      (let ((_hd2895628994_
                                                             (##car _e2895528991_))
                                                            (_tl2895728996_
                                                             (##cdr _e2895528991_)))
                                                        (if (gx#stx-null?
                                                             _tl2895728996_)
                                                            ((lambda (_L28999_)
                                                               (if (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L28999_
                                _K28941_)
                               (pair? _vars28940_)
                               '#f)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars28940_)
                                        (cons _stx28939_ '())))
                            _stx28939_)
                           _stx28939_))
                     _hd2895628994_)
                    (_g2894328962_ _g2894428965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2894328962_
                                                     _g2894428965_))
                                                (_g2894328962_ _g2894428965_))
                                            (_g2894328962_ _g2894428965_))))
                                    (_g2894328962_ _g2894428965_))))
                            (_g2894328962_ _g2894428965_))))
                    (_g2894328962_ _g2894428965_)))))
        (_g2894229016_ _stx28939_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx28935_ _vars28936_ _K28937_)
      (if (null? _vars28936_)
          _stx28935_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars28936_) (cons _stx28935_ '())))
           _stx28935_)))))
