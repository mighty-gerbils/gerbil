(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1733870074)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (__make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args118205%_
        (apply make-instance gx#identifier-wrap::t _%$args118205%_)))
    (define gx#identifier-wrap-marks
      (__make-class-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (__make-class-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (__make-class-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (__make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args118202%_
        (apply make-instance gx#syntax-wrap::t _%$args118202%_)))
    (define gx#syntax-wrap-mark
      (__make-class-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (__make-class-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (__make-class-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (__make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args118199%_
        (apply make-instance gx#syntax-quote::t _%$args118199%_)))
    (define gx#syntax-quote-context
      (__make-class-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (__make-class-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e
      (__make-class-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (__make-class-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_%stx118197%_) (symbol? (gx#stx-e _%stx118197%_))))
    (define gx#identifier-quote?
      (lambda (_%stx118195%_)
        (if (##structure-direct-instance-of? _%stx118195%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx118195%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx118190%_)
        (if (##structure-direct-instance-of? _%stx118190%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx118190%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx118190%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx118185%_)
        (if (##structure-direct-instance-of? _%stx118185%_ 'gx#syntax-quote::t)
            _%stx118185%_
            (if (##structure-direct-instance-of?
                 _%stx118185%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx118185%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx118159%_)
        (if (##structure-direct-instance-of? _%stx118159%_ 'gx#syntax-wrap::t)
            (let _%lp118162%_ ((_%e118164%_
                                (##unchecked-structure-ref
                                 _%stx118159%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks118165%_
                                (cons (##unchecked-structure-ref
                                       _%stx118159%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e118164%_)
                  (let ((_%$e118168%_
                         (##type-id (##structure-type _%e118164%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e118168%_)
                        (_%lp118162%_
                         (##unchecked-structure-ref _%e118164%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e118164%_ '3 '#f '#f)
                          _%marks118165%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e118168%_)
                                (eq? 'gx#identifier-wrap::t _%$e118168%_))
                            (##unchecked-structure-ref _%e118164%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e118168%_)
                                (_%lp118162%_
                                 (##unchecked-structure-ref
                                  _%e118164%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks118165%_)
                                _%e118164%_))))
                  (if (null? _%marks118165%_)
                      _%e118164%_
                      (if (pair? _%e118164%_)
                          (cons (gx#stx-wrap
                                 (##car _%e118164%_)
                                 _%marks118165%_)
                                (gx#stx-wrap
                                 (##cdr _%e118164%_)
                                 _%marks118165%_))
                          (if (vector? _%e118164%_)
                              (vector-map
                               (lambda (_%g118176118178%_)
                                 (gx#stx-wrap
                                  _%g118176118178%_
                                  _%marks118165%_))
                               _%e118164%_)
                              (if (box? _%e118164%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e118164%_)
                                        _%marks118165%_))
                                  _%e118164%_))))))
            (if (##structure-instance-of? _%stx118159%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx118159%_ '1 '#f '#f)
                _%stx118159%_))))
    (define gx#syntax->datum
      (lambda (_%stx118152%_)
        (if (##structure-instance-of? _%stx118152%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx118152%_ '1 '#f '#f))
            (if (pair? _%stx118152%_)
                (cons (gx#syntax->datum (##car _%stx118152%_))
                      (gx#syntax->datum (##cdr _%stx118152%_)))
                (if (vector? _%stx118152%_)
                    (vector-map gx#syntax->datum _%stx118152%_)
                    (if (box? _%stx118152%_)
                        (box (gx#syntax->datum (unbox _%stx118152%_)))
                        _%stx118152%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx118086%_ _%datum118087%_ _%src118088%_ _%quote?118089%_)
        (letrec ((_%wrap-datum118091%_
                  (lambda (_%e118124%_ _%marks118125%_)
                    (_%wrap-inner118093%_
                     _%e118124%_
                     (lambda (_%g118126118128%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g118126118128%_
                        _%src118088%_
                        _%marks118125%_)))))
                 (_%wrap-quote118092%_
                  (lambda (_%e118116%_ _%ctx118117%_ _%marks118118%_)
                    (_%wrap-inner118093%_
                     _%e118116%_
                     (lambda (_%g118119118121%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g118119118121%_
                        _%src118088%_
                        _%ctx118117%_
                        _%marks118118%_)))))
                 (_%wrap-inner118093%_
                  (lambda (_%e118104%_ _%wrap-e118105%_)
                    (let _%recur118107%_ ((_%e118109%_ _%e118104%_))
                      (if (symbol? _%e118109%_)
                          (_%wrap-e118105%_ _%e118109%_)
                          (if (pair? _%e118109%_)
                              (cons (_%recur118107%_ (##car _%e118109%_))
                                    (_%recur118107%_ (##cdr _%e118109%_)))
                              (if (vector? _%e118109%_)
                                  (vector-map _%recur118107%_ _%e118109%_)
                                  (if (box? _%e118109%_)
                                      (box (_%recur118107%_
                                            (unbox _%e118109%_)))
                                      _%e118109%_)))))))
                 (_%wrap-outer118094%_
                  (lambda (_%e118102%_)
                    (if (##structure-instance-of? _%e118102%_ 'gerbil#AST::t)
                        _%e118102%_
                        (##structure gx#AST::t _%e118102%_ _%src118088%_)))))
          (if (##structure-instance-of? _%datum118087%_ 'gerbil#AST::t)
              _%datum118087%_
              (if (not _%stx118086%_)
                  (##structure gx#AST::t _%datum118087%_ _%src118088%_)
                  (if (gx#identifier? _%stx118086%_)
                      (let ((_%stx118099%_ (gx#stx-unwrap__0 _%stx118086%_)))
                        (_%wrap-outer118094%_
                         (if (##structure-direct-instance-of?
                              _%stx118099%_
                              'gx#syntax-quote::t)
                             (if _%quote?118089%_
                                 (_%wrap-quote118092%_
                                  _%datum118087%_
                                  (##unchecked-structure-ref
                                   _%stx118099%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx118099%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum118091%_
                                  _%datum118087%_
                                  (##unchecked-structure-ref
                                   _%stx118099%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum118091%_
                              _%datum118087%_
                              (##unchecked-structure-ref
                               _%stx118099%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx118086%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx118134%_ _%datum118135%_)
        (let* ((_%src118137%_ '#f) (_%quote?118139%_ '#t))
          (gx#datum->syntax__%
           _%stx118134%_
           _%datum118135%_
           _%src118137%_
           _%quote?118139%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx118141%_ _%datum118142%_ _%src118143%_)
        (let ((_%quote?118145%_ '#t))
          (gx#datum->syntax__%
           _%stx118141%_
           _%datum118142%_
           _%src118143%_
           _%quote?118145%_))))
    (define gx#datum->syntax
      (lambda _g118286_
        (let ((_g118285_ (##length _g118286_)))
          (cond ((##fx= _g118285_ 2) (apply gx#datum->syntax__0 _g118286_))
                ((##fx= _g118285_ 3) (apply gx#datum->syntax__1 _g118286_))
                ((##fx= _g118285_ 4) (apply gx#datum->syntax__% _g118286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g118286_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx118052%_ _%marks118053%_)
        (let _%lp118055%_ ((_%e118057%_ _%stx118052%_)
                           (_%marks118058%_ _%marks118053%_)
                           (_%src118059%_ (gx#stx-source _%stx118052%_)))
          (if (##structure-direct-instance-of? _%e118057%_ 'gx#syntax-wrap::t)
              (_%lp118055%_
               (##unchecked-structure-ref _%e118057%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e118057%_ '3 '#f '#f)
                _%marks118058%_)
               (##unchecked-structure-ref _%e118057%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e118057%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks118058%_)
                      _%e118057%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e118057%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e118057%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e118057%_ '3 '#f '#f)
                        _%marks118058%_)))
                  (if (##structure-direct-instance-of?
                       _%e118057%_
                       'gx#syntax-quote::t)
                      _%e118057%_
                      (if (##structure-instance-of? _%e118057%_ 'gerbil#AST::t)
                          (_%lp118055%_
                           (##unchecked-structure-ref _%e118057%_ '1 '#f '#f)
                           _%marks118058%_
                           (##unchecked-structure-ref _%e118057%_ '2 '#f '#f))
                          (if (symbol? _%e118057%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e118057%_
                               _%src118059%_
                               (reverse _%marks118058%_))
                              (if (null? _%marks118058%_)
                                  _%e118057%_
                                  (if (pair? _%e118057%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e118057%_)
                                             _%marks118058%_)
                                            (gx#stx-wrap
                                             (##cdr _%e118057%_)
                                             _%marks118058%_))
                                      (if (vector? _%e118057%_)
                                          (vector-map
                                           (lambda (_%g118068118070%_)
                                             (gx#stx-wrap
                                              _%g118068118070%_
                                              _%marks118058%_))
                                           _%e118057%_)
                                          (if (box? _%e118057%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e118057%_)
                                                    _%marks118058%_))
                                              _%e118057%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx118078%_)
        (let ((_%marks118080%_ '()))
          (gx#stx-unwrap__% _%stx118078%_ _%marks118080%_))))
    (define gx#stx-unwrap
      (lambda _g118288_
        (let ((_g118287_ (##length _g118288_)))
          (cond ((##fx= _g118287_ 1) (apply gx#stx-unwrap__0 _g118288_))
                ((##fx= _g118287_ 2) (apply gx#stx-unwrap__% _g118288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g118288_))))))
    (define gx#stx-wrap
      (lambda (_%stx118045%_ _%marks118046%_)
        (__foldl1
         (lambda (_%mark118048%_ _%stx118049%_)
           (gx#stx-apply-mark _%stx118049%_ _%mark118048%_))
         _%stx118045%_
         _%marks118046%_)))
    (define gx#stx-rewrap
      (lambda (_%stx118039%_ _%marks118040%_)
        (__foldr1
         (lambda (_%mark118042%_ _%stx118043%_)
           (gx#stx-apply-mark _%stx118043%_ _%mark118042%_))
         _%stx118039%_
         _%marks118040%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx118033%_ _%mark118034%_)
        (if (##structure-direct-instance-of? _%stx118033%_ 'gx#syntax-quote::t)
            _%stx118033%_
            (if (and (##structure-direct-instance-of?
                      _%stx118033%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark118034%_
                          (##unchecked-structure-ref
                           _%stx118033%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx118033%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx118033%_
                 (gx#stx-source _%stx118033%_)
                 _%mark118034%_)))))
    (define gx#apply-mark
      (lambda (_%mark117997%_ _%marks117998%_)
        (let* ((_%marks117999118007%_ _%marks117998%_)
               (_%else118001118015%_
                (lambda () (cons _%mark117997%_ _%marks117998%_)))
               (_%K118003118021%_
                (lambda (_%rest118018%_ _%hd118019%_)
                  (if (eq? _%mark117997%_ _%hd118019%_)
                      _%rest118018%_
                      (cons _%mark117997%_ _%marks117998%_)))))
          (if (pair? _%marks117999118007%_)
              (let ((_%hd118004118024%_ (##car _%marks117999118007%_))
                    (_%tl118005118026%_ (##cdr _%marks117999118007%_)))
                (let* ((_%hd118029%_ _%hd118004118024%_)
                       (_%rest118031%_ _%tl118005118026%_))
                  (_%K118003118021%_ _%rest118031%_ _%hd118029%_)))
              (_%else118001118015%_)))))
    (define gx#stx-e
      (lambda (_%stx117992%_)
        (if (##structure-direct-instance-of? _%stx117992%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx117992%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx117992%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx117992%_ '1 '#f '#f)
                _%stx117992%_))))
    (define gx#stx-source
      (lambda (_%stx117990%_)
        (if (##structure-instance-of? _%stx117990%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx117990%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx117984%_ _%src117985%_)
        (if (or (##structure-instance-of? _%stx117984%_ 'gerbil#AST::t)
                (not _%src117985%_))
            _%stx117984%_
            (##structure gx#AST::t _%stx117984%_ _%src117985%_))))
    (define gx#stx-datum?
      (lambda (_%stx117982%_) (gx#self-quoting? (gx#stx-e _%stx117982%_))))
    (define gx#self-quoting?
      (lambda (_%x117965%_)
        (let ((_%$e117967%_ (immediate? _%x117965%_)))
          (if _%$e117967%_
              _%$e117967%_
              (let ((_%$e117970%_ (number? _%x117965%_)))
                (if _%$e117970%_
                    _%$e117970%_
                    (let ((_%$e117973%_ (keyword? _%x117965%_)))
                      (if _%$e117973%_
                          _%$e117973%_
                          (let ((_%$e117976%_ (string? _%x117965%_)))
                            (if _%$e117976%_
                                _%$e117976%_
                                (let ((_%$e117979%_ (vector? _%x117965%_)))
                                  (if _%$e117979%_
                                      _%$e117979%_
                                      (u8vector? _%x117965%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e117963%_) (boolean? (gx#stx-e _%e117963%_))))
    (define gx#stx-keyword?
      (lambda (_%e117961%_) (keyword? (gx#stx-e _%e117961%_))))
    (define gx#stx-char? (lambda (_%e117959%_) (char? (gx#stx-e _%e117959%_))))
    (define gx#stx-number?
      (lambda (_%e117957%_) (number? (gx#stx-e _%e117957%_))))
    (define gx#stx-fixnum?
      (lambda (_%e117955%_) (fixnum? (gx#stx-e _%e117955%_))))
    (define gx#stx-string?
      (lambda (_%e117953%_) (string? (gx#stx-e _%e117953%_))))
    (define gx#stx-null? (lambda (_%e117951%_) (null? (gx#stx-e _%e117951%_))))
    (define gx#stx-pair? (lambda (_%e117949%_) (pair? (gx#stx-e _%e117949%_))))
    (define gx#stx-list?
      (lambda (_%e117911%_)
        (let* ((_%g117912117921%_ (gx#stx-e _%e117911%_))
               (_%E117915117925%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117912117921%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K117917117941%_
                 (lambda (_%rest117939%_) (gx#stx-list? _%rest117939%_)))
                (_%K117916117931%_
                 (lambda (_%tail117929%_) (null? _%tail117929%_))))
            (if (pair? _%g117912117921%_)
                (let* ((_%tl117919117944%_ (##cdr _%g117912117921%_))
                       (_%rest117947%_ _%tl117919117944%_))
                  (gx#stx-list? _%rest117947%_))
                (let ((_%tail117934%_ _%g117912117921%_))
                  (null? _%tail117934%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e117904%_)
        (let* ((_%e117906%_ (gx#stx-e _%e117904%_))
               (_%$e117908%_ (pair? _%e117906%_)))
          (if _%$e117908%_ _%$e117908%_ (null? _%e117906%_)))))
    (define gx#stx-vector?
      (lambda (_%e117902%_) (vector? (gx#stx-e _%e117902%_))))
    (define gx#stx-box? (lambda (_%e117900%_) (box? (gx#stx-e _%e117900%_))))
    (define gx#stx-eq?
      (lambda (_%x117897%_ _%y117898%_)
        (eq? (gx#stx-e _%x117897%_) (gx#stx-e _%y117898%_))))
    (define gx#stx-eqv?
      (lambda (_%x117894%_ _%y117895%_)
        (eqv? (gx#stx-e _%x117894%_) (gx#stx-e _%y117895%_))))
    (define gx#stx-equal?
      (lambda (_%x117891%_ _%y117892%_)
        (equal? (gx#stx-e _%x117891%_) (gx#stx-e _%y117892%_))))
    (define gx#stx-false? (lambda (_%x117889%_) (not (gx#stx-e _%x117889%_))))
    (define gx#stx-identifier
      (lambda (_%template117886%_ . _%args117887%_)
        (gx#datum->syntax__1
         _%template117886%_
         (apply make-symbol (gx#syntax->datum _%args117887%_))
         (gx#stx-source _%template117886%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx117884%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx117884%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx117879%_)
        (if (##structure-direct-instance-of?
             _%stx117879%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx117879%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx117879%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx117879%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx117879%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx117875%_)
        (let ((_%stx117877%_ (gx#stx-unwrap__0 _%stx117875%_)))
          (if (gx#identifier-quote? _%stx117877%_)
              (##unchecked-structure-ref _%stx117877%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx117830%_)
        (let* ((_%g117831117841%_ (gx#stx-e _%stx117830%_))
               (_%else117834117849%_ (lambda () '#f)))
          (let ((_%K117837117863%_
                 (lambda (_%rest117860%_ _%hd117861%_)
                   (if (gx#identifier? _%hd117861%_)
                       (gx#identifier-list? _%rest117860%_)
                       '#f)))
                (_%K117836117854%_ (lambda () '#t)))
            (let ((_%try-match117833117857%_
                   (lambda ()
                     (if (null? _%g117831117841%_)
                         (_%K117836117854%_)
                         (_%else117834117849%_)))))
              (if (pair? _%g117831117841%_)
                  (let ((_%tl117839117868%_ (##cdr _%g117831117841%_))
                        (_%hd117838117866%_ (##car _%g117831117841%_)))
                    (let ((_%hd117871%_ _%hd117838117866%_)
                          (_%rest117873%_ _%tl117839117868%_))
                      (_%K117837117863%_ _%rest117873%_ _%hd117871%_)))
                  (_%try-match117833117857%_)))))))
    (define gx#genident__%
      (lambda (_%e117807%_ _%src117808%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e117810%_ (gx#stx-e _%e117807%_)))
                   (if (interned-symbol? _%e117810%_) _%e117810%_ 'g)))
         (let ((_%$e117812%_ (gx#stx-source _%e117807%_)))
           (if _%$e117812%_ _%$e117812%_ _%src117808%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e117819%_ 'g) (_%src117821%_ '#f))
          (gx#genident__% _%e117819%_ _%src117821%_))))
    (define gx#genident__1
      (lambda (_%e117823%_)
        (let ((_%src117825%_ '#f))
          (gx#genident__% _%e117823%_ _%src117825%_))))
    (define gx#genident
      (lambda _g118290_
        (let ((_g118289_ (##length _g118290_)))
          (cond ((##fx= _g118289_ 0) (apply gx#genident__0 _g118290_))
                ((##fx= _g118289_ 1) (apply gx#genident__1 _g118290_))
                ((##fx= _g118289_ 2) (apply gx#genident__% _g118290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g118290_))))))
    (define gx#gentemps
      (lambda (_%stx-lst117804%_) (gx#stx-map1 gx#genident _%stx-lst117804%_)))
    (define gx#syntax->list
      (lambda (_%stx117802%_) (gx#stx-map1 values _%stx117802%_)))
    (define gx#stx-car
      (lambda (_%stx117799%_)
        (declare (safe))
        (car (gx#syntax-e _%stx117799%_))))
    (define gx#stx-cdr
      (lambda (_%stx117796%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx117796%_))))
    (define gx#stx-length
      (lambda (_%stx117761%_)
        (let _%lp117763%_ ((_%rest117765%_ _%stx117761%_) (_%n117766%_ '0))
          (let* ((_%g117767117775%_ (gx#stx-e _%rest117765%_))
                 (_%else117769117783%_ (lambda () _%n117766%_))
                 (_%K117771117788%_
                  (lambda (_%rest117786%_)
                    (_%lp117763%_ _%rest117786%_ (##fx+ _%n117766%_ '1)))))
            (if (pair? _%g117767117775%_)
                (let* ((_%tl117773117791%_ (##cdr _%g117767117775%_))
                       (_%rest117794%_ _%tl117773117791%_))
                  (_%K117771117788%_ _%rest117794%_))
                (_%else117769117783%_))))))
    (define gx#stx-for-each
      (lambda _g118292_
        (let ((_g118291_ (##length _g118292_)))
          (cond ((##fx= _g118291_ 2) (apply gx#stx-for-each1 _g118292_))
                ((##fx= _g118291_ 3) (apply gx#stx-for-each2 _g118292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g118292_))))))
    (define gx#stx-for-each1
      (lambda (_%f117704%_ _%stx117705%_)
        (if (procedure? _%f117704%_)
            '#!void
            (error '"expected procedure" _%f117704%_))
        (let _%lp117707%_ ((_%rest117709%_ _%stx117705%_))
          (let* ((_%g117710117720%_ (gx#syntax-e _%rest117709%_))
                 (_%else117713117728%_
                  (lambda () (_%f117704%_ _%rest117709%_))))
            (let ((_%K117716117742%_
                   (lambda (_%rest117739%_ _%hd117740%_)
                     (_%f117704%_ _%hd117740%_)
                     (_%lp117707%_ _%rest117739%_)))
                  (_%K117715117733%_ (lambda () '#!void)))
              (let ((_%try-match117712117736%_
                     (lambda ()
                       (if (null? _%g117710117720%_)
                           (_%K117715117733%_)
                           (_%else117713117728%_)))))
                (if (pair? _%g117710117720%_)
                    (let ((_%tl117718117747%_ (##cdr _%g117710117720%_))
                          (_%hd117717117745%_ (##car _%g117710117720%_)))
                      (let ((_%hd117750%_ _%hd117717117745%_)
                            (_%rest117752%_ _%tl117718117747%_))
                        (_%K117716117742%_ _%rest117752%_ _%hd117750%_)))
                    (_%try-match117712117736%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f117609%_ _%xstx117610%_ _%ystx117611%_)
        (if (procedure? _%f117609%_)
            '#!void
            (error '"expected procedure" _%f117609%_))
        (let _%lp117613%_ ((_%xrest117615%_ _%xstx117610%_)
                           (_%yrest117616%_ _%ystx117611%_))
          (let* ((_%g117617117627%_ (gx#syntax-e _%xrest117615%_))
                 (_%else117620117635%_ (lambda () '#!void)))
            (let ((_%K117623117692%_
                   (lambda (_%xrest117661%_ _%xhd117662%_)
                     (let* ((_%g117663117670%_ (gx#syntax-e _%yrest117616%_))
                            (_%E117665117674%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g117663117670%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K117666117680%_
                             (lambda (_%yrest117677%_ _%yhd117678%_)
                               (_%f117609%_ _%xhd117662%_ _%yhd117678%_)
                               (_%lp117613%_
                                _%xrest117661%_
                                _%yrest117677%_))))
                       (if (pair? _%g117663117670%_)
                           (let ((_%hd117667117683%_ (##car _%g117663117670%_))
                                 (_%tl117668117685%_
                                  (##cdr _%g117663117670%_)))
                             (let* ((_%yhd117688%_ _%hd117667117683%_)
                                    (_%yrest117690%_ _%tl117668117685%_))
                               (_%K117666117680%_
                                _%yrest117690%_
                                _%yhd117688%_)))
                           (_%E117665117674%_)))))
                  (_%K117622117655%_
                   (lambda ()
                     (let* ((_%yrest117639117644%_ _%yrest117616%_)
                            (_%E117641117648%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest117639117644%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K117642117652%_
                             (lambda ()
                               (_%f117609%_ _%xrest117615%_ _%yrest117616%_))))
                       (if (gx#stx-null? _%yrest117639117644%_)
                           (_%E117641117648%_)
                           (_%K117642117652%_))))))
              (let ((_%try-match117619117658%_
                     (lambda ()
                       (if (null? _%g117617117627%_)
                           (_%else117620117635%_)
                           (_%K117622117655%_)))))
                (if (pair? _%g117617117627%_)
                    (let ((_%tl117625117697%_ (##cdr _%g117617117627%_))
                          (_%hd117624117695%_ (##car _%g117617117627%_)))
                      (let ((_%xhd117700%_ _%hd117624117695%_)
                            (_%xrest117702%_ _%tl117625117697%_))
                        (_%K117623117692%_ _%xrest117702%_ _%xhd117700%_)))
                    (_%try-match117619117658%_))))))))
    (define gx#stx-map
      (lambda _g118294_
        (let ((_g118293_ (##length _g118294_)))
          (cond ((##fx= _g118293_ 2) (apply gx#stx-map1 _g118294_))
                ((##fx= _g118293_ 3) (apply gx#stx-map2 _g118294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g118294_))))))
    (define gx#stx-map1
      (lambda (_%f117552%_ _%stx117553%_)
        (if (procedure? _%f117552%_)
            '#!void
            (error '"expected procedure" _%f117552%_))
        (let _%recur117555%_ ((_%rest117557%_ _%stx117553%_))
          (let* ((_%g117558117568%_ (gx#syntax-e _%rest117557%_))
                 (_%else117561117576%_
                  (lambda () (_%f117552%_ _%rest117557%_))))
            (let ((_%K117564117590%_
                   (lambda (_%rest117587%_ _%hd117588%_)
                     (cons (_%f117552%_ _%hd117588%_)
                           (_%recur117555%_ _%rest117587%_))))
                  (_%K117563117581%_ (lambda () '())))
              (let ((_%try-match117560117584%_
                     (lambda ()
                       (if (null? _%g117558117568%_)
                           (_%K117563117581%_)
                           (_%else117561117576%_)))))
                (if (pair? _%g117558117568%_)
                    (let ((_%tl117566117595%_ (##cdr _%g117558117568%_))
                          (_%hd117565117593%_ (##car _%g117558117568%_)))
                      (let ((_%hd117598%_ _%hd117565117593%_)
                            (_%rest117600%_ _%tl117566117595%_))
                        (_%K117564117590%_ _%rest117600%_ _%hd117598%_)))
                    (_%try-match117560117584%_))))))))
    (define gx#stx-map2
      (lambda (_%f117457%_ _%xstx117458%_ _%ystx117459%_)
        (if (procedure? _%f117457%_)
            '#!void
            (error '"expected procedure" _%f117457%_))
        (let _%recur117461%_ ((_%xrest117463%_ _%xstx117458%_)
                              (_%yrest117464%_ _%ystx117459%_))
          (let* ((_%g117465117475%_ (gx#syntax-e _%xrest117463%_))
                 (_%else117468117483%_ (lambda () '())))
            (let ((_%K117471117540%_
                   (lambda (_%xrest117509%_ _%xhd117510%_)
                     (let* ((_%g117511117518%_ (gx#syntax-e _%yrest117464%_))
                            (_%E117513117522%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g117511117518%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K117514117528%_
                             (lambda (_%yrest117525%_ _%yhd117526%_)
                               (cons (_%f117457%_ _%xhd117510%_ _%yhd117526%_)
                                     (_%recur117461%_
                                      _%xrest117509%_
                                      _%yrest117525%_)))))
                       (if (pair? _%g117511117518%_)
                           (let ((_%hd117515117531%_ (##car _%g117511117518%_))
                                 (_%tl117516117533%_
                                  (##cdr _%g117511117518%_)))
                             (let* ((_%yhd117536%_ _%hd117515117531%_)
                                    (_%yrest117538%_ _%tl117516117533%_))
                               (_%K117514117528%_
                                _%yrest117538%_
                                _%yhd117536%_)))
                           (_%E117513117522%_)))))
                  (_%K117470117503%_
                   (lambda ()
                     (let* ((_%yrest117487117492%_ _%yrest117464%_)
                            (_%E117489117496%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest117487117492%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K117490117500%_
                             (lambda ()
                               (_%f117457%_ _%xrest117463%_ _%yrest117464%_))))
                       (if (gx#stx-null? _%yrest117487117492%_)
                           (_%E117489117496%_)
                           (_%K117490117500%_))))))
              (let ((_%try-match117467117506%_
                     (lambda ()
                       (if (null? _%g117465117475%_)
                           (_%else117468117483%_)
                           (_%K117470117503%_)))))
                (if (pair? _%g117465117475%_)
                    (let ((_%tl117473117545%_ (##cdr _%g117465117475%_))
                          (_%hd117472117543%_ (##car _%g117465117475%_)))
                      (let ((_%xhd117548%_ _%hd117472117543%_)
                            (_%xrest117550%_ _%tl117473117545%_))
                        (_%K117471117540%_ _%xrest117550%_ _%xhd117548%_)))
                    (_%try-match117467117506%_))))))))
    (define gx#stx-andmap
      (lambda (_%f117407%_ _%stx117408%_)
        (if (procedure? _%f117407%_)
            '#!void
            (error '"expected procedure" _%f117407%_))
        (let _%lp117410%_ ((_%rest117412%_ _%stx117408%_))
          (let* ((_%g117413117423%_ (gx#syntax-e _%rest117412%_))
                 (_%else117416117431%_
                  (lambda () (_%f117407%_ _%rest117412%_))))
            (let ((_%K117419117445%_
                   (lambda (_%rest117442%_ _%hd117443%_)
                     (if (_%f117407%_ _%hd117443%_)
                         (_%lp117410%_ _%rest117442%_)
                         '#f)))
                  (_%K117418117436%_ (lambda () '#t)))
              (let ((_%try-match117415117439%_
                     (lambda ()
                       (if (null? _%g117413117423%_)
                           (_%K117418117436%_)
                           (_%else117416117431%_)))))
                (if (pair? _%g117413117423%_)
                    (let ((_%tl117421117450%_ (##cdr _%g117413117423%_))
                          (_%hd117420117448%_ (##car _%g117413117423%_)))
                      (let ((_%hd117453%_ _%hd117420117448%_)
                            (_%rest117455%_ _%tl117421117450%_))
                        (_%K117419117445%_ _%rest117455%_ _%hd117453%_)))
                    (_%try-match117415117439%_))))))))
    (define gx#stx-ormap
      (lambda (_%f117354%_ _%stx117355%_)
        (if (procedure? _%f117354%_)
            '#!void
            (error '"expected procedure" _%f117354%_))
        (let _%lp117357%_ ((_%rest117359%_ _%stx117355%_))
          (let* ((_%g117360117370%_ (gx#syntax-e _%rest117359%_))
                 (_%else117363117378%_
                  (lambda () (_%f117354%_ _%rest117359%_))))
            (let ((_%K117366117395%_
                   (lambda (_%rest117389%_ _%hd117390%_)
                     (let ((_%$e117392%_ (_%f117354%_ _%hd117390%_)))
                       (if _%$e117392%_
                           _%$e117392%_
                           (_%lp117357%_ _%rest117389%_)))))
                  (_%K117365117383%_ (lambda () '#f)))
              (let ((_%try-match117362117386%_
                     (lambda ()
                       (if (null? _%g117360117370%_)
                           (_%K117365117383%_)
                           (_%else117363117378%_)))))
                (if (pair? _%g117360117370%_)
                    (let ((_%tl117368117400%_ (##cdr _%g117360117370%_))
                          (_%hd117367117398%_ (##car _%g117360117370%_)))
                      (let ((_%hd117403%_ _%hd117367117398%_)
                            (_%rest117405%_ _%tl117368117400%_))
                        (_%K117366117395%_ _%rest117405%_ _%hd117403%_)))
                    (_%try-match117362117386%_))))))))
    (define gx#stx-foldl
      (lambda (_%f117302%_ _%iv117303%_ _%stx117304%_)
        (if (procedure? _%f117302%_)
            '#!void
            (error '"expected procedure" _%f117302%_))
        (let _%lp117306%_ ((_%r117308%_ _%iv117303%_)
                           (_%rest117309%_ _%stx117304%_))
          (let* ((_%g117310117320%_ (gx#syntax-e _%rest117309%_))
                 (_%else117313117328%_
                  (lambda () (_%f117302%_ _%rest117309%_ _%r117308%_))))
            (let ((_%K117316117342%_
                   (lambda (_%rest117339%_ _%hd117340%_)
                     (_%lp117306%_
                      (_%f117302%_ _%hd117340%_ _%r117308%_)
                      _%rest117339%_)))
                  (_%K117315117333%_ (lambda () _%r117308%_)))
              (let ((_%try-match117312117336%_
                     (lambda ()
                       (if (null? _%g117310117320%_)
                           (_%K117315117333%_)
                           (_%else117313117328%_)))))
                (if (pair? _%g117310117320%_)
                    (let ((_%tl117318117347%_ (##cdr _%g117310117320%_))
                          (_%hd117317117345%_ (##car _%g117310117320%_)))
                      (let ((_%hd117350%_ _%hd117317117345%_)
                            (_%rest117352%_ _%tl117318117347%_))
                        (_%K117316117342%_ _%rest117352%_ _%hd117350%_)))
                    (_%try-match117312117336%_))))))))
    (define gx#stx-foldr
      (lambda (_%f117251%_ _%iv117252%_ _%stx117253%_)
        (if (procedure? _%f117251%_)
            '#!void
            (error '"expected procedure" _%f117251%_))
        (let _%recur117255%_ ((_%rest117257%_ _%stx117253%_))
          (let* ((_%g117258117268%_ (gx#syntax-e _%rest117257%_))
                 (_%else117261117276%_
                  (lambda () (_%f117251%_ _%rest117257%_ _%iv117252%_))))
            (let ((_%K117264117290%_
                   (lambda (_%rest117287%_ _%hd117288%_)
                     (_%f117251%_
                      _%hd117288%_
                      (_%recur117255%_ _%rest117287%_))))
                  (_%K117263117281%_ (lambda () _%iv117252%_)))
              (let ((_%try-match117260117284%_
                     (lambda ()
                       (if (null? _%g117258117268%_)
                           (_%K117263117281%_)
                           (_%else117261117276%_)))))
                (if (pair? _%g117258117268%_)
                    (let ((_%tl117266117295%_ (##cdr _%g117258117268%_))
                          (_%hd117265117293%_ (##car _%g117258117268%_)))
                      (let ((_%hd117298%_ _%hd117265117293%_)
                            (_%rest117300%_ _%tl117266117295%_))
                        (_%K117264117290%_ _%rest117300%_ _%hd117298%_)))
                    (_%try-match117260117284%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx117249%_) (gx#stx-foldl cons '() _%stx117249%_)))
    (define gx#stx-last
      (lambda (_%stx117210%_)
        (let _%lp117212%_ ((_%rest117214%_ _%stx117210%_))
          (let* ((_%g117215117223%_ (gx#syntax-e _%rest117214%_))
                 (_%else117217117231%_ (lambda () _%rest117214%_))
                 (_%K117219117237%_
                  (lambda (_%rest117234%_ _%hd117235%_)
                    (if (gx#stx-null? _%rest117234%_)
                        _%hd117235%_
                        (_%lp117212%_ _%rest117234%_)))))
            (if (pair? _%g117215117223%_)
                (let ((_%hd117220117240%_ (##car _%g117215117223%_))
                      (_%tl117221117242%_ (##cdr _%g117215117223%_)))
                  (let* ((_%hd117245%_ _%hd117220117240%_)
                         (_%rest117247%_ _%tl117221117242%_))
                    (_%K117219117237%_ _%rest117247%_ _%hd117245%_)))
                (_%else117217117231%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx117181%_)
        (let _%lp117183%_ ((_%hd117185%_ _%stx117181%_))
          (let* ((_%g117186117193%_ (gx#syntax-e _%hd117185%_))
                 (_%E117188117197%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g117186117193%_
                           '([_ . rest]))
                    '#!void))
                 (_%K117189117202%_
                  (lambda (_%rest117200%_)
                    (if (gx#stx-pair? _%rest117200%_)
                        (_%lp117183%_ _%rest117200%_)
                        _%hd117185%_))))
            (if (pair? _%g117186117193%_)
                (let* ((_%tl117191117205%_ (##cdr _%g117186117193%_))
                       (_%rest117208%_ _%tl117191117205%_))
                  (_%K117189117202%_ _%rest117208%_))
                (_%E117188117197%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx117150%_ _%k117151%_)
        (let _%lp117153%_ ((_%rest117155%_ _%stx117150%_)
                           (_%k117156%_ _%k117151%_))
          (if (fxpositive? _%k117156%_)
              (let* ((_%g117157117164%_ (gx#syntax-e _%rest117155%_))
                     (_%E117159117168%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g117157117164%_
                               '([_ . rest]))
                        '#!void))
                     (_%K117160117173%_
                      (lambda (_%rest117171%_)
                        (_%lp117153%_ _%rest117171%_ (##fx- _%k117156%_ '1)))))
                (if (pair? _%g117157117164%_)
                    (let* ((_%tl117162117176%_ (##cdr _%g117157117164%_))
                           (_%rest117179%_ _%tl117162117176%_))
                      (_%K117160117173%_ _%rest117179%_))
                    (_%E117159117168%_)))
              _%rest117155%_))))
    (define gx#stx-list-ref
      (lambda (_%stx117147%_ _%k117148%_)
        (gx#stx-car (gx#stx-list-tail _%stx117147%_ _%k117148%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx117059%_ _%key?117060%_)
        (if (procedure? _%key?117060%_)
            '#!void
            (error '"expected procedure" _%key?117060%_))
        (let _%lp117062%_ ((_%rest117064%_ _%stx117059%_))
          (let* ((_%g117065117075%_ (gx#stx-e _%rest117064%_))
                 (_%else117068117083%_ (lambda () '#f)))
            (let ((_%K117071117125%_
                   (lambda (_%rest117094%_ _%hd117095%_)
                     (if (_%key?117060%_ _%hd117095%_)
                         (let* ((_%g117096117104%_ (gx#stx-e _%rest117094%_))
                                (_%else117098117112%_ (lambda () '#f))
                                (_%K117100117117%_
                                 (lambda (_%rest117115%_)
                                   (_%lp117062%_ _%rest117115%_))))
                           (if (pair? _%g117096117104%_)
                               (let* ((_%tl117102117120%_
                                       (##cdr _%g117096117104%_))
                                      (_%rest117123%_ _%tl117102117120%_))
                                 (_%lp117062%_ _%rest117123%_))
                               (_%else117098117112%_)))
                         '#f)))
                  (_%K117070117088%_ (lambda () '#t)))
              (let ((_%try-match117067117091%_
                     (lambda ()
                       (if (null? _%g117065117075%_)
                           (_%K117070117088%_)
                           (_%else117068117083%_)))))
                (if (pair? _%g117065117075%_)
                    (let ((_%tl117073117130%_ (##cdr _%g117065117075%_))
                          (_%hd117072117128%_ (##car _%g117065117075%_)))
                      (let ((_%hd117133%_ _%hd117072117128%_)
                            (_%rest117135%_ _%tl117073117130%_))
                        (_%K117071117125%_ _%rest117135%_ _%hd117133%_)))
                    (_%try-match117067117091%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx117140%_)
        (let ((_%key?117142%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx117140%_ _%key?117142%_))))
    (define gx#stx-plist?
      (lambda _g118296_
        (let ((_g118295_ (##length _g118296_)))
          (cond ((##fx= _g118295_ 1) (apply gx#stx-plist?__0 _g118296_))
                ((##fx= _g118295_ 2) (apply gx#stx-plist?__% _g118296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g118296_))))))
    (define gx#stx-getq__%
      (lambda (_%key116977%_ _%stx116978%_ _%key=?116979%_)
        (if (procedure? _%key=?116979%_)
            '#!void
            (error '"expected procedure" _%key=?116979%_))
        (let _%lp116981%_ ((_%rest116983%_ _%stx116978%_))
          (let* ((_%g116984116992%_ (gx#syntax-e _%rest116983%_))
                 (_%else116986117000%_ (lambda () '#f))
                 (_%K116988117034%_
                  (lambda (_%rest117003%_ _%hd117004%_)
                    (let* ((_%g117005117012%_ (gx#syntax-e _%rest117003%_))
                           (_%E117007117016%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g117005117012%_
                                     '([val . rest]))
                              '#!void))
                           (_%K117008117022%_
                            (lambda (_%rest117019%_ _%val117020%_)
                              (if (_%key=?116979%_ _%hd117004%_ _%key116977%_)
                                  _%val117020%_
                                  (_%lp116981%_ _%rest117019%_)))))
                      (if (pair? _%g117005117012%_)
                          (let ((_%hd117009117025%_ (##car _%g117005117012%_))
                                (_%tl117010117027%_ (##cdr _%g117005117012%_)))
                            (let* ((_%val117030%_ _%hd117009117025%_)
                                   (_%rest117032%_ _%tl117010117027%_))
                              (_%K117008117022%_
                               _%rest117032%_
                               _%val117030%_)))
                          (_%E117007117016%_))))))
            (if (pair? _%g116984116992%_)
                (let ((_%hd116989117037%_ (##car _%g116984116992%_))
                      (_%tl116990117039%_ (##cdr _%g116984116992%_)))
                  (let* ((_%hd117042%_ _%hd116989117037%_)
                         (_%rest117044%_ _%tl116990117039%_))
                    (_%K116988117034%_ _%rest117044%_ _%hd117042%_)))
                (_%else116986117000%_))))))
    (define gx#stx-getq__0
      (lambda (_%key117049%_ _%stx117050%_)
        (let ((_%key=?117052%_ gx#stx-eq?))
          (gx#stx-getq__% _%key117049%_ _%stx117050%_ _%key=?117052%_))))
    (define gx#stx-getq
      (lambda _g118298_
        (let ((_g118297_ (##length _g118298_)))
          (cond ((##fx= _g118297_ 2) (apply gx#stx-getq__0 _g118298_))
                ((##fx= _g118297_ 3) (apply gx#stx-getq__% _g118298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g118298_))))))))
