(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1734357961)
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
      (lambda _%$args119296%_
        (apply make-instance gx#identifier-wrap::t _%$args119296%_)))
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
      (lambda _%$args119293%_
        (apply make-instance gx#syntax-wrap::t _%$args119293%_)))
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
      (lambda _%$args119290%_
        (apply make-instance gx#syntax-quote::t _%$args119290%_)))
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
      (lambda (_%stx119288%_) (symbol? (gx#stx-e _%stx119288%_))))
    (define gx#identifier-quote?
      (lambda (_%stx119286%_)
        (if (##structure-direct-instance-of? _%stx119286%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx119286%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx119281%_)
        (if (##structure-direct-instance-of? _%stx119281%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx119281%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx119281%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx119276%_)
        (if (##structure-direct-instance-of? _%stx119276%_ 'gx#syntax-quote::t)
            _%stx119276%_
            (if (##structure-direct-instance-of?
                 _%stx119276%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx119276%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx119250%_)
        (if (##structure-direct-instance-of? _%stx119250%_ 'gx#syntax-wrap::t)
            (let _%lp119253%_ ((_%e119255%_
                                (##unchecked-structure-ref
                                 _%stx119250%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks119256%_
                                (cons (##unchecked-structure-ref
                                       _%stx119250%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e119255%_)
                  (let ((_%$e119259%_
                         (##type-id (##structure-type _%e119255%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e119259%_)
                        (_%lp119253%_
                         (##unchecked-structure-ref _%e119255%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e119255%_ '3 '#f '#f)
                          _%marks119256%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e119259%_)
                                (eq? 'gx#identifier-wrap::t _%$e119259%_))
                            (##unchecked-structure-ref _%e119255%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e119259%_)
                                (_%lp119253%_
                                 (##unchecked-structure-ref
                                  _%e119255%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks119256%_)
                                _%e119255%_))))
                  (if (null? _%marks119256%_)
                      _%e119255%_
                      (if (pair? _%e119255%_)
                          (cons (gx#stx-wrap
                                 (##car _%e119255%_)
                                 _%marks119256%_)
                                (gx#stx-wrap
                                 (##cdr _%e119255%_)
                                 _%marks119256%_))
                          (if (vector? _%e119255%_)
                              (vector-map
                               (lambda (_%g119267119269%_)
                                 (gx#stx-wrap
                                  _%g119267119269%_
                                  _%marks119256%_))
                               _%e119255%_)
                              (if (box? _%e119255%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e119255%_)
                                        _%marks119256%_))
                                  _%e119255%_))))))
            (if (##structure-instance-of? _%stx119250%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx119250%_ '1 '#f '#f)
                _%stx119250%_))))
    (define gx#syntax->datum
      (lambda (_%stx119243%_)
        (if (##structure-instance-of? _%stx119243%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx119243%_ '1 '#f '#f))
            (if (pair? _%stx119243%_)
                (cons (gx#syntax->datum (##car _%stx119243%_))
                      (gx#syntax->datum (##cdr _%stx119243%_)))
                (if (vector? _%stx119243%_)
                    (vector-map gx#syntax->datum _%stx119243%_)
                    (if (box? _%stx119243%_)
                        (box (gx#syntax->datum (unbox _%stx119243%_)))
                        _%stx119243%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx119177%_ _%datum119178%_ _%src119179%_ _%quote?119180%_)
        (letrec ((_%wrap-datum119182%_
                  (lambda (_%e119215%_ _%marks119216%_)
                    (_%wrap-inner119184%_
                     _%e119215%_
                     (lambda (_%g119217119219%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g119217119219%_
                        _%src119179%_
                        _%marks119216%_)))))
                 (_%wrap-quote119183%_
                  (lambda (_%e119207%_ _%ctx119208%_ _%marks119209%_)
                    (_%wrap-inner119184%_
                     _%e119207%_
                     (lambda (_%g119210119212%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g119210119212%_
                        _%src119179%_
                        _%ctx119208%_
                        _%marks119209%_)))))
                 (_%wrap-inner119184%_
                  (lambda (_%e119195%_ _%wrap-e119196%_)
                    (let _%recur119198%_ ((_%e119200%_ _%e119195%_))
                      (if (symbol? _%e119200%_)
                          (_%wrap-e119196%_ _%e119200%_)
                          (if (pair? _%e119200%_)
                              (cons (_%recur119198%_ (##car _%e119200%_))
                                    (_%recur119198%_ (##cdr _%e119200%_)))
                              (if (vector? _%e119200%_)
                                  (vector-map _%recur119198%_ _%e119200%_)
                                  (if (box? _%e119200%_)
                                      (box (_%recur119198%_
                                            (unbox _%e119200%_)))
                                      _%e119200%_)))))))
                 (_%wrap-outer119185%_
                  (lambda (_%e119193%_)
                    (if (##structure-instance-of? _%e119193%_ 'gerbil#AST::t)
                        _%e119193%_
                        (##structure gx#AST::t _%e119193%_ _%src119179%_)))))
          (if (##structure-instance-of? _%datum119178%_ 'gerbil#AST::t)
              _%datum119178%_
              (if (not _%stx119177%_)
                  (##structure gx#AST::t _%datum119178%_ _%src119179%_)
                  (if (gx#identifier? _%stx119177%_)
                      (let ((_%stx119190%_ (gx#stx-unwrap__0 _%stx119177%_)))
                        (_%wrap-outer119185%_
                         (if (##structure-direct-instance-of?
                              _%stx119190%_
                              'gx#syntax-quote::t)
                             (if _%quote?119180%_
                                 (_%wrap-quote119183%_
                                  _%datum119178%_
                                  (##unchecked-structure-ref
                                   _%stx119190%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx119190%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum119182%_
                                  _%datum119178%_
                                  (##unchecked-structure-ref
                                   _%stx119190%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum119182%_
                              _%datum119178%_
                              (##unchecked-structure-ref
                               _%stx119190%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx119177%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx119225%_ _%datum119226%_)
        (let* ((_%src119228%_ '#f) (_%quote?119230%_ '#t))
          (gx#datum->syntax__%
           _%stx119225%_
           _%datum119226%_
           _%src119228%_
           _%quote?119230%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx119232%_ _%datum119233%_ _%src119234%_)
        (let ((_%quote?119236%_ '#t))
          (gx#datum->syntax__%
           _%stx119232%_
           _%datum119233%_
           _%src119234%_
           _%quote?119236%_))))
    (define gx#datum->syntax
      (lambda _g119377_
        (let ((_g119376_ (##length _g119377_)))
          (cond ((##fx= _g119376_ 2) (apply gx#datum->syntax__0 _g119377_))
                ((##fx= _g119376_ 3) (apply gx#datum->syntax__1 _g119377_))
                ((##fx= _g119376_ 4) (apply gx#datum->syntax__% _g119377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g119377_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx119143%_ _%marks119144%_)
        (let _%lp119146%_ ((_%e119148%_ _%stx119143%_)
                           (_%marks119149%_ _%marks119144%_)
                           (_%src119150%_ (gx#stx-source _%stx119143%_)))
          (if (##structure-direct-instance-of? _%e119148%_ 'gx#syntax-wrap::t)
              (_%lp119146%_
               (##unchecked-structure-ref _%e119148%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e119148%_ '3 '#f '#f)
                _%marks119149%_)
               (##unchecked-structure-ref _%e119148%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e119148%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks119149%_)
                      _%e119148%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e119148%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e119148%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e119148%_ '3 '#f '#f)
                        _%marks119149%_)))
                  (if (##structure-direct-instance-of?
                       _%e119148%_
                       'gx#syntax-quote::t)
                      _%e119148%_
                      (if (##structure-instance-of? _%e119148%_ 'gerbil#AST::t)
                          (_%lp119146%_
                           (##unchecked-structure-ref _%e119148%_ '1 '#f '#f)
                           _%marks119149%_
                           (##unchecked-structure-ref _%e119148%_ '2 '#f '#f))
                          (if (symbol? _%e119148%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e119148%_
                               _%src119150%_
                               (reverse _%marks119149%_))
                              (if (null? _%marks119149%_)
                                  _%e119148%_
                                  (if (pair? _%e119148%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e119148%_)
                                             _%marks119149%_)
                                            (gx#stx-wrap
                                             (##cdr _%e119148%_)
                                             _%marks119149%_))
                                      (if (vector? _%e119148%_)
                                          (vector-map
                                           (lambda (_%g119159119161%_)
                                             (gx#stx-wrap
                                              _%g119159119161%_
                                              _%marks119149%_))
                                           _%e119148%_)
                                          (if (box? _%e119148%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e119148%_)
                                                    _%marks119149%_))
                                              _%e119148%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx119169%_)
        (let ((_%marks119171%_ '()))
          (gx#stx-unwrap__% _%stx119169%_ _%marks119171%_))))
    (define gx#stx-unwrap
      (lambda _g119379_
        (let ((_g119378_ (##length _g119379_)))
          (cond ((##fx= _g119378_ 1) (apply gx#stx-unwrap__0 _g119379_))
                ((##fx= _g119378_ 2) (apply gx#stx-unwrap__% _g119379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g119379_))))))
    (define gx#stx-wrap
      (lambda (_%stx119136%_ _%marks119137%_)
        (__foldl1
         (lambda (_%mark119139%_ _%stx119140%_)
           (gx#stx-apply-mark _%stx119140%_ _%mark119139%_))
         _%stx119136%_
         _%marks119137%_)))
    (define gx#stx-rewrap
      (lambda (_%stx119130%_ _%marks119131%_)
        (__foldr1
         (lambda (_%mark119133%_ _%stx119134%_)
           (gx#stx-apply-mark _%stx119134%_ _%mark119133%_))
         _%stx119130%_
         _%marks119131%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx119124%_ _%mark119125%_)
        (if (##structure-direct-instance-of? _%stx119124%_ 'gx#syntax-quote::t)
            _%stx119124%_
            (if (and (##structure-direct-instance-of?
                      _%stx119124%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark119125%_
                          (##unchecked-structure-ref
                           _%stx119124%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx119124%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx119124%_
                 (gx#stx-source _%stx119124%_)
                 _%mark119125%_)))))
    (define gx#apply-mark
      (lambda (_%mark119088%_ _%marks119089%_)
        (let* ((_%marks119090119098%_ _%marks119089%_)
               (_%else119092119106%_
                (lambda () (cons _%mark119088%_ _%marks119089%_)))
               (_%K119094119112%_
                (lambda (_%rest119109%_ _%hd119110%_)
                  (if (eq? _%mark119088%_ _%hd119110%_)
                      _%rest119109%_
                      (cons _%mark119088%_ _%marks119089%_)))))
          (if (pair? _%marks119090119098%_)
              (let ((_%hd119095119115%_ (##car _%marks119090119098%_))
                    (_%tl119096119117%_ (##cdr _%marks119090119098%_)))
                (let* ((_%hd119120%_ _%hd119095119115%_)
                       (_%rest119122%_ _%tl119096119117%_))
                  (_%K119094119112%_ _%rest119122%_ _%hd119120%_)))
              (_%else119092119106%_)))))
    (define gx#stx-e
      (lambda (_%stx119083%_)
        (if (##structure-direct-instance-of? _%stx119083%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx119083%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx119083%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx119083%_ '1 '#f '#f)
                _%stx119083%_))))
    (define gx#stx-source
      (lambda (_%stx119081%_)
        (if (##structure-instance-of? _%stx119081%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx119081%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx119075%_ _%src119076%_)
        (if (or (##structure-instance-of? _%stx119075%_ 'gerbil#AST::t)
                (not _%src119076%_))
            _%stx119075%_
            (##structure gx#AST::t _%stx119075%_ _%src119076%_))))
    (define gx#stx-datum?
      (lambda (_%stx119073%_) (gx#self-quoting? (gx#stx-e _%stx119073%_))))
    (define gx#self-quoting?
      (lambda (_%x119056%_)
        (let ((_%$e119058%_ (immediate? _%x119056%_)))
          (if _%$e119058%_
              _%$e119058%_
              (let ((_%$e119061%_ (number? _%x119056%_)))
                (if _%$e119061%_
                    _%$e119061%_
                    (let ((_%$e119064%_ (keyword? _%x119056%_)))
                      (if _%$e119064%_
                          _%$e119064%_
                          (let ((_%$e119067%_ (string? _%x119056%_)))
                            (if _%$e119067%_
                                _%$e119067%_
                                (let ((_%$e119070%_ (vector? _%x119056%_)))
                                  (if _%$e119070%_
                                      _%$e119070%_
                                      (u8vector? _%x119056%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e119054%_) (boolean? (gx#stx-e _%e119054%_))))
    (define gx#stx-keyword?
      (lambda (_%e119052%_) (keyword? (gx#stx-e _%e119052%_))))
    (define gx#stx-char? (lambda (_%e119050%_) (char? (gx#stx-e _%e119050%_))))
    (define gx#stx-number?
      (lambda (_%e119048%_) (number? (gx#stx-e _%e119048%_))))
    (define gx#stx-fixnum?
      (lambda (_%e119046%_) (fixnum? (gx#stx-e _%e119046%_))))
    (define gx#stx-string?
      (lambda (_%e119044%_) (string? (gx#stx-e _%e119044%_))))
    (define gx#stx-null? (lambda (_%e119042%_) (null? (gx#stx-e _%e119042%_))))
    (define gx#stx-pair? (lambda (_%e119040%_) (pair? (gx#stx-e _%e119040%_))))
    (define gx#stx-list?
      (lambda (_%e119002%_)
        (let* ((_%g119003119012%_ (gx#stx-e _%e119002%_))
               (_%E119006119016%_
                (lambda ()
                  (error '"No clause matching"
                         _%g119003119012%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K119008119032%_
                 (lambda (_%rest119030%_) (gx#stx-list? _%rest119030%_)))
                (_%K119007119022%_
                 (lambda (_%tail119020%_) (null? _%tail119020%_))))
            (if (pair? _%g119003119012%_)
                (let* ((_%tl119010119035%_ (##cdr _%g119003119012%_))
                       (_%rest119038%_ _%tl119010119035%_))
                  (gx#stx-list? _%rest119038%_))
                (let ((_%tail119025%_ _%g119003119012%_))
                  (null? _%tail119025%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e118995%_)
        (let* ((_%e118997%_ (gx#stx-e _%e118995%_))
               (_%$e118999%_ (pair? _%e118997%_)))
          (if _%$e118999%_ _%$e118999%_ (null? _%e118997%_)))))
    (define gx#stx-vector?
      (lambda (_%e118993%_) (vector? (gx#stx-e _%e118993%_))))
    (define gx#stx-box? (lambda (_%e118991%_) (box? (gx#stx-e _%e118991%_))))
    (define gx#stx-eq?
      (lambda (_%x118988%_ _%y118989%_)
        (eq? (gx#stx-e _%x118988%_) (gx#stx-e _%y118989%_))))
    (define gx#stx-eqv?
      (lambda (_%x118985%_ _%y118986%_)
        (eqv? (gx#stx-e _%x118985%_) (gx#stx-e _%y118986%_))))
    (define gx#stx-equal?
      (lambda (_%x118982%_ _%y118983%_)
        (equal? (gx#stx-e _%x118982%_) (gx#stx-e _%y118983%_))))
    (define gx#stx-false? (lambda (_%x118980%_) (not (gx#stx-e _%x118980%_))))
    (define gx#stx-identifier
      (lambda (_%template118977%_ . _%args118978%_)
        (gx#datum->syntax__1
         _%template118977%_
         (apply make-symbol (gx#syntax->datum _%args118978%_))
         (gx#stx-source _%template118977%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx118975%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx118975%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx118970%_)
        (if (##structure-direct-instance-of?
             _%stx118970%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx118970%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx118970%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx118970%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx118970%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx118966%_)
        (let ((_%stx118968%_ (gx#stx-unwrap__0 _%stx118966%_)))
          (if (gx#identifier-quote? _%stx118968%_)
              (##unchecked-structure-ref _%stx118968%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx118921%_)
        (let* ((_%g118922118932%_ (gx#stx-e _%stx118921%_))
               (_%else118925118940%_ (lambda () '#f)))
          (let ((_%K118928118954%_
                 (lambda (_%rest118951%_ _%hd118952%_)
                   (if (gx#identifier? _%hd118952%_)
                       (gx#identifier-list? _%rest118951%_)
                       '#f)))
                (_%K118927118945%_ (lambda () '#t)))
            (let ((_%try-match118924118948%_
                   (lambda ()
                     (if (null? _%g118922118932%_)
                         (_%K118927118945%_)
                         (_%else118925118940%_)))))
              (if (pair? _%g118922118932%_)
                  (let ((_%tl118930118959%_ (##cdr _%g118922118932%_))
                        (_%hd118929118957%_ (##car _%g118922118932%_)))
                    (let ((_%hd118962%_ _%hd118929118957%_)
                          (_%rest118964%_ _%tl118930118959%_))
                      (_%K118928118954%_ _%rest118964%_ _%hd118962%_)))
                  (_%try-match118924118948%_)))))))
    (define gx#genident__%
      (lambda (_%e118898%_ _%src118899%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e118901%_ (gx#stx-e _%e118898%_)))
                   (if (interned-symbol? _%e118901%_) _%e118901%_ 'g)))
         (let ((_%$e118903%_ (gx#stx-source _%e118898%_)))
           (if _%$e118903%_ _%$e118903%_ _%src118899%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e118910%_ 'g) (_%src118912%_ '#f))
          (gx#genident__% _%e118910%_ _%src118912%_))))
    (define gx#genident__1
      (lambda (_%e118914%_)
        (let ((_%src118916%_ '#f))
          (gx#genident__% _%e118914%_ _%src118916%_))))
    (define gx#genident
      (lambda _g119381_
        (let ((_g119380_ (##length _g119381_)))
          (cond ((##fx= _g119380_ 0) (apply gx#genident__0 _g119381_))
                ((##fx= _g119380_ 1) (apply gx#genident__1 _g119381_))
                ((##fx= _g119380_ 2) (apply gx#genident__% _g119381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g119381_))))))
    (define gx#gentemps
      (lambda (_%stx-lst118895%_) (gx#stx-map1 gx#genident _%stx-lst118895%_)))
    (define gx#syntax->list
      (lambda (_%stx118893%_) (gx#stx-map1 values _%stx118893%_)))
    (define gx#stx-car
      (lambda (_%stx118890%_)
        (declare (safe))
        (car (gx#syntax-e _%stx118890%_))))
    (define gx#stx-cdr
      (lambda (_%stx118887%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx118887%_))))
    (define gx#stx-length
      (lambda (_%stx118852%_)
        (let _%lp118854%_ ((_%rest118856%_ _%stx118852%_) (_%n118857%_ '0))
          (let* ((_%g118858118866%_ (gx#stx-e _%rest118856%_))
                 (_%else118860118874%_ (lambda () _%n118857%_))
                 (_%K118862118879%_
                  (lambda (_%rest118877%_)
                    (_%lp118854%_ _%rest118877%_ (##fx+ _%n118857%_ '1)))))
            (if (pair? _%g118858118866%_)
                (let* ((_%tl118864118882%_ (##cdr _%g118858118866%_))
                       (_%rest118885%_ _%tl118864118882%_))
                  (_%K118862118879%_ _%rest118885%_))
                (_%else118860118874%_))))))
    (define gx#stx-for-each
      (lambda _g119383_
        (let ((_g119382_ (##length _g119383_)))
          (cond ((##fx= _g119382_ 2) (apply gx#stx-for-each1 _g119383_))
                ((##fx= _g119382_ 3) (apply gx#stx-for-each2 _g119383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g119383_))))))
    (define gx#stx-for-each1
      (lambda (_%f118795%_ _%stx118796%_)
        (if (procedure? _%f118795%_)
            '#!void
            (error '"expected procedure" _%f118795%_))
        (let _%lp118798%_ ((_%rest118800%_ _%stx118796%_))
          (let* ((_%g118801118811%_ (gx#syntax-e _%rest118800%_))
                 (_%else118804118819%_
                  (lambda () (_%f118795%_ _%rest118800%_))))
            (let ((_%K118807118833%_
                   (lambda (_%rest118830%_ _%hd118831%_)
                     (_%f118795%_ _%hd118831%_)
                     (_%lp118798%_ _%rest118830%_)))
                  (_%K118806118824%_ (lambda () '#!void)))
              (let ((_%try-match118803118827%_
                     (lambda ()
                       (if (null? _%g118801118811%_)
                           (_%K118806118824%_)
                           (_%else118804118819%_)))))
                (if (pair? _%g118801118811%_)
                    (let ((_%tl118809118838%_ (##cdr _%g118801118811%_))
                          (_%hd118808118836%_ (##car _%g118801118811%_)))
                      (let ((_%hd118841%_ _%hd118808118836%_)
                            (_%rest118843%_ _%tl118809118838%_))
                        (_%K118807118833%_ _%rest118843%_ _%hd118841%_)))
                    (_%try-match118803118827%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f118700%_ _%xstx118701%_ _%ystx118702%_)
        (if (procedure? _%f118700%_)
            '#!void
            (error '"expected procedure" _%f118700%_))
        (let _%lp118704%_ ((_%xrest118706%_ _%xstx118701%_)
                           (_%yrest118707%_ _%ystx118702%_))
          (let* ((_%g118708118718%_ (gx#syntax-e _%xrest118706%_))
                 (_%else118711118726%_ (lambda () '#!void)))
            (let ((_%K118714118783%_
                   (lambda (_%xrest118752%_ _%xhd118753%_)
                     (let* ((_%g118754118761%_ (gx#syntax-e _%yrest118707%_))
                            (_%E118756118765%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118754118761%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118757118771%_
                             (lambda (_%yrest118768%_ _%yhd118769%_)
                               (_%f118700%_ _%xhd118753%_ _%yhd118769%_)
                               (_%lp118704%_
                                _%xrest118752%_
                                _%yrest118768%_))))
                       (if (pair? _%g118754118761%_)
                           (let ((_%hd118758118774%_ (##car _%g118754118761%_))
                                 (_%tl118759118776%_
                                  (##cdr _%g118754118761%_)))
                             (let* ((_%yhd118779%_ _%hd118758118774%_)
                                    (_%yrest118781%_ _%tl118759118776%_))
                               (_%K118757118771%_
                                _%yrest118781%_
                                _%yhd118779%_)))
                           (_%E118756118765%_)))))
                  (_%K118713118746%_
                   (lambda ()
                     (let* ((_%yrest118730118735%_ _%yrest118707%_)
                            (_%E118732118739%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118730118735%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118733118743%_
                             (lambda ()
                               (_%f118700%_ _%xrest118706%_ _%yrest118707%_))))
                       (if (gx#stx-null? _%yrest118730118735%_)
                           (_%E118732118739%_)
                           (_%K118733118743%_))))))
              (let ((_%try-match118710118749%_
                     (lambda ()
                       (if (null? _%g118708118718%_)
                           (_%else118711118726%_)
                           (_%K118713118746%_)))))
                (if (pair? _%g118708118718%_)
                    (let ((_%tl118716118788%_ (##cdr _%g118708118718%_))
                          (_%hd118715118786%_ (##car _%g118708118718%_)))
                      (let ((_%xhd118791%_ _%hd118715118786%_)
                            (_%xrest118793%_ _%tl118716118788%_))
                        (_%K118714118783%_ _%xrest118793%_ _%xhd118791%_)))
                    (_%try-match118710118749%_))))))))
    (define gx#stx-map
      (lambda _g119385_
        (let ((_g119384_ (##length _g119385_)))
          (cond ((##fx= _g119384_ 2) (apply gx#stx-map1 _g119385_))
                ((##fx= _g119384_ 3) (apply gx#stx-map2 _g119385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g119385_))))))
    (define gx#stx-map1
      (lambda (_%f118643%_ _%stx118644%_)
        (if (procedure? _%f118643%_)
            '#!void
            (error '"expected procedure" _%f118643%_))
        (let _%recur118646%_ ((_%rest118648%_ _%stx118644%_))
          (let* ((_%g118649118659%_ (gx#syntax-e _%rest118648%_))
                 (_%else118652118667%_
                  (lambda () (_%f118643%_ _%rest118648%_))))
            (let ((_%K118655118681%_
                   (lambda (_%rest118678%_ _%hd118679%_)
                     (cons (_%f118643%_ _%hd118679%_)
                           (_%recur118646%_ _%rest118678%_))))
                  (_%K118654118672%_ (lambda () '())))
              (let ((_%try-match118651118675%_
                     (lambda ()
                       (if (null? _%g118649118659%_)
                           (_%K118654118672%_)
                           (_%else118652118667%_)))))
                (if (pair? _%g118649118659%_)
                    (let ((_%tl118657118686%_ (##cdr _%g118649118659%_))
                          (_%hd118656118684%_ (##car _%g118649118659%_)))
                      (let ((_%hd118689%_ _%hd118656118684%_)
                            (_%rest118691%_ _%tl118657118686%_))
                        (_%K118655118681%_ _%rest118691%_ _%hd118689%_)))
                    (_%try-match118651118675%_))))))))
    (define gx#stx-map2
      (lambda (_%f118548%_ _%xstx118549%_ _%ystx118550%_)
        (if (procedure? _%f118548%_)
            '#!void
            (error '"expected procedure" _%f118548%_))
        (let _%recur118552%_ ((_%xrest118554%_ _%xstx118549%_)
                              (_%yrest118555%_ _%ystx118550%_))
          (let* ((_%g118556118566%_ (gx#syntax-e _%xrest118554%_))
                 (_%else118559118574%_ (lambda () '())))
            (let ((_%K118562118631%_
                   (lambda (_%xrest118600%_ _%xhd118601%_)
                     (let* ((_%g118602118609%_ (gx#syntax-e _%yrest118555%_))
                            (_%E118604118613%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118602118609%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118605118619%_
                             (lambda (_%yrest118616%_ _%yhd118617%_)
                               (cons (_%f118548%_ _%xhd118601%_ _%yhd118617%_)
                                     (_%recur118552%_
                                      _%xrest118600%_
                                      _%yrest118616%_)))))
                       (if (pair? _%g118602118609%_)
                           (let ((_%hd118606118622%_ (##car _%g118602118609%_))
                                 (_%tl118607118624%_
                                  (##cdr _%g118602118609%_)))
                             (let* ((_%yhd118627%_ _%hd118606118622%_)
                                    (_%yrest118629%_ _%tl118607118624%_))
                               (_%K118605118619%_
                                _%yrest118629%_
                                _%yhd118627%_)))
                           (_%E118604118613%_)))))
                  (_%K118561118594%_
                   (lambda ()
                     (let* ((_%yrest118578118583%_ _%yrest118555%_)
                            (_%E118580118587%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118578118583%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118581118591%_
                             (lambda ()
                               (_%f118548%_ _%xrest118554%_ _%yrest118555%_))))
                       (if (gx#stx-null? _%yrest118578118583%_)
                           (_%E118580118587%_)
                           (_%K118581118591%_))))))
              (let ((_%try-match118558118597%_
                     (lambda ()
                       (if (null? _%g118556118566%_)
                           (_%else118559118574%_)
                           (_%K118561118594%_)))))
                (if (pair? _%g118556118566%_)
                    (let ((_%tl118564118636%_ (##cdr _%g118556118566%_))
                          (_%hd118563118634%_ (##car _%g118556118566%_)))
                      (let ((_%xhd118639%_ _%hd118563118634%_)
                            (_%xrest118641%_ _%tl118564118636%_))
                        (_%K118562118631%_ _%xrest118641%_ _%xhd118639%_)))
                    (_%try-match118558118597%_))))))))
    (define gx#stx-andmap
      (lambda (_%f118498%_ _%stx118499%_)
        (if (procedure? _%f118498%_)
            '#!void
            (error '"expected procedure" _%f118498%_))
        (let _%lp118501%_ ((_%rest118503%_ _%stx118499%_))
          (let* ((_%g118504118514%_ (gx#syntax-e _%rest118503%_))
                 (_%else118507118522%_
                  (lambda () (_%f118498%_ _%rest118503%_))))
            (let ((_%K118510118536%_
                   (lambda (_%rest118533%_ _%hd118534%_)
                     (if (_%f118498%_ _%hd118534%_)
                         (_%lp118501%_ _%rest118533%_)
                         '#f)))
                  (_%K118509118527%_ (lambda () '#t)))
              (let ((_%try-match118506118530%_
                     (lambda ()
                       (if (null? _%g118504118514%_)
                           (_%K118509118527%_)
                           (_%else118507118522%_)))))
                (if (pair? _%g118504118514%_)
                    (let ((_%tl118512118541%_ (##cdr _%g118504118514%_))
                          (_%hd118511118539%_ (##car _%g118504118514%_)))
                      (let ((_%hd118544%_ _%hd118511118539%_)
                            (_%rest118546%_ _%tl118512118541%_))
                        (_%K118510118536%_ _%rest118546%_ _%hd118544%_)))
                    (_%try-match118506118530%_))))))))
    (define gx#stx-ormap
      (lambda (_%f118445%_ _%stx118446%_)
        (if (procedure? _%f118445%_)
            '#!void
            (error '"expected procedure" _%f118445%_))
        (let _%lp118448%_ ((_%rest118450%_ _%stx118446%_))
          (let* ((_%g118451118461%_ (gx#syntax-e _%rest118450%_))
                 (_%else118454118469%_
                  (lambda () (_%f118445%_ _%rest118450%_))))
            (let ((_%K118457118486%_
                   (lambda (_%rest118480%_ _%hd118481%_)
                     (let ((_%$e118483%_ (_%f118445%_ _%hd118481%_)))
                       (if _%$e118483%_
                           _%$e118483%_
                           (_%lp118448%_ _%rest118480%_)))))
                  (_%K118456118474%_ (lambda () '#f)))
              (let ((_%try-match118453118477%_
                     (lambda ()
                       (if (null? _%g118451118461%_)
                           (_%K118456118474%_)
                           (_%else118454118469%_)))))
                (if (pair? _%g118451118461%_)
                    (let ((_%tl118459118491%_ (##cdr _%g118451118461%_))
                          (_%hd118458118489%_ (##car _%g118451118461%_)))
                      (let ((_%hd118494%_ _%hd118458118489%_)
                            (_%rest118496%_ _%tl118459118491%_))
                        (_%K118457118486%_ _%rest118496%_ _%hd118494%_)))
                    (_%try-match118453118477%_))))))))
    (define gx#stx-foldl
      (lambda (_%f118393%_ _%iv118394%_ _%stx118395%_)
        (if (procedure? _%f118393%_)
            '#!void
            (error '"expected procedure" _%f118393%_))
        (let _%lp118397%_ ((_%r118399%_ _%iv118394%_)
                           (_%rest118400%_ _%stx118395%_))
          (let* ((_%g118401118411%_ (gx#syntax-e _%rest118400%_))
                 (_%else118404118419%_
                  (lambda () (_%f118393%_ _%rest118400%_ _%r118399%_))))
            (let ((_%K118407118433%_
                   (lambda (_%rest118430%_ _%hd118431%_)
                     (_%lp118397%_
                      (_%f118393%_ _%hd118431%_ _%r118399%_)
                      _%rest118430%_)))
                  (_%K118406118424%_ (lambda () _%r118399%_)))
              (let ((_%try-match118403118427%_
                     (lambda ()
                       (if (null? _%g118401118411%_)
                           (_%K118406118424%_)
                           (_%else118404118419%_)))))
                (if (pair? _%g118401118411%_)
                    (let ((_%tl118409118438%_ (##cdr _%g118401118411%_))
                          (_%hd118408118436%_ (##car _%g118401118411%_)))
                      (let ((_%hd118441%_ _%hd118408118436%_)
                            (_%rest118443%_ _%tl118409118438%_))
                        (_%K118407118433%_ _%rest118443%_ _%hd118441%_)))
                    (_%try-match118403118427%_))))))))
    (define gx#stx-foldr
      (lambda (_%f118342%_ _%iv118343%_ _%stx118344%_)
        (if (procedure? _%f118342%_)
            '#!void
            (error '"expected procedure" _%f118342%_))
        (let _%recur118346%_ ((_%rest118348%_ _%stx118344%_))
          (let* ((_%g118349118359%_ (gx#syntax-e _%rest118348%_))
                 (_%else118352118367%_
                  (lambda () (_%f118342%_ _%rest118348%_ _%iv118343%_))))
            (let ((_%K118355118381%_
                   (lambda (_%rest118378%_ _%hd118379%_)
                     (_%f118342%_
                      _%hd118379%_
                      (_%recur118346%_ _%rest118378%_))))
                  (_%K118354118372%_ (lambda () _%iv118343%_)))
              (let ((_%try-match118351118375%_
                     (lambda ()
                       (if (null? _%g118349118359%_)
                           (_%K118354118372%_)
                           (_%else118352118367%_)))))
                (if (pair? _%g118349118359%_)
                    (let ((_%tl118357118386%_ (##cdr _%g118349118359%_))
                          (_%hd118356118384%_ (##car _%g118349118359%_)))
                      (let ((_%hd118389%_ _%hd118356118384%_)
                            (_%rest118391%_ _%tl118357118386%_))
                        (_%K118355118381%_ _%rest118391%_ _%hd118389%_)))
                    (_%try-match118351118375%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx118340%_) (gx#stx-foldl cons '() _%stx118340%_)))
    (define gx#stx-last
      (lambda (_%stx118301%_)
        (let _%lp118303%_ ((_%rest118305%_ _%stx118301%_))
          (let* ((_%g118306118314%_ (gx#syntax-e _%rest118305%_))
                 (_%else118308118322%_ (lambda () _%rest118305%_))
                 (_%K118310118328%_
                  (lambda (_%rest118325%_ _%hd118326%_)
                    (if (gx#stx-null? _%rest118325%_)
                        _%hd118326%_
                        (_%lp118303%_ _%rest118325%_)))))
            (if (pair? _%g118306118314%_)
                (let ((_%hd118311118331%_ (##car _%g118306118314%_))
                      (_%tl118312118333%_ (##cdr _%g118306118314%_)))
                  (let* ((_%hd118336%_ _%hd118311118331%_)
                         (_%rest118338%_ _%tl118312118333%_))
                    (_%K118310118328%_ _%rest118338%_ _%hd118336%_)))
                (_%else118308118322%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx118272%_)
        (let _%lp118274%_ ((_%hd118276%_ _%stx118272%_))
          (let* ((_%g118277118284%_ (gx#syntax-e _%hd118276%_))
                 (_%E118279118288%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g118277118284%_
                           '([_ . rest]))
                    '#!void))
                 (_%K118280118293%_
                  (lambda (_%rest118291%_)
                    (if (gx#stx-pair? _%rest118291%_)
                        (_%lp118274%_ _%rest118291%_)
                        _%hd118276%_))))
            (if (pair? _%g118277118284%_)
                (let* ((_%tl118282118296%_ (##cdr _%g118277118284%_))
                       (_%rest118299%_ _%tl118282118296%_))
                  (_%K118280118293%_ _%rest118299%_))
                (_%E118279118288%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx118241%_ _%k118242%_)
        (let _%lp118244%_ ((_%rest118246%_ _%stx118241%_)
                           (_%k118247%_ _%k118242%_))
          (if (fxpositive? _%k118247%_)
              (let* ((_%g118248118255%_ (gx#syntax-e _%rest118246%_))
                     (_%E118250118259%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g118248118255%_
                               '([_ . rest]))
                        '#!void))
                     (_%K118251118264%_
                      (lambda (_%rest118262%_)
                        (_%lp118244%_ _%rest118262%_ (##fx- _%k118247%_ '1)))))
                (if (pair? _%g118248118255%_)
                    (let* ((_%tl118253118267%_ (##cdr _%g118248118255%_))
                           (_%rest118270%_ _%tl118253118267%_))
                      (_%K118251118264%_ _%rest118270%_))
                    (_%E118250118259%_)))
              _%rest118246%_))))
    (define gx#stx-list-ref
      (lambda (_%stx118238%_ _%k118239%_)
        (gx#stx-car (gx#stx-list-tail _%stx118238%_ _%k118239%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx118150%_ _%key?118151%_)
        (if (procedure? _%key?118151%_)
            '#!void
            (error '"expected procedure" _%key?118151%_))
        (let _%lp118153%_ ((_%rest118155%_ _%stx118150%_))
          (let* ((_%g118156118166%_ (gx#stx-e _%rest118155%_))
                 (_%else118159118174%_ (lambda () '#f)))
            (let ((_%K118162118216%_
                   (lambda (_%rest118185%_ _%hd118186%_)
                     (if (_%key?118151%_ _%hd118186%_)
                         (let* ((_%g118187118195%_ (gx#stx-e _%rest118185%_))
                                (_%else118189118203%_ (lambda () '#f))
                                (_%K118191118208%_
                                 (lambda (_%rest118206%_)
                                   (_%lp118153%_ _%rest118206%_))))
                           (if (pair? _%g118187118195%_)
                               (let* ((_%tl118193118211%_
                                       (##cdr _%g118187118195%_))
                                      (_%rest118214%_ _%tl118193118211%_))
                                 (_%lp118153%_ _%rest118214%_))
                               (_%else118189118203%_)))
                         '#f)))
                  (_%K118161118179%_ (lambda () '#t)))
              (let ((_%try-match118158118182%_
                     (lambda ()
                       (if (null? _%g118156118166%_)
                           (_%K118161118179%_)
                           (_%else118159118174%_)))))
                (if (pair? _%g118156118166%_)
                    (let ((_%tl118164118221%_ (##cdr _%g118156118166%_))
                          (_%hd118163118219%_ (##car _%g118156118166%_)))
                      (let ((_%hd118224%_ _%hd118163118219%_)
                            (_%rest118226%_ _%tl118164118221%_))
                        (_%K118162118216%_ _%rest118226%_ _%hd118224%_)))
                    (_%try-match118158118182%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx118231%_)
        (let ((_%key?118233%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx118231%_ _%key?118233%_))))
    (define gx#stx-plist?
      (lambda _g119387_
        (let ((_g119386_ (##length _g119387_)))
          (cond ((##fx= _g119386_ 1) (apply gx#stx-plist?__0 _g119387_))
                ((##fx= _g119386_ 2) (apply gx#stx-plist?__% _g119387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g119387_))))))
    (define gx#stx-getq__%
      (lambda (_%key118068%_ _%stx118069%_ _%key=?118070%_)
        (if (procedure? _%key=?118070%_)
            '#!void
            (error '"expected procedure" _%key=?118070%_))
        (let _%lp118072%_ ((_%rest118074%_ _%stx118069%_))
          (let* ((_%g118075118083%_ (gx#syntax-e _%rest118074%_))
                 (_%else118077118091%_ (lambda () '#f))
                 (_%K118079118125%_
                  (lambda (_%rest118094%_ _%hd118095%_)
                    (let* ((_%g118096118103%_ (gx#syntax-e _%rest118094%_))
                           (_%E118098118107%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g118096118103%_
                                     '([val . rest]))
                              '#!void))
                           (_%K118099118113%_
                            (lambda (_%rest118110%_ _%val118111%_)
                              (if (_%key=?118070%_ _%hd118095%_ _%key118068%_)
                                  _%val118111%_
                                  (_%lp118072%_ _%rest118110%_)))))
                      (if (pair? _%g118096118103%_)
                          (let ((_%hd118100118116%_ (##car _%g118096118103%_))
                                (_%tl118101118118%_ (##cdr _%g118096118103%_)))
                            (let* ((_%val118121%_ _%hd118100118116%_)
                                   (_%rest118123%_ _%tl118101118118%_))
                              (_%K118099118113%_
                               _%rest118123%_
                               _%val118121%_)))
                          (_%E118098118107%_))))))
            (if (pair? _%g118075118083%_)
                (let ((_%hd118080118128%_ (##car _%g118075118083%_))
                      (_%tl118081118130%_ (##cdr _%g118075118083%_)))
                  (let* ((_%hd118133%_ _%hd118080118128%_)
                         (_%rest118135%_ _%tl118081118130%_))
                    (_%K118079118125%_ _%rest118135%_ _%hd118133%_)))
                (_%else118077118091%_))))))
    (define gx#stx-getq__0
      (lambda (_%key118140%_ _%stx118141%_)
        (let ((_%key=?118143%_ gx#stx-eq?))
          (gx#stx-getq__% _%key118140%_ _%stx118141%_ _%key=?118143%_))))
    (define gx#stx-getq
      (lambda _g119389_
        (let ((_g119388_ (##length _g119389_)))
          (cond ((##fx= _g119388_ 2) (apply gx#stx-getq__0 _g119389_))
                ((##fx= _g119388_ 3) (apply gx#stx-getq__% _g119389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g119389_))))))))
