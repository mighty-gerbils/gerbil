(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1781119044)
  (begin
    (define __syntax::t
      (make-class-type
       '__syntax::t
       '__syntax
       (list)
       '(e id)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define __syntax? (make-class-predicate __syntax::t))
    (define make-__syntax
      (lambda _%$args149051%_
        (apply make-instance __syntax::t _%$args149051%_)))
    (define __syntax-e (make-class-slot-accessor __syntax::t 'e))
    (define __syntax-id (make-class-slot-accessor __syntax::t 'id))
    (define __syntax-e-set! (make-class-slot-mutator __syntax::t 'e))
    (define __syntax-id-set! (make-class-slot-mutator __syntax::t 'id))
    (define &__syntax-e (make-class-slot-unchecked-accessor __syntax::t 'e))
    (define &__syntax-id (make-class-slot-unchecked-accessor __syntax::t 'id))
    (define &__syntax-e-set!
      (make-class-slot-unchecked-mutator __syntax::t 'e))
    (define &__syntax-id-set!
      (make-class-slot-unchecked-mutator __syntax::t 'id))
    (define __core-form::t
      (make-class-type
       '__core-form::t
       '__core-form
       (list __syntax::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define __core-form? (make-class-predicate __core-form::t))
    (define make-__core-form
      (lambda _%$args149048%_
        (apply make-instance __core-form::t _%$args149048%_)))
    (define __core-form-e (make-class-slot-accessor __core-form::t 'e))
    (define __core-form-id (make-class-slot-accessor __core-form::t 'id))
    (define __core-form-e-set! (make-class-slot-mutator __core-form::t 'e))
    (define __core-form-id-set! (make-class-slot-mutator __core-form::t 'id))
    (define &__core-form-e
      (make-class-slot-unchecked-accessor __core-form::t 'e))
    (define &__core-form-id
      (make-class-slot-unchecked-accessor __core-form::t 'id))
    (define &__core-form-e-set!
      (make-class-slot-unchecked-mutator __core-form::t 'e))
    (define &__core-form-id-set!
      (make-class-slot-unchecked-mutator __core-form::t 'id))
    (define __core-expression::t
      (make-class-type
       '__core-expression::t
       '__core-expression
       (list __core-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define __core-expression? (make-class-predicate __core-expression::t))
    (define make-__core-expression
      (lambda _%$args149045%_
        (apply make-instance __core-expression::t _%$args149045%_)))
    (define __core-expression-e
      (make-class-slot-accessor __core-expression::t 'e))
    (define __core-expression-id
      (make-class-slot-accessor __core-expression::t 'id))
    (define __core-expression-e-set!
      (make-class-slot-mutator __core-expression::t 'e))
    (define __core-expression-id-set!
      (make-class-slot-mutator __core-expression::t 'id))
    (define &__core-expression-e
      (make-class-slot-unchecked-accessor __core-expression::t 'e))
    (define &__core-expression-id
      (make-class-slot-unchecked-accessor __core-expression::t 'id))
    (define &__core-expression-e-set!
      (make-class-slot-unchecked-mutator __core-expression::t 'e))
    (define &__core-expression-id-set!
      (make-class-slot-unchecked-mutator __core-expression::t 'id))
    (define __core-special-form::t
      (make-class-type
       '__core-special-form::t
       '__core-special-form
       (list __core-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define __core-special-form? (make-class-predicate __core-special-form::t))
    (define make-__core-special-form
      (lambda _%$args149042%_
        (apply make-instance __core-special-form::t _%$args149042%_)))
    (define __core-special-form-e
      (make-class-slot-accessor __core-special-form::t 'e))
    (define __core-special-form-id
      (make-class-slot-accessor __core-special-form::t 'id))
    (define __core-special-form-e-set!
      (make-class-slot-mutator __core-special-form::t 'e))
    (define __core-special-form-id-set!
      (make-class-slot-mutator __core-special-form::t 'id))
    (define &__core-special-form-e
      (make-class-slot-unchecked-accessor __core-special-form::t 'e))
    (define &__core-special-form-id
      (make-class-slot-unchecked-accessor __core-special-form::t 'id))
    (define &__core-special-form-e-set!
      (make-class-slot-unchecked-mutator __core-special-form::t 'e))
    (define &__core-special-form-id-set!
      (make-class-slot-unchecked-mutator __core-special-form::t 'id))
    (define __core (make-hash-table-eq))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_%id149016%_)
        (let* ((_%h149018%_ __core)
               (_%key149021%_ (__AST-e _%id149016%_))
               (_%h149028%_
                (let ((_%$obj149025%_ _%h149018%_))
                  (if (immediate-instance-of? HashTable::t _%$obj149025%_)
                      _%$obj149025%_
                      (cast HashTable::interface _%$obj149025%_))))
               (_%h149030%_ _%h149028%_))
          (__hash-get _%h149030%_ _%key149021%_))))
    (define __core-bound-id?
      (let ((_%$%opt-lambda148997149006%_
             (lambda (_%id148999%_ _%is?149000%_)
               (let ((_%$e149002%_ (__core-resolve _%id148999%_)))
                 (if _%$e149002%_ (_%is?149000%_ _%$e149002%_) '#f)))))
        (lambda _g149053_
          (let ((_g149054_ (let () (declare (not safe)) (##length _g149053_))))
            (cond ((let () (declare (not safe)) (##fx= _g149054_ 1))
                   (apply (lambda (_%id149009%_)
                            (let ((_%is?149011%_ true))
                              (_%$%opt-lambda148997149006%_
                               _%id149009%_
                               _%is?149011%_)))
                          _g149053_))
                  ((let () (declare (not safe)) (##fx= _g149054_ 2))
                   (apply _%$%opt-lambda148997149006%_ _g149053_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __core-bound-id?
                    _g149053_)))))))
    (define __core-bind-syntax!
      (let ((_%$%opt-lambda148952148986%_
             (lambda (_%id148954%_ _%e148955%_ _%make148956%_)
               (let* ((_%h148958%_ __core)
                      (_%key148961%_ _%id148954%_)
                      (_%value148964%_
                       (if (__syntax? _%e148955%_)
                           _%e148955%_
                           (_%make148956%_ _%e148955%_ _%id148954%_)))
                      (_%h148971%_
                       (let ((_%$obj148968%_ _%h148958%_))
                         (if (immediate-instance-of?
                              HashTable::t
                              _%$obj148968%_)
                             _%$obj148968%_
                             (cast HashTable::interface _%$obj148968%_))))
                      (_%h148973%_ _%h148971%_))
                 (__hash-put! _%h148973%_ _%key148961%_ _%value148964%_)))))
        (lambda _g149055_
          (let ((_g149056_ (let () (declare (not safe)) (##length _g149055_))))
            (cond ((let () (declare (not safe)) (##fx= _g149056_ 2))
                   (apply (lambda (_%id148989%_ _%e148990%_)
                            (let ((_%make148992%_ make-__syntax))
                              (_%$%opt-lambda148952148986%_
                               _%id148989%_
                               _%e148990%_
                               _%make148992%_)))
                          _g149055_))
                  ((let () (declare (not safe)) (##fx= _g149056_ 3))
                   (apply _%$%opt-lambda148952148986%_ _g149055_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __core-bind-syntax!
                    _g149055_)))))))
    (define __SRC
      (let ((_%$%opt-lambda148932148943%_
             (lambda (_%e148934%_ _%src-stx148935%_)
               (if (or (pair? _%e148934%_) (symbol? _%e148934%_))
                   (let ((__tmp149057
                          (if (AST? _%src-stx148935%_)
                              (__locat (__AST-source _%src-stx148935%_))
                              '#f)))
                     (declare (not safe))
                     (##make-source _%e148934%_ __tmp149057))
                   (if (AST? _%e148934%_)
                       (let ((__tmp149059 (&AST-e _%e148934%_))
                             (__tmp149058
                              (__locat (__AST-source _%e148934%_))))
                         (declare (not safe))
                         (##make-source __tmp149059 __tmp149058))
                       (error '"BUG! Cannot sourcify object" _%e148934%_))))))
        (lambda _g149060_
          (let ((_g149061_ (let () (declare (not safe)) (##length _g149060_))))
            (cond ((let () (declare (not safe)) (##fx= _g149061_ 1))
                   (apply (lambda (_%e148946%_)
                            (let ((_%src-stx148948%_ '#f))
                              (_%$%opt-lambda148932148943%_
                               _%e148946%_
                               _%src-stx148948%_)))
                          _g149060_))
                  ((let () (declare (not safe)) (##fx= _g149061_ 2))
                   (apply _%$%opt-lambda148932148943%_ _g149060_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __SRC
                    _g149060_)))))))
    (define __locat
      (lambda (_%loc148931%_)
        (if (let () (declare (not safe)) (##locat? _%loc148931%_))
            _%loc148931%_
            '#f)))
    (define __check-values
      (lambda (_%obj148926%_ _%k148927%_)
        (let ((_%count148929%_ (values-count _%obj148926%_)))
          (if (fx= _%count148929%_ _%k148927%_)
              '#!void
              (error (if (fx< _%count148929%_ _%k148927%_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj148926%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj148926%_))
                         _%obj148926%_)
                     _%k148927%_)))))
    (define __compile
      (lambda (_%stx148895%_)
        (let* ((_%$e148897%_ _%stx148895%_)
               (_%$%$E148899148905%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e148897%_))))
          (if (__AST-pair? _%$e148897%_)
              (let* ((_%$%$tgt148900148908%_ (__AST-e _%$e148897%_))
                     (_%$%$hd148901148911%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt148900148908%_)))
                     (_%$%$tl148902148914%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt148900148908%_)))
                     (_%form148918%_ _%$%$hd148901148911%_)
                     (_%$e148920%_ (__core-resolve _%form148918%_)))
                (if _%$e148920%_
                    ((lambda (_%bind148923%_)
                       ((__syntax-e _%bind148923%_) _%stx148895%_))
                     _%$e148920%_)
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; cannot resolve form"
                     _%stx148895%_
                     _%form148918%_)))
              (_%$%$E148899148905%_)))))
    (define __compile-error
      (let ((_%$%opt-lambda148880148885%_
             (lambda (_%stx148882%_ _%detail148883%_)
               (__raise-syntax-error
                'compile
                '"Bad syntax; cannot compile"
                _%stx148882%_
                _%detail148883%_))))
        (lambda _g149062_
          (let ((_g149063_ (let () (declare (not safe)) (##length _g149062_))))
            (cond ((let () (declare (not safe)) (##fx= _g149063_ 1))
                   (apply (lambda (_%stx148888%_)
                            (let ((_%detail148890%_ '#f))
                              (_%$%opt-lambda148880148885%_
                               _%stx148888%_
                               _%detail148890%_)))
                          _g149062_))
                  ((let () (declare (not safe)) (##fx= _g149063_ 2))
                   (apply _%$%opt-lambda148880148885%_ _g149062_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __compile-error
                    _g149062_)))))))
    (define __compile-ignore%
      (lambda (_%stx148879%_) (__SRC ''#!void _%stx148879%_)))
    (define __compile-begin%
      (lambda (_%stx148854%_)
        (let* ((_%$e148856%_ _%stx148854%_)
               (_%$%$E148858148864%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e148856%_))))
          (if (__AST-pair? _%$e148856%_)
              (let* ((_%$%$tgt148859148867%_ (__AST-e _%$e148856%_))
                     (_%$%$hd148860148870%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt148859148867%_)))
                     (_%$%$tl148861148873%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt148859148867%_)))
                     (_%body148877%_ _%$%$tl148861148873%_))
                (__SRC (cons 'begin (map __compile _%body148877%_))
                       _%stx148854%_))
              (_%$%$E148858148864%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx148829%_)
        (let* ((_%$e148831%_ _%stx148829%_)
               (_%$%$E148833148839%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e148831%_))))
          (if (__AST-pair? _%$e148831%_)
              (let* ((_%$%$tgt148834148842%_ (__AST-e _%$e148831%_))
                     (_%$%$hd148835148845%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt148834148842%_)))
                     (_%$%$tl148836148848%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt148834148842%_)))
                     (_%body148852%_ _%$%$tl148836148848%_))
                (__SRC (cons 'begin (__AST->datum _%body148852%_))
                       _%stx148829%_))
              (_%$%$E148833148839%_)))))
    (define __compile-import%
      (lambda (_%stx148804%_)
        (let* ((_%$e148806%_ _%stx148804%_)
               (_%$%$E148808148814%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e148806%_))))
          (if (__AST-pair? _%$e148806%_)
              (let* ((_%$%$tgt148809148817%_ (__AST-e _%$e148806%_))
                     (_%$%$hd148810148820%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt148809148817%_)))
                     (_%$%$tl148811148823%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt148809148817%_)))
                     (_%body148827%_ _%$%$tl148811148823%_))
                (__SRC (cons '__eval-import
                             (cons (cons 'quote (cons _%body148827%_ '()))
                                   '()))
                       _%stx148804%_))
              (_%$%$E148808148814%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx148751%_)
        (let* ((_%$e148753%_ _%stx148751%_)
               (_%$%$E148755148767%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e148753%_))))
          (if (__AST-pair? _%$e148753%_)
              (let* ((_%$%$tgt148756148770%_ (__AST-e _%$e148753%_))
                     (_%$%$hd148757148773%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt148756148770%_)))
                     (_%$%$tl148758148776%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt148756148770%_))))
                (if (__AST-pair? _%$%$tl148758148776%_)
                    (let* ((_%$%$tgt148759148780%_
                            (__AST-e _%$%$tl148758148776%_))
                           (_%$%$hd148760148783%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt148759148780%_)))
                           (_%$%$tl148761148786%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt148759148780%_)))
                           (_%ann148790%_ _%$%$hd148760148783%_))
                      (if (__AST-pair? _%$%$tl148761148786%_)
                          (let* ((_%$%$tgt148762148792%_
                                  (__AST-e _%$%$tl148761148786%_))
                                 (_%$%$hd148763148795%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt148762148792%_)))
                                 (_%$%$tl148764148798%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt148762148792%_)))
                                 (_%expr148802%_ _%$%$hd148763148795%_))
                            (if (equal? (__AST-e _%$%$tl148764148798%_) '())
                                (__compile _%expr148802%_)
                                (_%$%$E148755148767%_)))
                          (_%$%$E148755148767%_)))
                    (_%$%$E148755148767%_)))
              (_%$%$E148755148767%_)))))
    (define __compile-define-values%
      (lambda (_%stx148642%_)
        (let* ((_%$e148644%_ _%stx148642%_)
               (_%$%$E148646148658%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e148644%_))))
          (if (__AST-pair? _%$e148644%_)
              (let* ((_%$%$tgt148647148661%_ (__AST-e _%$e148644%_))
                     (_%$%$hd148648148664%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt148647148661%_)))
                     (_%$%$tl148649148667%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt148647148661%_))))
                (if (__AST-pair? _%$%$tl148649148667%_)
                    (let* ((_%$%$tgt148650148671%_
                            (__AST-e _%$%$tl148649148667%_))
                           (_%$%$hd148651148674%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt148650148671%_)))
                           (_%$%$tl148652148677%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt148650148671%_)))
                           (_%hd148681%_ _%$%$hd148651148674%_))
                      (if (__AST-pair? _%$%$tl148652148677%_)
                          (let* ((_%$%$tgt148653148683%_
                                  (__AST-e _%$%$tl148652148677%_))
                                 (_%$%$hd148654148686%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt148653148683%_)))
                                 (_%$%$tl148655148689%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt148653148683%_)))
                                 (_%expr148693%_ _%$%$hd148654148686%_))
                            (if (equal? (__AST-e _%$%$tl148655148689%_) '())
                                (let* ((_%$e148695%_ _%hd148681%_)
                                       (_%$%$E148697148738%_
                                        (lambda ()
                                          (let ((_%$%$E148698148723%_
                                                 (lambda ()
                                                   (let* ((_%$%$E148699148710%_
                                                           (lambda ()
                                                             (__raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; malformed ast clause"
                                                              _%$e148695%_)))
                                                          (_%ids148713%_
                                                           _%hd148681%_)
                                                          (_%len148715%_
                                                           (length _%ids148713%_))
                                                          (_%tmp148717%_
                                                           (__SRC (gensym))))
                                                     (__SRC (cons 'begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__SRC (cons 'define
                                             (cons _%tmp148717%_
                                                   (cons (__compile
                                                          _%expr148693%_)
                                                         '())))
                                       _%stx148642%_)
                                (cons (__SRC (cons '__check-values
                                                   (cons _%tmp148717%_
                                                         (cons _%len148715%_
                                                               '())))
                                             _%stx148642%_)
                                      (foldr cons
                                             '()
                                             (filter-map
                                              (lambda (_%id148720%_
                                                       _%k148721%_)
                                                (if (__AST-e _%id148720%_)
                                                    (__SRC (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (__SRC _%id148720%_)
                               (cons (cons '##values-ref
                                           (cons _%tmp148717%_
                                                 (cons _%k148721%_ '())))
                                     '())))
                   _%stx148642%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f))
                                              _%ids148713%_
                                              (iota _%len148715%_))))))
                    _%stx148642%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (__AST-pair? _%$e148695%_)
                                                (let* ((_%$%$tgt148700148726%_
                                                        (__AST-e _%$e148695%_))
                                                       (_%$%$hd148701148729%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt148700148726%_)))
                                                       (_%$%$tl148702148732%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt148700148726%_)))
                                                       (_%id148736%_
                                                        _%$%$hd148701148729%_))
                                                  (if (equal? (__AST-e _%$%$tl148702148732%_)
                                                              '())
                                                      (__SRC (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (__SRC _%id148736%_)
                                 (cons (__compile _%expr148693%_) '())))
                     _%stx148642%_)
              (_%$%$E148698148723%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E148698148723%_))))))
                                  (if (__AST-pair? _%$e148695%_)
                                      (let* ((_%$%$tgt148703148741%_
                                              (__AST-e _%$e148695%_))
                                             (_%$%$hd148704148744%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt148703148741%_)))
                                             (_%$%$tl148705148747%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt148703148741%_))))
                                        (if (equal? (__AST-e _%$%$hd148704148744%_)
                                                    '#f)
                                            (if (equal? (__AST-e _%$%$tl148705148747%_)
                                                        '())
                                                (__compile _%expr148693%_)
                                                (_%$%$E148697148738%_))
                                            (_%$%$E148697148738%_)))
                                      (_%$%$E148697148738%_)))
                                (_%$%$E148646148658%_)))
                          (_%$%$E148646148658%_)))
                    (_%$%$E148646148658%_)))
              (_%$%$E148646148658%_)))))
    (define __compile-head-id
      (lambda (_%e148640%_)
        (__SRC (if (__AST-e _%e148640%_) _%e148640%_ (gensym)))))
    (define __compile-lambda-head
      (lambda (_%hd148597%_)
        (let _%recur148599%_ ((_%rest148601%_ _%hd148597%_))
          (let* ((_%$e148603%_ _%rest148601%_)
                 (_%$%$E148605148623%_
                  (lambda ()
                    (let ((_%$%$E148606148620%_
                           (lambda ()
                             (let* ((_%$%$E148607148615%_
                                     (lambda ()
                                       (__raise-syntax-error
                                        '#f
                                        '"Bad syntax; malformed ast clause"
                                        _%$e148603%_)))
                                    (_%tail148618%_ _%$e148603%_))
                               (__compile-head-id _%tail148618%_)))))
                      (if (equal? (__AST-e _%$e148603%_) '())
                          '()
                          (_%$%$E148606148620%_))))))
            (if (__AST-pair? _%$e148603%_)
                (let* ((_%$%$tgt148608148626%_ (__AST-e _%$e148603%_))
                       (_%$%$hd148609148629%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt148608148626%_)))
                       (_%$%$tl148610148632%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt148608148626%_)))
                       (_%hd148636%_ _%$%$hd148609148629%_)
                       (_%rest148638%_ _%$%$tl148610148632%_))
                  (cons (__compile-head-id _%hd148636%_)
                        (_%recur148599%_ _%rest148638%_)))
                (_%$%$E148605148623%_))))))
    (define __compile-lambda%
      (lambda (_%stx148544%_)
        (let* ((_%$e148546%_ _%stx148544%_)
               (_%$%$E148548148560%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e148546%_))))
          (if (__AST-pair? _%$e148546%_)
              (let* ((_%$%$tgt148549148563%_ (__AST-e _%$e148546%_))
                     (_%$%$hd148550148566%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt148549148563%_)))
                     (_%$%$tl148551148569%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt148549148563%_))))
                (if (__AST-pair? _%$%$tl148551148569%_)
                    (let* ((_%$%$tgt148552148573%_
                            (__AST-e _%$%$tl148551148569%_))
                           (_%$%$hd148553148576%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt148552148573%_)))
                           (_%$%$tl148554148579%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt148552148573%_)))
                           (_%hd148583%_ _%$%$hd148553148576%_))
                      (if (__AST-pair? _%$%$tl148554148579%_)
                          (let* ((_%$%$tgt148555148585%_
                                  (__AST-e _%$%$tl148554148579%_))
                                 (_%$%$hd148556148588%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt148555148585%_)))
                                 (_%$%$tl148557148591%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt148555148585%_)))
                                 (_%body148595%_ _%$%$hd148556148588%_))
                            (if (equal? (__AST-e _%$%$tl148557148591%_) '())
                                (__SRC (cons 'lambda
                                             (cons (__compile-lambda-head
                                                    _%hd148583%_)
                                                   (cons (__compile
                                                          _%body148595%_)
                                                         '())))
                                       _%stx148544%_)
                                (_%$%$E148548148560%_)))
                          (_%$%$E148548148560%_)))
                    (_%$%$E148548148560%_)))
              (_%$%$E148548148560%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx148309%_)
        (letrec ((_%variadic?148311%_
                  (lambda (_%hd148509%_)
                    (let* ((_%$e148511%_ _%hd148509%_)
                           (_%$%$E148513148529%_
                            (lambda ()
                              (let ((_%$%$E148514148526%_
                                     (lambda ()
                                       (let ((_%$%$E148515148523%_
                                              (lambda ()
                                                (__raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; malformed ast clause"
                                                 _%$e148511%_))))
                                         '#t))))
                                (if (equal? (__AST-e _%$e148511%_) '())
                                    '#f
                                    (_%$%$E148514148526%_))))))
                      (if (__AST-pair? _%$e148511%_)
                          (let* ((_%$%$tgt148516148532%_
                                  (__AST-e _%$e148511%_))
                                 (_%$%$hd148517148535%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt148516148532%_)))
                                 (_%$%$tl148518148538%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt148516148532%_)))
                                 (_%rest148542%_ _%$%$tl148518148538%_))
                            (_%variadic?148311%_ _%rest148542%_))
                          (_%$%$E148513148529%_)))))
                 (_%arity148312%_
                  (lambda (_%hd148447%_)
                    (let _%lp148449%_ ((_%rest148451%_ _%hd148447%_)
                                       (_%k148452%_ '0))
                      (let* ((_%$e148454%_ _%rest148451%_)
                             (_%$%$E148456148467%_
                              (lambda ()
                                (let ((_%$%$E148457148464%_
                                       (lambda ()
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e148454%_))))
                                  _%k148452%_))))
                        (if (__AST-pair? _%$e148454%_)
                            (let* ((_%$%$tgt148458148470%_
                                    (__AST-e _%$e148454%_))
                                   (_%$%$hd148459148473%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt148458148470%_)))
                                   (_%$%$tl148460148476%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt148458148470%_)))
                                   (_%rest148480%_ _%$%$tl148460148476%_))
                              (_%lp148449%_
                               _%rest148480%_
                               (let ((_%x148482%_ _%k148452%_))
                                 (if (fixnum? _%x148482%_)
                                     (let ((_%x148487%_ _%x148482%_))
                                       (__fx1+ _%x148487%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x148482%_)
                                       (void))))))
                            (_%$%$E148456148467%_))))))
                 (_%generate148313%_
                  (lambda (_%rest148374%_ _%args148375%_ _%len148376%_)
                    (let* ((_%$e148378%_ _%rest148374%_)
                           (_%$%$E148380148391%_
                            (lambda ()
                              (let ((_%$%$E148381148388%_
                                     (lambda ()
                                       (__raise-syntax-error
                                        '#f
                                        '"Bad syntax; malformed ast clause"
                                        _%$e148378%_))))
                                (__SRC (cons 'error
                                             (cons '"No clause matching arguments"
                                                   (cons _%args148375%_ '())))
                                       _%stx148309%_)))))
                      (if (__AST-pair? _%$e148378%_)
                          (let* ((_%$%$tgt148382148394%_
                                  (__AST-e _%$e148378%_))
                                 (_%$%$hd148383148397%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt148382148394%_)))
                                 (_%$%$tl148384148400%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt148382148394%_)))
                                 (_%clause148404%_ _%$%$hd148383148397%_)
                                 (_%rest148406%_ _%$%$tl148384148400%_)
                                 (_%$e148408%_ _%clause148404%_)
                                 (_%$%$E148410148419%_
                                  (lambda ()
                                    (__raise-syntax-error
                                     '#f
                                     '"Bad syntax; malformed ast clause"
                                     _%$e148408%_))))
                            (if (__AST-pair? _%$e148408%_)
                                (let* ((_%$%$tgt148411148422%_
                                        (__AST-e _%$e148408%_))
                                       (_%$%$hd148412148425%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt148411148422%_)))
                                       (_%$%$tl148413148428%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt148411148422%_)))
                                       (_%hd148432%_ _%$%$hd148412148425%_))
                                  (if (__AST-pair? _%$%$tl148413148428%_)
                                      (let* ((_%$%$tgt148414148434%_
                                              (__AST-e _%$%$tl148413148428%_))
                                             (_%$%$hd148415148437%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt148414148434%_)))
                                             (_%$%$tl148416148440%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt148414148434%_))))
                                        (if (equal? (__AST-e _%$%$tl148416148440%_)
                                                    '())
                                            (let ((_%clen148444%_
                                                   (_%arity148312%_
                                                    _%hd148432%_))
                                                  (_%cmp148445%_
                                                   (if (_%variadic?148311%_
                                                        _%hd148432%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC (cons 'if
                                                           (cons (cons _%cmp148445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%len148376%_ (cons _%clen148444%_ '())))
                         (cons (__SRC (cons '##apply
                                            (cons (__compile-lambda%
                                                   (cons '%#lambda
                                                         _%clause148404%_))
                                                  (cons _%args148375%_ '())))
                                      _%stx148309%_)
                               (cons (_%generate148313%_
                                      _%rest148406%_
                                      _%args148375%_
                                      _%len148376%_)
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx148309%_))
                                            (_%$%$E148410148419%_)))
                                      (_%$%$E148410148419%_)))
                                (_%$%$E148410148419%_)))
                          (_%$%$E148380148391%_))))))
          (let* ((_%$e148315%_ _%stx148309%_)
                 (_%$%$E148317148349%_
                  (lambda ()
                    (let ((_%$%$E148318148331%_
                           (lambda ()
                             (__raise-syntax-error
                              '#f
                              '"Bad syntax; malformed ast clause"
                              _%$e148315%_))))
                      (if (__AST-pair? _%$e148315%_)
                          (let* ((_%$%$tgt148319148334%_
                                  (__AST-e _%$e148315%_))
                                 (_%$%$hd148320148337%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt148319148334%_)))
                                 (_%$%$tl148321148340%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt148319148334%_)))
                                 (_%clauses148344%_ _%$%$tl148321148340%_))
                            (let ((_%args148346%_
                                   (__SRC (gensym) _%stx148309%_))
                                  (_%len148347%_
                                   (__SRC (gensym) _%stx148309%_)))
                              (__SRC (cons 'lambda
                                           (cons _%args148346%_
                                                 (cons (__SRC (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons _%len148347%_
                                              (cons (__SRC (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%args148346%_ '()))
                   _%stx148309%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (_%generate148313%_
                                         _%clauses148344%_
                                         _%args148346%_
                                         _%len148347%_)
                                        '())))
                      _%stx148309%_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%stx148309%_)))
                          (_%$%$E148318148331%_))))))
            (if (__AST-pair? _%$e148315%_)
                (let* ((_%$%$tgt148322148352%_ (__AST-e _%$e148315%_))
                       (_%$%$hd148323148355%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt148322148352%_)))
                       (_%$%$tl148324148358%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt148322148352%_))))
                  (if (__AST-pair? _%$%$tl148324148358%_)
                      (let* ((_%$%$tgt148325148362%_
                              (__AST-e _%$%$tl148324148358%_))
                             (_%$%$hd148326148365%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt148325148362%_)))
                             (_%$%$tl148327148368%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt148325148362%_)))
                             (_%clause148372%_ _%$%$hd148326148365%_))
                        (if (equal? (__AST-e _%$%$tl148327148368%_) '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause148372%_))
                            (_%$%$E148317148349%_)))
                      (_%$%$E148317148349%_)))
                (_%$%$E148317148349%_))))))
    (define __compile-let-form
      (lambda (_%stx148078%_ _%compile-simple148079%_ _%compile-values148080%_)
        (letrec ((_%simple-bind?148082%_
                  (lambda (_%hd148267%_)
                    (let* ((_%$%hd148268148278%_ _%hd148267%_)
                           (_%$%E148272148282%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%hd148268148278%_
                                     '([id])
                                     '(#f)
                                     'else)
                              (void)))
                           (_%$%else148271148286%_ (lambda () '#f))
                           (_%$%try-match148270148294%_
                            (lambda ()
                              (let ((_%$%K148273148291%_ (lambda () '#t)))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd148268148278%_ '#f))
                                    (_%$%K148273148291%_)
                                    (_%$%else148271148286%_)))))
                           (_%$%K148274148299%_ (lambda (_%id148297%_) '#t)))
                      (if (pair? _%$%hd148268148278%_)
                          (let ((_%$%hd148275148302%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd148268148278%_)))
                                (_%$%tl148276148304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd148268148278%_))))
                            (let ((_%id148307%_ _%$%hd148275148302%_))
                              (if (null? _%$%tl148276148304%_)
                                  (_%$%K148274148299%_ _%id148307%_)
                                  (_%$%try-match148270148294%_))))
                          (_%$%try-match148270148294%_)))))
                 (_%car-e148083%_
                  (lambda (_%hd148265%_)
                    (if (pair? _%hd148265%_)
                        (car _%hd148265%_)
                        _%hd148265%_))))
          (let* ((_%$e148085%_ _%stx148078%_)
                 (_%$%$E148087148230%_
                  (lambda ()
                    (let ((_%$%$E148088148110%_
                           (lambda ()
                             (__raise-syntax-error
                              '#f
                              '"Bad syntax; malformed ast clause"
                              _%$e148085%_))))
                      (if (__AST-pair? _%$e148085%_)
                          (let* ((_%$%$tgt148089148113%_
                                  (__AST-e _%$e148085%_))
                                 (_%$%$hd148090148116%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt148089148113%_)))
                                 (_%$%$tl148091148119%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt148089148113%_))))
                            (if (__AST-pair? _%$%$tl148091148119%_)
                                (let* ((_%$%$tgt148092148123%_
                                        (__AST-e _%$%$tl148091148119%_))
                                       (_%$%$hd148093148126%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt148092148123%_)))
                                       (_%$%$tl148094148129%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt148092148123%_)))
                                       (_%hd148133%_ _%$%$hd148093148126%_))
                                  (if (__AST-pair? _%$%$tl148094148129%_)
                                      (let* ((_%$%$tgt148095148135%_
                                              (__AST-e _%$%$tl148094148129%_))
                                             (_%$%$hd148096148138%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt148095148135%_)))
                                             (_%$%$tl148097148141%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt148095148135%_)))
                                             (_%body148145%_
                                              _%$%$hd148096148138%_))
                                        (if (equal? (__AST-e _%$%$tl148097148141%_)
                                                    '())
                                            (let* ((_%hd-ids148185%_
                                                    (map (lambda (_%bind148147%_)
                                                           (let* ((_%$e148149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind148147%_)
                          (_%$%$E148151148160%_
                           (lambda ()
                             (__raise-syntax-error
                              '#f
                              '"Bad syntax; malformed ast clause"
                              _%$e148149%_))))
                     (if (__AST-pair? _%$e148149%_)
                         (let* ((_%$%$tgt148152148163%_ (__AST-e _%$e148149%_))
                                (_%$%$hd148153148166%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt148152148163%_)))
                                (_%$%$tl148154148169%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt148152148163%_)))
                                (_%ids148173%_ _%$%$hd148153148166%_))
                           (if (__AST-pair? _%$%$tl148154148169%_)
                               (let* ((_%$%$tgt148155148175%_
                                       (__AST-e _%$%$tl148154148169%_))
                                      (_%$%$hd148156148178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt148155148175%_)))
                                      (_%$%$tl148157148181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt148155148175%_))))
                                 (if (equal? (__AST-e _%$%$tl148157148181%_)
                                             '())
                                     _%ids148173%_
                                     (_%$%$E148151148160%_)))
                               (_%$%$E148151148160%_)))
                         (_%$%$E148151148160%_))))
                 _%hd148133%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs148225%_
                                                    (map (lambda (_%bind148187%_)
                                                           (let* ((_%$e148189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind148187%_)
                          (_%$%$E148191148200%_
                           (lambda ()
                             (__raise-syntax-error
                              '#f
                              '"Bad syntax; malformed ast clause"
                              _%$e148189%_))))
                     (if (__AST-pair? _%$e148189%_)
                         (let* ((_%$%$tgt148192148203%_ (__AST-e _%$e148189%_))
                                (_%$%$hd148193148206%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt148192148203%_)))
                                (_%$%$tl148194148209%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt148192148203%_))))
                           (if (__AST-pair? _%$%$tl148194148209%_)
                               (let* ((_%$%$tgt148195148213%_
                                       (__AST-e _%$%$tl148194148209%_))
                                      (_%$%$hd148196148216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt148195148213%_)))
                                      (_%$%$tl148197148219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt148195148213%_)))
                                      (_%expr148223%_ _%$%$hd148196148216%_))
                                 (if (equal? (__AST-e _%$%$tl148197148219%_)
                                             '())
                                     (__compile _%expr148223%_)
                                     (_%$%$E148191148200%_)))
                               (_%$%$E148191148200%_)))
                         (_%$%$E148191148200%_))))
                 _%hd148133%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body148227%_
                                                    (__compile
                                                     _%body148145%_)))
                                              (if (andmap _%simple-bind?148082%_
                                                          _%hd-ids148185%_)
                                                  (_%compile-simple148079%_
                                                   (map _%car-e148083%_
                                                        _%hd-ids148185%_)
                                                   _%exprs148225%_
                                                   _%body148227%_)
                                                  (_%compile-values148080%_
                                                   _%hd-ids148185%_
                                                   _%exprs148225%_
                                                   _%body148227%_)))
                                            (_%$%$E148088148110%_)))
                                      (_%$%$E148088148110%_)))
                                (_%$%$E148088148110%_)))
                          (_%$%$E148088148110%_))))))
            (if (__AST-pair? _%$e148085%_)
                (let* ((_%$%$tgt148098148233%_ (__AST-e _%$e148085%_))
                       (_%$%$hd148099148236%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt148098148233%_)))
                       (_%$%$tl148100148239%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt148098148233%_))))
                  (if (__AST-pair? _%$%$tl148100148239%_)
                      (let* ((_%$%$tgt148101148243%_
                              (__AST-e _%$%$tl148100148239%_))
                             (_%$%$hd148102148246%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt148101148243%_)))
                             (_%$%$tl148103148249%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt148101148243%_))))
                        (if (equal? (__AST-e _%$%$hd148102148246%_) '())
                            (if (__AST-pair? _%$%$tl148103148249%_)
                                (let* ((_%$%$tgt148104148253%_
                                        (__AST-e _%$%$tl148103148249%_))
                                       (_%$%$hd148105148256%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt148104148253%_)))
                                       (_%$%$tl148106148259%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt148104148253%_)))
                                       (_%body148263%_ _%$%$hd148105148256%_))
                                  (if (equal? (__AST-e _%$%$tl148106148259%_)
                                              '())
                                      (__compile _%body148263%_)
                                      (_%$%$E148087148230%_)))
                                (_%$%$E148087148230%_))
                            (_%$%$E148087148230%_)))
                      (_%$%$E148087148230%_)))
                (_%$%$E148087148230%_))))))
    (define __compile-let-values%
      (lambda (_%stx147890%_)
        (letrec ((_%compile-simple147892%_
                  (lambda (_%hd-ids148074%_ _%exprs148075%_ _%body148076%_)
                    (__SRC (cons 'let
                                 (cons (map list
                                            (map __compile-head-id
                                                 _%hd-ids148074%_)
                                            _%exprs148075%_)
                                       (cons _%body148076%_ '())))
                           _%stx147890%_)))
                 (_%compile-values147893%_
                  (lambda (_%hd-ids147989%_ _%exprs147990%_ _%body147991%_)
                    (let _%lp147993%_ ((_%rest147995%_ _%hd-ids147989%_)
                                       (_%exprs147996%_ _%exprs147990%_)
                                       (_%bind147997%_ '())
                                       (_%post147998%_ '()))
                      (let* ((_%$%rest147999148013%_ _%rest147995%_)
                             (_%$%E148003148017%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest147999148013%_
                                       '([[id] . rest])
                                       '([hd . rest])
                                       'else)
                                (void)))
                             (_%$%else148002148021%_
                              (lambda ()
                                (__SRC (cons 'let
                                             (cons (reverse _%bind147997%_)
                                                   (cons (_%compile-post147894%_
                                                          _%post147998%_
                                                          _%body147991%_)
                                                         '())))
                                       _%stx147890%_)))
                             (_%$%try-match148001148051%_
                              (lambda ()
                                (let ((_%$%K148004148039%_
                                       (lambda (_%rest148025%_ _%hd148026%_)
                                         (if (__AST-id? _%hd148026%_)
                                             (_%lp147993%_
                                              _%rest148025%_
                                              (cdr _%exprs147996%_)
                                              (cons (cons (__compile-head-id
                                                           _%hd148026%_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs147996%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind147997%_)
                                              _%post147998%_)
                                             (if (list? _%hd148026%_)
                                                 (let* ((_%len148030%_
                                                         (length _%hd148026%_))
                                                        (_%tmp148032%_
                                                         (__SRC (gensym))))
                                                   (_%lp147993%_
                                                    _%rest148025%_
                                                    (cdr _%exprs147996%_)
                                                    (cons (cons _%tmp148032%_
                                                                (cons (car _%exprs147996%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind147997%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons* _%tmp148032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%len148030%_
                         (filter-map
                          (lambda (_%id148035%_ _%k148036%_)
                            (if (__AST-e _%id148035%_)
                                (cons (__SRC _%id148035%_) _%k148036%_)
                                '#f))
                          _%hd148026%_
                          (iota _%len148030%_)))
                  _%post147998%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__compile-error
                                                  _%stx147890%_
                                                  _%hd148026%_))))))
                                  (if (pair? _%$%rest147999148013%_)
                                      (let ((_%$%hd148005148042%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%rest147999148013%_)))
                                            (_%$%tl148006148044%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%rest147999148013%_))))
                                        (let* ((_%hd148047%_
                                                _%$%hd148005148042%_)
                                               (_%rest148049%_
                                                _%$%tl148006148044%_))
                                          (_%$%K148004148039%_
                                           _%rest148049%_
                                           _%hd148047%_)))
                                      (_%$%else148002148021%_)))))
                             (_%$%K148007148057%_
                              (lambda (_%rest148054%_ _%id148055%_)
                                (_%lp147993%_
                                 _%rest148054%_
                                 (cdr _%exprs147996%_)
                                 (cons (cons (__compile-head-id _%id148055%_)
                                             (cons (car _%exprs147996%_) '()))
                                       _%bind147997%_)
                                 _%post147998%_))))
                        (if (pair? _%$%rest147999148013%_)
                            (let ((_%$%hd148008148060%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest147999148013%_)))
                                  (_%$%tl148009148062%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest147999148013%_))))
                              (if (pair? _%$%hd148008148060%_)
                                  (let ((_%$%hd148010148065%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd148008148060%_)))
                                        (_%$%tl148011148067%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd148008148060%_))))
                                    (let ((_%id148070%_ _%$%hd148010148065%_))
                                      (if (null? _%$%tl148011148067%_)
                                          (let ((_%rest148072%_
                                                 _%$%tl148009148062%_))
                                            (_%$%K148007148057%_
                                             _%rest148072%_
                                             _%id148070%_))
                                          (_%$%try-match148001148051%_))))
                                  (_%$%try-match148001148051%_)))
                            (_%$%try-match148001148051%_))))))
                 (_%compile-post147894%_
                  (lambda (_%post147896%_ _%body147897%_)
                    (let _%lp147899%_ ((_%rest147901%_ _%post147896%_)
                                       (_%check147902%_ '())
                                       (_%bind147903%_ '()))
                      (let* ((_%$%rest147904147916%_ _%rest147901%_)
                             (_%$%E147907147920%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest147904147916%_
                                       '([[tmp len . init] . rest])
                                       'else)
                                (void)))
                             (_%$%else147906147924%_
                              (lambda ()
                                (__SRC (cons 'begin
                                             (foldr cons
                                                    (cons (__SRC (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%bind147903%_ (cons _%body147897%_ '())))
                         _%stx147890%_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%check147902%_))
                                       _%stx147890%_)))
                             (_%$%K147908147963%_
                              (lambda (_%rest147927%_
                                       _%init147928%_
                                       _%len147929%_
                                       _%tmp147930%_)
                                (_%lp147899%_
                                 _%rest147927%_
                                 (cons (__SRC (cons '__check-values
                                                    (cons _%tmp147930%_
                                                          (cons _%len147929%_
                                                                '())))
                                              _%stx147890%_)
                                       _%check147902%_)
                                 (foldr (lambda (_%hd147932%_ _%r147933%_)
                                          (let* ((_%$%hd147934147941%_
                                                  _%hd147932%_)
                                                 (_%$%E147936147945%_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _%$%hd147934147941%_
                                                           '([id . k]))
                                                    (void)))
                                                 (_%$%K147937147951%_
                                                  (lambda (_%k147948%_
                                                           _%id147949%_)
                                                    (cons (cons _%id147949%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp147930%_
                                          (cons _%k147948%_ '())))
                              '()))
                  _%r147933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd147934147941%_)
                                                (let ((_%$%hd147938147954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd147934147941%_)))
                                                      (_%$%tl147939147956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd147934147941%_))))
                                                  (let* ((_%id147959%_
                                                          _%$%hd147938147954%_)
                                                         (_%k147961%_
                                                          _%$%tl147939147956%_))
                                                    (_%$%K147937147951%_
                                                     _%k147961%_
                                                     _%id147959%_)))
                                                (_%$%E147936147945%_))))
                                        _%bind147903%_
                                        _%init147928%_)))))
                        (if (pair? _%$%rest147904147916%_)
                            (let ((_%$%hd147909147966%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest147904147916%_)))
                                  (_%$%tl147910147968%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest147904147916%_))))
                              (if (pair? _%$%hd147909147966%_)
                                  (let ((_%$%hd147911147971%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd147909147966%_)))
                                        (_%$%tl147912147973%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd147909147966%_))))
                                    (let ((_%tmp147976%_ _%$%hd147911147971%_))
                                      (if (pair? _%$%tl147912147973%_)
                                          (let ((_%$%hd147913147978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl147912147973%_)))
                                                (_%$%tl147914147980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl147912147973%_))))
                                            (let* ((_%len147983%_
                                                    _%$%hd147913147978%_)
                                                   (_%init147985%_
                                                    _%$%tl147914147980%_)
                                                   (_%rest147987%_
                                                    _%$%tl147910147968%_))
                                              (_%$%K147908147963%_
                                               _%rest147987%_
                                               _%init147985%_
                                               _%len147983%_
                                               _%tmp147976%_)))
                                          (_%$%else147906147924%_))))
                                  (_%$%else147906147924%_)))
                            (_%$%else147906147924%_)))))))
          (__compile-let-form
           _%stx147890%_
           _%compile-simple147892%_
           _%compile-values147893%_))))
    (define __compile-letrec-values%
      (lambda (_%stx147687%_)
        (letrec ((_%compile-simple147689%_
                  (lambda (_%hd-ids147886%_ _%exprs147887%_ _%body147888%_)
                    (__SRC (cons 'letrec
                                 (cons (map list
                                            (map __compile-head-id
                                                 _%hd-ids147886%_)
                                            _%exprs147887%_)
                                       (cons _%body147888%_ '())))
                           _%stx147687%_)))
                 (_%compile-values147690%_
                  (lambda (_%hd-ids147797%_ _%exprs147798%_ _%body147799%_)
                    (let _%lp147801%_ ((_%rest147803%_ _%hd-ids147797%_)
                                       (_%exprs147804%_ _%exprs147798%_)
                                       (_%pre147805%_ '())
                                       (_%bind147806%_ '())
                                       (_%post147807%_ '()))
                      (let* ((_%$%rest147808147822%_ _%rest147803%_)
                             (_%$%E147812147826%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest147808147822%_
                                       '([[id] . rest])
                                       '([hd . rest])
                                       'else)
                                (void)))
                             (_%$%else147811147830%_
                              (lambda ()
                                (_%compile-inner147691%_
                                 _%pre147805%_
                                 _%bind147806%_
                                 _%post147807%_
                                 _%body147799%_)))
                             (_%$%try-match147810147863%_
                              (lambda ()
                                (let ((_%$%K147813147851%_
                                       (lambda (_%rest147834%_ _%hd147835%_)
                                         (if (__AST-id? _%hd147835%_)
                                             (_%lp147801%_
                                              _%rest147834%_
                                              (cdr _%exprs147804%_)
                                              _%pre147805%_
                                              (cons (cons (__compile-head-id
                                                           _%hd147835%_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs147804%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind147806%_)
                                              _%post147807%_)
                                             (if (list? _%hd147835%_)
                                                 (let* ((_%len147839%_
                                                         (length _%hd147835%_))
                                                        (_%tmp147841%_
                                                         (__SRC (gensym))))
                                                   (_%lp147801%_
                                                    _%rest147834%_
                                                    (cdr _%exprs147804%_)
                                                    (foldl (lambda (_%id147844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r147845%_)
                     (if (__AST-e _%id147844%_)
                         (cons (cons (__SRC _%id147844%_)
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _%r147845%_)
                         _%r147845%_))
                   _%pre147805%_
                   _%hd147835%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%tmp147841%_
                                                                (cons (car _%exprs147804%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind147806%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons* _%tmp147841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%len147839%_
                         (filter-map
                          (lambda (_%id147847%_ _%k147848%_)
                            (if (__AST-e _%id147847%_)
                                (cons (__SRC _%id147847%_) _%k147848%_)
                                '#f))
                          _%hd147835%_
                          (iota _%len147839%_)))
                  _%post147807%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__compile-error
                                                  _%stx147687%_
                                                  _%hd147835%_))))))
                                  (if (pair? _%$%rest147808147822%_)
                                      (let ((_%$%hd147814147854%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%rest147808147822%_)))
                                            (_%$%tl147815147856%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%rest147808147822%_))))
                                        (let* ((_%hd147859%_
                                                _%$%hd147814147854%_)
                                               (_%rest147861%_
                                                _%$%tl147815147856%_))
                                          (_%$%K147813147851%_
                                           _%rest147861%_
                                           _%hd147859%_)))
                                      (_%$%else147811147830%_)))))
                             (_%$%K147816147869%_
                              (lambda (_%rest147866%_ _%id147867%_)
                                (_%lp147801%_
                                 _%rest147866%_
                                 (cdr _%exprs147804%_)
                                 _%pre147805%_
                                 (cons (cons (__compile-head-id _%id147867%_)
                                             (cons (car _%exprs147804%_) '()))
                                       _%bind147806%_)
                                 _%post147807%_))))
                        (if (pair? _%$%rest147808147822%_)
                            (let ((_%$%hd147817147872%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest147808147822%_)))
                                  (_%$%tl147818147874%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest147808147822%_))))
                              (if (pair? _%$%hd147817147872%_)
                                  (let ((_%$%hd147819147877%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd147817147872%_)))
                                        (_%$%tl147820147879%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd147817147872%_))))
                                    (let ((_%id147882%_ _%$%hd147819147877%_))
                                      (if (null? _%$%tl147820147879%_)
                                          (let ((_%rest147884%_
                                                 _%$%tl147818147874%_))
                                            (_%$%K147816147869%_
                                             _%rest147884%_
                                             _%id147882%_))
                                          (_%$%try-match147810147863%_))))
                                  (_%$%try-match147810147863%_)))
                            (_%$%try-match147810147863%_))))))
                 (_%compile-inner147691%_
                  (lambda (_%pre147792%_
                           _%bind147793%_
                           _%post147794%_
                           _%body147795%_)
                    (if (null? _%pre147792%_)
                        (_%compile-bind147692%_
                         _%bind147793%_
                         _%post147794%_
                         _%body147795%_)
                        (__SRC (cons 'let
                                     (cons (reverse _%pre147792%_)
                                           (cons (_%compile-bind147692%_
                                                  _%bind147793%_
                                                  _%post147794%_
                                                  _%body147795%_)
                                                 '())))
                               _%stx147687%_))))
                 (_%compile-bind147692%_
                  (lambda (_%bind147788%_ _%post147789%_ _%body147790%_)
                    (__SRC (cons 'letrec
                                 (cons (reverse _%bind147788%_)
                                       (cons (_%compile-post147693%_
                                              _%post147789%_
                                              _%body147790%_)
                                             '())))
                           _%stx147687%_)))
                 (_%compile-post147693%_
                  (lambda (_%post147695%_ _%body147696%_)
                    (let _%lp147698%_ ((_%rest147700%_ _%post147695%_)
                                       (_%check147701%_ '())
                                       (_%bind147702%_ '()))
                      (let* ((_%$%rest147703147715%_ _%rest147700%_)
                             (_%$%E147706147719%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest147703147715%_
                                       '([[tmp len . init] . rest])
                                       'else)
                                (void)))
                             (_%$%else147705147723%_
                              (lambda ()
                                (__SRC (cons 'begin
                                             (foldr cons
                                                    (foldr cons
                                                           (cons _%body147696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   _%bind147702%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%check147701%_))
                                       _%stx147687%_)))
                             (_%$%K147707147762%_
                              (lambda (_%rest147726%_
                                       _%init147727%_
                                       _%len147728%_
                                       _%tmp147729%_)
                                (_%lp147698%_
                                 _%rest147726%_
                                 (cons (__SRC (cons '__check-values
                                                    (cons _%tmp147729%_
                                                          (cons _%len147728%_
                                                                '())))
                                              _%stx147687%_)
                                       _%check147701%_)
                                 (foldr (lambda (_%hd147731%_ _%r147732%_)
                                          (let* ((_%$%hd147733147740%_
                                                  _%hd147731%_)
                                                 (_%$%E147735147744%_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _%$%hd147733147740%_
                                                           '([id . k]))
                                                    (void)))
                                                 (_%$%K147736147750%_
                                                  (lambda (_%k147747%_
                                                           _%id147748%_)
                                                    (cons (cons 'set!
                                                                (cons _%id147748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp147729%_
                                                (cons _%k147747%_ '())))
                                    '())))
                  _%r147732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd147733147740%_)
                                                (let ((_%$%hd147737147753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd147733147740%_)))
                                                      (_%$%tl147738147755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd147733147740%_))))
                                                  (let* ((_%id147758%_
                                                          _%$%hd147737147753%_)
                                                         (_%k147760%_
                                                          _%$%tl147738147755%_))
                                                    (_%$%K147736147750%_
                                                     _%k147760%_
                                                     _%id147758%_)))
                                                (_%$%E147735147744%_))))
                                        _%bind147702%_
                                        _%init147727%_)))))
                        (if (pair? _%$%rest147703147715%_)
                            (let ((_%$%hd147708147765%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest147703147715%_)))
                                  (_%$%tl147709147767%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest147703147715%_))))
                              (if (pair? _%$%hd147708147765%_)
                                  (let ((_%$%hd147710147770%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd147708147765%_)))
                                        (_%$%tl147711147772%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd147708147765%_))))
                                    (let ((_%tmp147775%_ _%$%hd147710147770%_))
                                      (if (pair? _%$%tl147711147772%_)
                                          (let ((_%$%hd147712147777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl147711147772%_)))
                                                (_%$%tl147713147779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl147711147772%_))))
                                            (let* ((_%len147782%_
                                                    _%$%hd147712147777%_)
                                                   (_%init147784%_
                                                    _%$%tl147713147779%_)
                                                   (_%rest147786%_
                                                    _%$%tl147709147767%_))
                                              (_%$%K147707147762%_
                                               _%rest147786%_
                                               _%init147784%_
                                               _%len147782%_
                                               _%tmp147775%_)))
                                          (_%$%else147705147723%_))))
                                  (_%$%else147705147723%_)))
                            (_%$%else147705147723%_)))))))
          (__compile-let-form
           _%stx147687%_
           _%compile-simple147689%_
           _%compile-values147690%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx147438%_)
        (letrec ((_%compile-simple147440%_
                  (lambda (_%hd-ids147683%_ _%exprs147684%_ _%body147685%_)
                    (__SRC (cons 'letrec*
                                 (cons (map list
                                            (map __compile-head-id
                                                 _%hd-ids147683%_)
                                            _%exprs147684%_)
                                       (cons _%body147685%_ '())))
                           _%stx147438%_)))
                 (_%compile-values147441%_
                  (lambda (_%hd-ids147590%_ _%exprs147591%_ _%body147592%_)
                    (let _%lp147594%_ ((_%rest147596%_ _%hd-ids147590%_)
                                       (_%exprs147597%_ _%exprs147591%_)
                                       (_%bind147598%_ '())
                                       (_%post147599%_ '()))
                      (let* ((_%$%rest147600147614%_ _%rest147596%_)
                             (_%$%E147604147618%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest147600147614%_
                                       '([[hd] . rest])
                                       '([hd . rest])
                                       'else)
                                (void)))
                             (_%$%else147603147622%_
                              (lambda ()
                                (_%compile-bind147442%_
                                 _%bind147598%_
                                 _%post147599%_
                                 _%body147592%_)))
                             (_%$%try-match147602147658%_
                              (lambda ()
                                (let ((_%$%K147605147646%_
                                       (lambda (_%rest147626%_ _%hd147627%_)
                                         (if (__AST-id? _%hd147627%_)
                                             (let ((_%id147630%_
                                                    (__SRC _%hd147627%_)))
                                               (_%lp147594%_
                                                _%rest147626%_
                                                (cdr _%exprs147597%_)
                                                (cons (cons _%id147630%_
                                                            (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons '#!void '()))
                          '()))
              _%bind147598%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _%id147630%_
                                                            (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (car _%exprs147597%_) '()))
                          '()))
              _%post147599%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (not (__AST-e _%hd147627%_))
                                                 (_%lp147594%_
                                                  _%rest147626%_
                                                  (cdr _%exprs147597%_)
                                                  _%bind147598%_
                                                  (cons (cons '#f
                                                              (cons (car _%exprs147597%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%post147599%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (list? _%hd147627%_)
                                                     (let* ((_%len147634%_
                                                             (length _%hd147627%_))
                                                            (_%tmp147636%_
                                                             (__SRC (gensym))))
                                                       (_%lp147594%_
                                                        _%rest147626%_
                                                        (cdr _%exprs147597%_)
                                                        (foldl (lambda (_%id147639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%r147640%_)
                         (if (__AST-e _%id147639%_)
                             (cons (cons (__SRC _%id147639%_)
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _%r147640%_)
                             _%r147640%_))
                       _%bind147598%_
                       _%hd147627%_)
                (cons (cons* _%tmp147636%_
                             (car _%exprs147597%_)
                             _%len147634%_
                             (filter-map
                              (lambda (_%id147642%_ _%k147643%_)
                                (if (__AST-e _%id147642%_)
                                    (cons (__SRC _%id147642%_) _%k147643%_)
                                    '#f))
                              _%hd147627%_
                              (iota _%len147634%_)))
                      _%post147599%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__compile-error
                                                      _%stx147438%_
                                                      _%hd147627%_)))))))
                                  (if (pair? _%$%rest147600147614%_)
                                      (let ((_%$%hd147606147649%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%rest147600147614%_)))
                                            (_%$%tl147607147651%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%rest147600147614%_))))
                                        (let* ((_%hd147654%_
                                                _%$%hd147606147649%_)
                                               (_%rest147656%_
                                                _%$%tl147607147651%_))
                                          (_%$%K147605147646%_
                                           _%rest147656%_
                                           _%hd147654%_)))
                                      (_%$%else147603147622%_)))))
                             (_%$%K147608147666%_
                              (lambda (_%rest147661%_ _%hd147662%_)
                                (if (__AST-id? _%hd147662%_)
                                    (let ((_%id147664%_ (__SRC _%hd147662%_)))
                                      (_%lp147594%_
                                       _%rest147661%_
                                       (cdr _%exprs147597%_)
                                       (cons (cons _%id147664%_
                                                   (cons (cons 'quote
                                                               (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%bind147598%_)
                                       (cons (cons _%id147664%_
                                                   (cons (car _%exprs147597%_)
                                                         '()))
                                             _%post147599%_)))
                                    (_%lp147594%_
                                     _%rest147661%_
                                     (cdr _%exprs147597%_)
                                     _%bind147598%_
                                     (cons (cons '#f
                                                 (cons (car _%exprs147597%_)
                                                       '()))
                                           _%post147599%_))))))
                        (if (pair? _%$%rest147600147614%_)
                            (let ((_%$%hd147609147669%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest147600147614%_)))
                                  (_%$%tl147610147671%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest147600147614%_))))
                              (if (pair? _%$%hd147609147669%_)
                                  (let ((_%$%hd147611147674%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd147609147669%_)))
                                        (_%$%tl147612147676%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd147609147669%_))))
                                    (let ((_%hd147679%_ _%$%hd147611147674%_))
                                      (if (null? _%$%tl147612147676%_)
                                          (let ((_%rest147681%_
                                                 _%$%tl147610147671%_))
                                            (_%$%K147608147666%_
                                             _%rest147681%_
                                             _%hd147679%_))
                                          (_%$%try-match147602147658%_))))
                                  (_%$%try-match147602147658%_)))
                            (_%$%try-match147602147658%_))))))
                 (_%compile-bind147442%_
                  (lambda (_%bind147586%_ _%post147587%_ _%body147588%_)
                    (__SRC (cons 'let
                                 (cons (reverse _%bind147586%_)
                                       (cons (_%compile-post147443%_
                                              _%post147587%_
                                              _%body147588%_)
                                             '())))
                           _%stx147438%_)))
                 (_%compile-post147443%_
                  (lambda (_%post147445%_ _%body147446%_)
                    (__SRC (cons 'begin
                                 (foldr cons
                                        '()
                                        (foldl (lambda (_%hd147448%_
                                                        _%r147449%_)
                                                 (let* ((_%$%hd147450147473%_
                                                         _%hd147448%_)
                                                        (_%$%E147454147477%_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%hd147450147473%_
                          '([#f expr])
                          '([id expr])
                          '([tmp expr len . init]))
                   (void)))
                (_%$%try-match147453147542%_
                 (lambda ()
                   (let ((_%$%K147455147516%_
                          (lambda (_%init147481%_
                                   _%len147482%_
                                   _%expr147483%_
                                   _%tmp147484%_)
                            (cons (__SRC (cons 'let
                                               (cons (cons (cons _%tmp147484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr147483%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (__SRC (cons '__check-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%tmp147484%_ (cons _%len147482%_ '())))
                          _%stx147438%_)
                   (foldr cons
                          '()
                          (map (lambda (_%hd147486%_)
                                 (let* ((_%$%hd147487147494%_ _%hd147486%_)
                                        (_%$%E147489147498%_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _%$%hd147487147494%_
                                                  '([id . k]))
                                           (void)))
                                        (_%$%K147490147504%_
                                         (lambda (_%k147501%_ _%id147502%_)
                                           (__SRC (cons 'set!
                                                        (cons _%id147502%_
                                                              (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%tmp147484%_ (cons _%k147501%_ '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx147438%_))))
                                   (if (pair? _%$%hd147487147494%_)
                                       (let ((_%$%hd147491147507%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%hd147487147494%_)))
                                             (_%$%tl147492147509%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%hd147487147494%_))))
                                         (let* ((_%id147512%_
                                                 _%$%hd147491147507%_)
                                                (_%k147514%_
                                                 _%$%tl147492147509%_))
                                           (_%$%K147490147504%_
                                            _%k147514%_
                                            _%id147512%_)))
                                       (_%$%E147489147498%_))))
                               _%init147481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%stx147438%_)
                                  _%r147449%_))))
                     (if (pair? _%$%hd147450147473%_)
                         (let ((_%$%hd147456147519%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%hd147450147473%_)))
                               (_%$%tl147457147521%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%hd147450147473%_))))
                           (let ((_%tmp147524%_ _%$%hd147456147519%_))
                             (if (pair? _%$%tl147457147521%_)
                                 (let ((_%$%hd147458147526%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl147457147521%_)))
                                       (_%$%tl147459147528%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl147457147521%_))))
                                   (let ((_%expr147531%_ _%$%hd147458147526%_))
                                     (if (pair? _%$%tl147459147528%_)
                                         (let ((_%$%hd147460147533%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%tl147459147528%_)))
                                               (_%$%tl147461147535%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%tl147459147528%_))))
                                           (let* ((_%len147538%_
                                                   _%$%hd147460147533%_)
                                                  (_%init147540%_
                                                   _%$%tl147461147535%_))
                                             (_%$%K147455147516%_
                                              _%init147540%_
                                              _%len147538%_
                                              _%expr147531%_
                                              _%tmp147524%_)))
                                         (_%$%E147454147477%_))))
                                 (_%$%E147454147477%_))))
                         (_%$%E147454147477%_)))))
                (_%$%try-match147452147566%_
                 (lambda ()
                   (let ((_%$%K147462147549%_
                          (lambda (_%expr147546%_ _%id147547%_)
                            (cons (__SRC (cons 'set!
                                               (cons _%id147547%_
                                                     (cons _%expr147546%_
                                                           '())))
                                         _%stx147438%_)
                                  _%r147449%_))))
                     (if (pair? _%$%hd147450147473%_)
                         (let ((_%$%hd147463147552%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%hd147450147473%_)))
                               (_%$%tl147464147554%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%hd147450147473%_))))
                           (let ((_%id147557%_ _%$%hd147463147552%_))
                             (if (pair? _%$%tl147464147554%_)
                                 (let ((_%$%hd147465147559%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl147464147554%_)))
                                       (_%$%tl147466147561%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl147464147554%_))))
                                   (let ((_%expr147564%_ _%$%hd147465147559%_))
                                     (if (null? _%$%tl147466147561%_)
                                         (_%$%K147462147549%_
                                          _%expr147564%_
                                          _%id147557%_)
                                         (_%$%try-match147453147542%_))))
                                 (_%$%try-match147453147542%_))))
                         (_%$%try-match147453147542%_)))))
                (_%$%K147467147571%_
                 (lambda (_%expr147569%_) (cons _%expr147569%_ _%r147449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (pair? _%$%hd147450147473%_)
                                                       (let ((_%$%hd147468147574%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%hd147450147473%_)))
                     (_%$%tl147469147576%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%hd147450147473%_))))
                 (if (let ()
                       (declare (not safe))
                       (##eq? _%$%hd147468147574%_ '#f))
                     (if (pair? _%$%tl147469147576%_)
                         (let ((_%$%hd147470147579%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%tl147469147576%_)))
                               (_%$%tl147471147581%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%tl147469147576%_))))
                           (let ((_%expr147584%_ _%$%hd147470147579%_))
                             (if (null? _%$%tl147471147581%_)
                                 (_%$%K147467147571%_ _%expr147584%_)
                                 (_%$%try-match147452147566%_))))
                         (_%$%try-match147452147566%_))
                     (_%$%try-match147452147566%_)))
               (_%$%try-match147452147566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (list _%body147446%_)
                                               _%post147445%_)))
                           _%stx147438%_))))
          (__compile-let-form
           _%stx147438%_
           _%compile-simple147440%_
           _%compile-values147441%_))))
    (define __compile-call%
      (lambda (_%stx147398%_)
        (let* ((_%$e147400%_ _%stx147398%_)
               (_%$%$E147402147411%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e147400%_))))
          (if (__AST-pair? _%$e147400%_)
              (let* ((_%$%$tgt147403147414%_ (__AST-e _%$e147400%_))
                     (_%$%$hd147404147417%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt147403147414%_)))
                     (_%$%$tl147405147420%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt147403147414%_))))
                (if (__AST-pair? _%$%$tl147405147420%_)
                    (let* ((_%$%$tgt147406147424%_
                            (__AST-e _%$%$tl147405147420%_))
                           (_%$%$hd147407147427%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt147406147424%_)))
                           (_%$%$tl147408147430%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt147406147424%_)))
                           (_%rator147434%_ _%$%$hd147407147427%_)
                           (_%rands147436%_ _%$%$tl147408147430%_))
                      (__SRC (cons (__compile _%rator147434%_)
                                   (map __compile _%rands147436%_))
                             _%stx147398%_))
                    (_%$%$E147402147411%_)))
              (_%$%$E147402147411%_)))))
    (define __compile-ref%
      (lambda (_%stx147360%_)
        (let* ((_%$e147362%_ _%stx147360%_)
               (_%$%$E147364147373%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e147362%_))))
          (if (__AST-pair? _%$e147362%_)
              (let* ((_%$%$tgt147365147376%_ (__AST-e _%$e147362%_))
                     (_%$%$hd147366147379%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt147365147376%_)))
                     (_%$%$tl147367147382%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt147365147376%_))))
                (if (__AST-pair? _%$%$tl147367147382%_)
                    (let* ((_%$%$tgt147368147386%_
                            (__AST-e _%$%$tl147367147382%_))
                           (_%$%$hd147369147389%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt147368147386%_)))
                           (_%$%$tl147370147392%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt147368147386%_)))
                           (_%id147396%_ _%$%$hd147369147389%_))
                      (if (equal? (__AST-e _%$%$tl147370147392%_) '())
                          (__SRC _%id147396%_ _%stx147360%_)
                          (_%$%$E147364147373%_)))
                    (_%$%$E147364147373%_)))
              (_%$%$E147364147373%_)))))
    (define __compile-setq%
      (lambda (_%stx147307%_)
        (let* ((_%$e147309%_ _%stx147307%_)
               (_%$%$E147311147323%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e147309%_))))
          (if (__AST-pair? _%$e147309%_)
              (let* ((_%$%$tgt147312147326%_ (__AST-e _%$e147309%_))
                     (_%$%$hd147313147329%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt147312147326%_)))
                     (_%$%$tl147314147332%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt147312147326%_))))
                (if (__AST-pair? _%$%$tl147314147332%_)
                    (let* ((_%$%$tgt147315147336%_
                            (__AST-e _%$%$tl147314147332%_))
                           (_%$%$hd147316147339%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt147315147336%_)))
                           (_%$%$tl147317147342%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt147315147336%_)))
                           (_%id147346%_ _%$%$hd147316147339%_))
                      (if (__AST-pair? _%$%$tl147317147342%_)
                          (let* ((_%$%$tgt147318147348%_
                                  (__AST-e _%$%$tl147317147342%_))
                                 (_%$%$hd147319147351%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt147318147348%_)))
                                 (_%$%$tl147320147354%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt147318147348%_)))
                                 (_%expr147358%_ _%$%$hd147319147351%_))
                            (if (equal? (__AST-e _%$%$tl147320147354%_) '())
                                (__SRC (cons 'set!
                                             (cons (__SRC _%id147346%_
                                                          _%stx147307%_)
                                                   (cons (__compile
                                                          _%expr147358%_)
                                                         '())))
                                       _%stx147307%_)
                                (_%$%$E147311147323%_)))
                          (_%$%$E147311147323%_)))
                    (_%$%$E147311147323%_)))
              (_%$%$E147311147323%_)))))
    (define __compile-if%
      (lambda (_%stx147239%_)
        (let* ((_%$e147241%_ _%stx147239%_)
               (_%$%$E147243147258%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e147241%_))))
          (if (__AST-pair? _%$e147241%_)
              (let* ((_%$%$tgt147244147261%_ (__AST-e _%$e147241%_))
                     (_%$%$hd147245147264%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt147244147261%_)))
                     (_%$%$tl147246147267%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt147244147261%_))))
                (if (__AST-pair? _%$%$tl147246147267%_)
                    (let* ((_%$%$tgt147247147271%_
                            (__AST-e _%$%$tl147246147267%_))
                           (_%$%$hd147248147274%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt147247147271%_)))
                           (_%$%$tl147249147277%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt147247147271%_)))
                           (_%p147281%_ _%$%$hd147248147274%_))
                      (if (__AST-pair? _%$%$tl147249147277%_)
                          (let* ((_%$%$tgt147250147283%_
                                  (__AST-e _%$%$tl147249147277%_))
                                 (_%$%$hd147251147286%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt147250147283%_)))
                                 (_%$%$tl147252147289%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt147250147283%_)))
                                 (_%t147293%_ _%$%$hd147251147286%_))
                            (if (__AST-pair? _%$%$tl147252147289%_)
                                (let* ((_%$%$tgt147253147295%_
                                        (__AST-e _%$%$tl147252147289%_))
                                       (_%$%$hd147254147298%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt147253147295%_)))
                                       (_%$%$tl147255147301%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt147253147295%_)))
                                       (_%f147305%_ _%$%$hd147254147298%_))
                                  (if (equal? (__AST-e _%$%$tl147255147301%_)
                                              '())
                                      (__SRC (cons 'if
                                                   (cons (__compile
                                                          _%p147281%_)
                                                         (cons (__compile
                                                                _%t147293%_)
                                                               (cons (__compile
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%f147305%_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%stx147239%_)
                                      (_%$%$E147243147258%_)))
                                (_%$%$E147243147258%_)))
                          (_%$%$E147243147258%_)))
                    (_%$%$E147243147258%_)))
              (_%$%$E147243147258%_)))))
    (define __compile-quote%
      (lambda (_%stx147201%_)
        (let* ((_%$e147203%_ _%stx147201%_)
               (_%$%$E147205147214%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e147203%_))))
          (if (__AST-pair? _%$e147203%_)
              (let* ((_%$%$tgt147206147217%_ (__AST-e _%$e147203%_))
                     (_%$%$hd147207147220%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt147206147217%_)))
                     (_%$%$tl147208147223%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt147206147217%_))))
                (if (__AST-pair? _%$%$tl147208147223%_)
                    (let* ((_%$%$tgt147209147227%_
                            (__AST-e _%$%$tl147208147223%_))
                           (_%$%$hd147210147230%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt147209147227%_)))
                           (_%$%$tl147211147233%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt147209147227%_)))
                           (_%e147237%_ _%$%$hd147210147230%_))
                      (if (equal? (__AST-e _%$%$tl147211147233%_) '())
                          (__SRC (cons 'quote
                                       (cons (__AST->datum _%e147237%_) '()))
                                 _%stx147201%_)
                          (_%$%$E147205147214%_)))
                    (_%$%$E147205147214%_)))
              (_%$%$E147205147214%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx147163%_)
        (let* ((_%$e147165%_ _%stx147163%_)
               (_%$%$E147167147176%_
                (lambda ()
                  (__raise-syntax-error
                   '#f
                   '"Bad syntax; malformed ast clause"
                   _%$e147165%_))))
          (if (__AST-pair? _%$e147165%_)
              (let* ((_%$%$tgt147168147179%_ (__AST-e _%$e147165%_))
                     (_%$%$hd147169147182%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt147168147179%_)))
                     (_%$%$tl147170147185%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt147168147179%_))))
                (if (__AST-pair? _%$%$tl147170147185%_)
                    (let* ((_%$%$tgt147171147189%_
                            (__AST-e _%$%$tl147170147185%_))
                           (_%$%$hd147172147192%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt147171147189%_)))
                           (_%$%$tl147173147195%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt147171147189%_)))
                           (_%e147199%_ _%$%$hd147172147192%_))
                      (if (equal? (__AST-e _%$%$tl147173147195%_) '())
                          (__SRC (cons 'quote (cons _%e147199%_ '()))
                                 _%stx147163%_)
                          (_%$%$E147167147176%_)))
                    (_%$%$E147167147176%_)))
              (_%$%$E147167147176%_)))))
    (__core-bind-syntax! '%#begin __compile-begin% make-__core-special-form)
    (__core-bind-syntax!
     '%#begin-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!
     '%#begin-foreign
     __compile-begin-foreign%
     make-__core-special-form)
    (__core-bind-syntax! '%#module __compile-ignore% make-__core-special-form)
    (__core-bind-syntax! '%#import __compile-import% make-__core-special-form)
    (__core-bind-syntax! '%#export __compile-ignore% make-__core-special-form)
    (__core-bind-syntax! '%#provide __compile-ignore% make-__core-special-form)
    (__core-bind-syntax!
     '%#define-values
     __compile-define-values%
     make-__core-special-form)
    (__core-bind-syntax!
     '%#define-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!
     '%#define-alias
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!
     '%#define-runtime
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax! '%#extern __compile-ignore% make-__core-special-form)
    (__core-bind-syntax! '%#declare __compile-ignore% make-__core-special-form)
    (__core-bind-syntax!
     '%#begin-annotation
     __compile-begin-annotation%
     make-__core-expression)
    (__core-bind-syntax! '%#quote __compile-quote% make-__core-expression)
    (__core-bind-syntax!
     '%#quote-syntax
     __compile-quote-syntax%
     make-__core-expression)
    (__core-bind-syntax! '%#lambda __compile-lambda% make-__core-expression)
    (__core-bind-syntax!
     '%#case-lambda
     __compile-case-lambda%
     make-__core-expression)
    (__core-bind-syntax!
     '%#let-values
     __compile-let-values%
     make-__core-expression)
    (__core-bind-syntax!
     '%#letrec-values
     __compile-letrec-values%
     make-__core-expression)
    (__core-bind-syntax!
     '%#letrec*-values
     __compile-letrec*-values%
     make-__core-expression)
    (__core-bind-syntax! '%#call __compile-call% make-__core-expression)
    (__core-bind-syntax! '%#if __compile-if% make-__core-expression)
    (__core-bind-syntax! '%#ref __compile-ref% make-__core-expression)
    (__core-bind-syntax! '%#set! __compile-setq% make-__core-expression)
    (__core-bind-syntax! '%#cond-expand __compile-error make-__core-form)
    (__core-bind-syntax! '%#include __compile-error make-__core-form)
    (__core-bind-syntax! '%#let-syntax __compile-error make-__core-form)
    (__core-bind-syntax! '%#letrec-syntax __compile-error make-__core-form)))
