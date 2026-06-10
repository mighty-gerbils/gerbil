(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1781119045)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#identifier-wrap? (make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args153240%_
        (apply make-instance gx#identifier-wrap::t _%$args153240%_)))
    (define gx#identifier-wrap-marks
      (make-class-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (make-class-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (make-class-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-wrap? (make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args153237%_
        (apply make-instance gx#syntax-wrap::t _%$args153237%_)))
    (define gx#syntax-wrap-mark
      (make-class-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (make-class-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (make-class-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-quote? (make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args153234%_
        (apply make-instance gx#syntax-quote::t _%$args153234%_)))
    (define gx#syntax-quote-context
      (make-class-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (make-class-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e (make-class-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (make-class-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (make-class-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (make-class-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (make-class-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (make-class-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_%stx153232%_) (symbol? (gx#stx-e _%stx153232%_))))
    (define gx#identifier-quote?
      (lambda (_%stx153230%_)
        (if (gx#syntax-quote? _%stx153230%_)
            (symbol? (gx#&AST-e _%stx153230%_))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx153225%_)
        (if (gx#syntax-quote? _%stx153225%_)
            '#t
            (if (gx#syntax-wrap? _%stx153225%_)
                (gx#sealed-syntax? (gx#&AST-e _%stx153225%_))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx153220%_)
        (if (gx#syntax-quote? _%stx153220%_)
            _%stx153220%_
            (if (gx#syntax-wrap? _%stx153220%_)
                (gx#sealed-syntax-unwrap (gx#&AST-e _%stx153220%_))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx153194%_)
        (if (gx#syntax-wrap? _%stx153194%_)
            (let _%lp153197%_ ((_%e153199%_ (gx#&AST-e _%stx153194%_))
                               (_%marks153200%_
                                (cons (gx#&syntax-wrap-mark _%stx153194%_)
                                      '())))
              (if (##structure? _%e153199%_)
                  (let ((_%$e153203%_
                         (##type-id (##structure-type _%e153199%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e153203%_)
                        (_%lp153197%_
                         (gx#&AST-e _%e153199%_)
                         (gx#apply-mark
                          (gx#&syntax-wrap-mark _%e153199%_)
                          _%marks153200%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e153203%_)
                                (eq? 'gx#identifier-wrap::t _%$e153203%_))
                            (gx#&AST-e _%e153199%_)
                            (if (eq? 'gerbil#AST::t _%$e153203%_)
                                (_%lp153197%_
                                 (gx#&AST-e _%e153199%_)
                                 _%marks153200%_)
                                _%e153199%_))))
                  (if (null? _%marks153200%_)
                      _%e153199%_
                      (if (pair? _%e153199%_)
                          (cons (gx#stx-wrap (car _%e153199%_) _%marks153200%_)
                                (gx#stx-wrap
                                 (cdr _%e153199%_)
                                 _%marks153200%_))
                          (if (vector? _%e153199%_)
                              (vector-map
                               (lambda (_%$%g153211153213%_)
                                 (gx#stx-wrap
                                  _%$%g153211153213%_
                                  _%marks153200%_))
                               _%e153199%_)
                              (if (box? _%e153199%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e153199%_)
                                        _%marks153200%_))
                                  _%e153199%_))))))
            (if (gx#AST? _%stx153194%_)
                (gx#&AST-e _%stx153194%_)
                _%stx153194%_))))
    (define gx#syntax->datum
      (lambda (_%stx153187%_)
        (if (gx#AST? _%stx153187%_)
            (gx#syntax->datum (gx#&AST-e _%stx153187%_))
            (if (pair? _%stx153187%_)
                (cons (gx#syntax->datum (car _%stx153187%_))
                      (gx#syntax->datum (cdr _%stx153187%_)))
                (if (vector? _%stx153187%_)
                    (vector-map gx#syntax->datum _%stx153187%_)
                    (if (box? _%stx153187%_)
                        (box (gx#syntax->datum (unbox _%stx153187%_)))
                        _%stx153187%_))))))
    (define gx#datum->syntax
      (let ((_%$%opt-lambda153119153166%_
             (lambda (_%stx153121%_
                      _%datum153122%_
                      _%src153123%_
                      _%quote?153124%_)
               (letrec ((_%wrap-datum153126%_
                         (lambda (_%e153159%_ _%marks153160%_)
                           (_%wrap-inner153128%_
                            _%e153159%_
                            (lambda (_%$%g153161153163%_)
                              (gx#make-identifier-wrap
                               _%$%g153161153163%_
                               _%src153123%_
                               _%marks153160%_)))))
                        (_%wrap-quote153127%_
                         (lambda (_%e153151%_ _%ctx153152%_ _%marks153153%_)
                           (_%wrap-inner153128%_
                            _%e153151%_
                            (lambda (_%$%g153154153156%_)
                              (gx#make-syntax-quote
                               _%$%g153154153156%_
                               _%src153123%_
                               _%ctx153152%_
                               _%marks153153%_)))))
                        (_%wrap-inner153128%_
                         (lambda (_%e153139%_ _%wrap-e153140%_)
                           (let _%recur153142%_ ((_%e153144%_ _%e153139%_))
                             (if (symbol? _%e153144%_)
                                 (_%wrap-e153140%_ _%e153144%_)
                                 (if (pair? _%e153144%_)
                                     (cons (_%recur153142%_ (car _%e153144%_))
                                           (_%recur153142%_ (cdr _%e153144%_)))
                                     (if (vector? _%e153144%_)
                                         (vector-map
                                          _%recur153142%_
                                          _%e153144%_)
                                         (if (box? _%e153144%_)
                                             (box (_%recur153142%_
                                                   (unbox _%e153144%_)))
                                             _%e153144%_)))))))
                        (_%wrap-outer153129%_
                         (lambda (_%e153137%_)
                           (if (gx#AST? _%e153137%_)
                               _%e153137%_
                               (gx#make-AST _%e153137%_ _%src153123%_)))))
                 (if (gx#AST? _%datum153122%_)
                     _%datum153122%_
                     (if (not _%stx153121%_)
                         (gx#make-AST _%datum153122%_ _%src153123%_)
                         (if (gx#identifier? _%stx153121%_)
                             (let ((_%stx153134%_
                                    (gx#stx-unwrap _%stx153121%_)))
                               (_%wrap-outer153129%_
                                (if (gx#syntax-quote? _%stx153134%_)
                                    (if _%quote?153124%_
                                        (_%wrap-quote153127%_
                                         _%datum153122%_
                                         (gx#&syntax-quote-context
                                          _%stx153134%_)
                                         (gx#&syntax-quote-marks
                                          _%stx153134%_))
                                        (_%wrap-datum153126%_
                                         _%datum153122%_
                                         (gx#&syntax-quote-marks
                                          _%stx153134%_)))
                                    (_%wrap-datum153126%_
                                     _%datum153122%_
                                     (gx#&identifier-wrap-marks
                                      _%stx153134%_)))))
                             (error '"Bad template syntax; expected identifier"
                                    _%stx153121%_))))))))
        (lambda _g153242_
          (let ((_g153243_ (##length _g153242_)))
            (cond ((##fx= _g153243_ 2)
                   (apply (lambda (_%stx153169%_ _%datum153170%_)
                            (let* ((_%src153172%_ '#f) (_%quote?153174%_ '#t))
                              (_%$%opt-lambda153119153166%_
                               _%stx153169%_
                               _%datum153170%_
                               _%src153172%_
                               _%quote?153174%_)))
                          _g153242_))
                  ((##fx= _g153243_ 3)
                   (apply (lambda (_%stx153176%_ _%datum153177%_ _%src153178%_)
                            (let ((_%quote?153180%_ '#t))
                              (_%$%opt-lambda153119153166%_
                               _%stx153176%_
                               _%datum153177%_
                               _%src153178%_
                               _%quote?153180%_)))
                          _g153242_))
                  ((##fx= _g153243_ 4)
                   (apply _%$%opt-lambda153119153166%_ _g153242_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#datum->syntax
                    _g153242_)))))))
    (define gx#stx-unwrap
      (let ((_%$%opt-lambda153085153110%_
             (lambda (_%stx153087%_ _%marks153088%_)
               (let _%lp153090%_ ((_%e153092%_ _%stx153087%_)
                                  (_%marks153093%_ _%marks153088%_)
                                  (_%src153094%_
                                   (gx#stx-source _%stx153087%_)))
                 (if (gx#syntax-wrap? _%e153092%_)
                     (_%lp153090%_
                      (gx#&AST-e _%e153092%_)
                      (gx#apply-mark
                       (gx#&syntax-wrap-mark _%e153092%_)
                       _%marks153093%_)
                      (gx#&AST-source _%e153092%_))
                     (if (gx#identifier-wrap? _%e153092%_)
                         (if (null? _%marks153093%_)
                             _%e153092%_
                             (gx#make-identifier-wrap
                              (gx#&AST-e _%e153092%_)
                              (gx#&AST-source _%e153092%_)
                              (foldl gx#apply-mark
                                     (gx#&identifier-wrap-marks _%e153092%_)
                                     _%marks153093%_)))
                         (if (gx#syntax-quote? _%e153092%_)
                             _%e153092%_
                             (if (gx#AST? _%e153092%_)
                                 (_%lp153090%_
                                  (gx#&AST-e _%e153092%_)
                                  _%marks153093%_
                                  (gx#&AST-source _%e153092%_))
                                 (if (symbol? _%e153092%_)
                                     (gx#make-identifier-wrap
                                      _%e153092%_
                                      _%src153094%_
                                      (reverse _%marks153093%_))
                                     (if (null? _%marks153093%_)
                                         _%e153092%_
                                         (if (pair? _%e153092%_)
                                             (cons (gx#stx-wrap
                                                    (car _%e153092%_)
                                                    _%marks153093%_)
                                                   (gx#stx-wrap
                                                    (cdr _%e153092%_)
                                                    _%marks153093%_))
                                             (if (vector? _%e153092%_)
                                                 (vector-map
                                                  (lambda (_%$%g153103153105%_)
                                                    (gx#stx-wrap
                                                     _%$%g153103153105%_
                                                     _%marks153093%_))
                                                  _%e153092%_)
                                                 (if (box? _%e153092%_)
                                                     (box (gx#stx-wrap
                                                           (unbox _%e153092%_)
                                                           _%marks153093%_))
                                                     _%e153092%_)))))))))))))
        (lambda _g153244_
          (let ((_g153245_ (##length _g153244_)))
            (cond ((##fx= _g153245_ 1)
                   (apply (lambda (_%stx153113%_)
                            (let ((_%marks153115%_ '()))
                              (_%$%opt-lambda153085153110%_
                               _%stx153113%_
                               _%marks153115%_)))
                          _g153244_))
                  ((##fx= _g153245_ 2)
                   (apply _%$%opt-lambda153085153110%_ _g153244_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-unwrap
                    _g153244_)))))))
    (define gx#stx-wrap
      (lambda (_%stx153080%_ _%marks153081%_)
        (foldl (lambda (_%mark153083%_ _%stx153084%_)
                 (gx#stx-apply-mark _%stx153084%_ _%mark153083%_))
               _%stx153080%_
               _%marks153081%_)))
    (define gx#stx-rewrap
      (lambda (_%stx153074%_ _%marks153075%_)
        (foldr (lambda (_%mark153077%_ _%stx153078%_)
                 (gx#stx-apply-mark _%stx153078%_ _%mark153077%_))
               _%stx153074%_
               _%marks153075%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx153068%_ _%mark153069%_)
        (if (gx#syntax-quote? _%stx153068%_)
            _%stx153068%_
            (if (and (gx#syntax-wrap? _%stx153068%_)
                     (eq? _%mark153069%_ (gx#&syntax-wrap-mark _%stx153068%_)))
                (gx#&AST-e _%stx153068%_)
                (gx#make-syntax-wrap
                 _%stx153068%_
                 (gx#stx-source _%stx153068%_)
                 _%mark153069%_)))))
    (define gx#apply-mark
      (lambda (_%mark153032%_ _%marks153033%_)
        (let* ((_%$%marks153034153042%_ _%marks153033%_)
               (_%$%E153037153046%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%marks153034153042%_
                         '([hd . rest])
                         'else)
                  (void)))
               (_%$%else153036153050%_
                (lambda () (cons _%mark153032%_ _%marks153033%_)))
               (_%$%K153038153056%_
                (lambda (_%rest153053%_ _%hd153054%_)
                  (if (eq? _%mark153032%_ _%hd153054%_)
                      _%rest153053%_
                      (cons _%mark153032%_ _%marks153033%_)))))
          (if (pair? _%$%marks153034153042%_)
              (let ((_%$%hd153039153059%_ (##car _%$%marks153034153042%_))
                    (_%$%tl153040153061%_ (##cdr _%$%marks153034153042%_)))
                (let* ((_%hd153064%_ _%$%hd153039153059%_)
                       (_%rest153066%_ _%$%tl153040153061%_))
                  (_%$%K153038153056%_ _%rest153066%_ _%hd153064%_)))
              (_%$%else153036153050%_)))))
    (define gx#stx-e
      (lambda (_%stx153027%_)
        (if (gx#syntax-wrap? _%stx153027%_)
            (gx#stx-e (gx#&AST-e _%stx153027%_))
            (if (gx#AST? _%stx153027%_)
                (gx#&AST-e _%stx153027%_)
                _%stx153027%_))))
    (define gx#stx-source
      (lambda (_%stx153025%_)
        (if (gx#AST? _%stx153025%_) (gx#&AST-source _%stx153025%_) '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx153019%_ _%src153020%_)
        (if (or (gx#AST? _%stx153019%_) (not _%src153020%_))
            _%stx153019%_
            (gx#make-AST _%stx153019%_ _%src153020%_))))
    (define gx#stx-datum?
      (lambda (_%stx153017%_) (gx#self-quoting? (gx#stx-e _%stx153017%_))))
    (define gx#self-quoting?
      (lambda (_%x153000%_)
        (let ((_%$e153002%_ (immediate? _%x153000%_)))
          (if _%$e153002%_
              _%$e153002%_
              (let ((_%$e153005%_ (number? _%x153000%_)))
                (if _%$e153005%_
                    _%$e153005%_
                    (let ((_%$e153008%_ (keyword? _%x153000%_)))
                      (if _%$e153008%_
                          _%$e153008%_
                          (let ((_%$e153011%_ (string? _%x153000%_)))
                            (if _%$e153011%_
                                _%$e153011%_
                                (let ((_%$e153014%_ (vector? _%x153000%_)))
                                  (if _%$e153014%_
                                      _%$e153014%_
                                      (u8vector? _%x153000%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e152998%_) (boolean? (gx#stx-e _%e152998%_))))
    (define gx#stx-keyword?
      (lambda (_%e152996%_) (keyword? (gx#stx-e _%e152996%_))))
    (define gx#stx-char? (lambda (_%e152994%_) (char? (gx#stx-e _%e152994%_))))
    (define gx#stx-number?
      (lambda (_%e152992%_) (number? (gx#stx-e _%e152992%_))))
    (define gx#stx-fixnum?
      (lambda (_%e152990%_) (fixnum? (gx#stx-e _%e152990%_))))
    (define gx#stx-string?
      (lambda (_%e152988%_) (string? (gx#stx-e _%e152988%_))))
    (define gx#stx-null? (lambda (_%e152986%_) (null? (gx#stx-e _%e152986%_))))
    (define gx#stx-pair? (lambda (_%e152984%_) (pair? (gx#stx-e _%e152984%_))))
    (define gx#stx-list?
      (lambda (_%e152946%_)
        (let* ((_%$%g152947152956%_ (gx#stx-e _%e152946%_))
               (_%$%E152950152960%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g152947152956%_
                         '([_ . rest])
                         '(tail))
                  (void)))
               (_%$%try-match152949152971%_
                (lambda ()
                  (let* ((_%$%K152951152966%_
                          (lambda (_%tail152964%_) (null? _%tail152964%_)))
                         (_%tail152969%_ _%$%g152947152956%_))
                    (_%$%K152951152966%_ _%tail152969%_))))
               (_%$%K152952152976%_
                (lambda (_%rest152974%_) (gx#stx-list? _%rest152974%_))))
          (if (pair? _%$%g152947152956%_)
              (let* ((_%$%tl152954152979%_ (##cdr _%$%g152947152956%_))
                     (_%rest152982%_ _%$%tl152954152979%_))
                (_%$%K152952152976%_ _%rest152982%_))
              (_%$%try-match152949152971%_)))))
    (define gx#stx-pair/null?
      (lambda (_%e152939%_)
        (let* ((_%e152941%_ (gx#stx-e _%e152939%_))
               (_%$e152943%_ (pair? _%e152941%_)))
          (if _%$e152943%_ _%$e152943%_ (null? _%e152941%_)))))
    (define gx#stx-vector?
      (lambda (_%e152937%_) (vector? (gx#stx-e _%e152937%_))))
    (define gx#stx-box? (lambda (_%e152935%_) (box? (gx#stx-e _%e152935%_))))
    (define gx#stx-eq?
      (lambda (_%x152932%_ _%y152933%_)
        (eq? (gx#stx-e _%x152932%_) (gx#stx-e _%y152933%_))))
    (define gx#stx-eqv?
      (lambda (_%x152929%_ _%y152930%_)
        (eqv? (gx#stx-e _%x152929%_) (gx#stx-e _%y152930%_))))
    (define gx#stx-equal?
      (lambda (_%x152926%_ _%y152927%_)
        (equal? (gx#stx-e _%x152926%_) (gx#stx-e _%y152927%_))))
    (define gx#stx-false? (lambda (_%x152924%_) (not (gx#stx-e _%x152924%_))))
    (define gx#stx-identifier
      (lambda (_%template152921%_ . _%args152922%_)
        (gx#datum->syntax
         _%template152921%_
         (apply make-symbol (gx#syntax->datum _%args152922%_))
         (gx#stx-source _%template152921%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx152919%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap _%stx152919%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx152914%_)
        (if (gx#identifier-wrap? _%stx152914%_)
            (gx#&identifier-wrap-marks _%stx152914%_)
            (if (gx#syntax-quote? _%stx152914%_)
                (gx#&syntax-quote-marks _%stx152914%_)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx152914%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx152910%_)
        (let ((_%stx152912%_ (gx#stx-unwrap _%stx152910%_)))
          (if (gx#identifier-quote? _%stx152912%_)
              (gx#&syntax-quote-context _%stx152912%_)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx152865%_)
        (let* ((_%$%g152866152876%_ (gx#stx-e _%stx152865%_))
               (_%$%E152870152880%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g152866152876%_
                         '([hd . rest])
                         '([])
                         'else)
                  (void)))
               (_%$%else152869152884%_ (lambda () '#f))
               (_%$%try-match152868152892%_
                (lambda ()
                  (let ((_%$%K152871152889%_ (lambda () '#t)))
                    (if (null? _%$%g152866152876%_)
                        (_%$%K152871152889%_)
                        (_%$%else152869152884%_)))))
               (_%$%K152872152898%_
                (lambda (_%rest152895%_ _%hd152896%_)
                  (if (gx#identifier? _%hd152896%_)
                      (gx#identifier-list? _%rest152895%_)
                      '#f))))
          (if (pair? _%$%g152866152876%_)
              (let ((_%$%hd152873152901%_ (##car _%$%g152866152876%_))
                    (_%$%tl152874152903%_ (##cdr _%$%g152866152876%_)))
                (let* ((_%hd152906%_ _%$%hd152873152901%_)
                       (_%rest152908%_ _%$%tl152874152903%_))
                  (_%$%K152872152898%_ _%rest152908%_ _%hd152906%_)))
              (_%$%try-match152868152892%_)))))
    (define gx#genident
      (let ((_%$%opt-lambda152843152850%_
             (lambda (_%e152845%_ _%src152846%_)
               (gx#datum->syntax
                (if (gx#identifier? _%src152846%_) _%src152846%_ '#f)
                (make-symbol
                 '"$%"
                 (gensym (let ((_%e152848%_ (gx#stx-e _%e152845%_)))
                           (if (symbol? _%e152848%_) _%e152848%_ 'g))))
                _%src152846%_))))
        (lambda _g153246_
          (let ((_g153247_ (##length _g153246_)))
            (cond ((##fx= _g153247_ 0)
                   (apply (lambda ()
                            (let* ((_%e152854%_ 'g) (_%src152856%_ '#f))
                              (_%$%opt-lambda152843152850%_
                               _%e152854%_
                               _%src152856%_)))
                          _g153246_))
                  ((##fx= _g153247_ 1)
                   (apply (lambda (_%e152858%_)
                            (let ((_%src152860%_ '#f))
                              (_%$%opt-lambda152843152850%_
                               _%e152858%_
                               _%src152860%_)))
                          _g153246_))
                  ((##fx= _g153247_ 2)
                   (apply _%$%opt-lambda152843152850%_ _g153246_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#genident
                    _g153246_)))))))
    (define gx#gentemps
      (lambda (_%stx-lst152840%_)
        (gx#stx-map
         (lambda (_%x152842%_) (gx#genident _%x152842%_ _%x152842%_))
         _%stx-lst152840%_)))
    (define gx#syntax->list
      (lambda (_%stx152838%_) (gx#stx-map values _%stx152838%_)))
    (define gx#stx-car
      (lambda (_%stx152835%_)
        (declare (safe))
        (car (gx#syntax-e _%stx152835%_))))
    (define gx#stx-cdr
      (lambda (_%stx152832%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx152832%_))))
    (define gx#stx-length
      (lambda (_%stx152797%_)
        (let _%lp152799%_ ((_%rest152801%_ _%stx152797%_) (_%n152802%_ '0))
          (let* ((_%$%g152803152811%_ (gx#stx-e _%rest152801%_))
                 (_%$%E152806152815%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g152803152811%_
                           '([_ . rest])
                           'else)
                    (void)))
                 (_%$%else152805152819%_ (lambda () _%n152802%_))
                 (_%$%K152807152824%_
                  (lambda (_%rest152822%_)
                    (_%lp152799%_ _%rest152822%_ (fx1+ _%n152802%_)))))
            (if (pair? _%$%g152803152811%_)
                (let* ((_%$%tl152809152827%_ (##cdr _%$%g152803152811%_))
                       (_%rest152830%_ _%$%tl152809152827%_))
                  (_%$%K152807152824%_ _%rest152830%_))
                (_%$%else152805152819%_))))))
    (define gx#stx-for-each
      (lambda _g153248_
        (let ((_g153249_ (##length _g153248_)))
          (cond ((##fx= _g153249_ 2) (apply gx#stx-for-each1 _g153248_))
                ((##fx= _g153249_ 3) (apply gx#stx-for-each2 _g153248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g153248_))))))
    (define gx#stx-for-each1
      (lambda (_%f152740%_ _%stx152741%_)
        (if (procedure? _%f152740%_)
            '#!void
            (error '"expected procedure" _%f152740%_))
        (let _%lp152743%_ ((_%rest152745%_ _%stx152741%_))
          (let* ((_%$%g152746152756%_ (gx#syntax-e _%rest152745%_))
                 (_%$%E152750152760%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g152746152756%_
                           '([hd . rest])
                           '([])
                           'else)
                    (void)))
                 (_%$%else152749152764%_
                  (lambda () (_%f152740%_ _%rest152745%_)))
                 (_%$%try-match152748152772%_
                  (lambda ()
                    (let ((_%$%K152751152769%_ (lambda () '#!void)))
                      (if (null? _%$%g152746152756%_)
                          (_%$%K152751152769%_)
                          (_%$%else152749152764%_)))))
                 (_%$%K152752152778%_
                  (lambda (_%rest152775%_ _%hd152776%_)
                    (_%f152740%_ _%hd152776%_)
                    (_%lp152743%_ _%rest152775%_))))
            (if (pair? _%$%g152746152756%_)
                (let ((_%$%hd152753152781%_ (##car _%$%g152746152756%_))
                      (_%$%tl152754152783%_ (##cdr _%$%g152746152756%_)))
                  (let* ((_%hd152786%_ _%$%hd152753152781%_)
                         (_%rest152788%_ _%$%tl152754152783%_))
                    (_%$%K152752152778%_ _%rest152788%_ _%hd152786%_)))
                (_%$%try-match152748152772%_))))))
    (define gx#stx-for-each2
      (lambda (_%f152645%_ _%xstx152646%_ _%ystx152647%_)
        (if (procedure? _%f152645%_)
            '#!void
            (error '"expected procedure" _%f152645%_))
        (let _%lp152649%_ ((_%xrest152651%_ _%xstx152646%_)
                           (_%yrest152652%_ _%ystx152647%_))
          (let* ((_%$%g152653152663%_ (gx#syntax-e _%xrest152651%_))
                 (_%$%E152657152667%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g152653152663%_
                           '([xhd . xrest])
                           '((? (not null?)))
                           'else)
                    (void)))
                 (_%$%else152656152671%_ (lambda () '#!void))
                 (_%$%try-match152655152694%_
                  (lambda ()
                    (let ((_%$%K152658152691%_
                           (lambda ()
                             (let* ((_%$%yrest152675152680%_ _%yrest152652%_)
                                    (_%$%E152677152684%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%$%yrest152675152680%_
                                              '((? (not stx-null?))))
                                       (void)))
                                    (_%$%K152678152688%_
                                     (lambda ()
                                       (_%f152645%_
                                        _%xrest152651%_
                                        _%yrest152652%_))))
                               (if (not (gx#stx-null? _%$%yrest152675152680%_))
                                   (_%$%K152678152688%_)
                                   (_%$%E152677152684%_))))))
                      (if (not (null? _%$%g152653152663%_))
                          (_%$%K152658152691%_)
                          (_%$%else152656152671%_)))))
                 (_%$%K152659152728%_
                  (lambda (_%xrest152697%_ _%xhd152698%_)
                    (let* ((_%$%g152699152706%_ (gx#syntax-e _%yrest152652%_))
                           (_%$%E152701152710%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g152699152706%_
                                     '([yhd . yrest]))
                              (void)))
                           (_%$%K152702152716%_
                            (lambda (_%yrest152713%_ _%yhd152714%_)
                              (_%f152645%_ _%xhd152698%_ _%yhd152714%_)
                              (_%lp152649%_ _%xrest152697%_ _%yrest152713%_))))
                      (if (pair? _%$%g152699152706%_)
                          (let ((_%$%hd152703152719%_
                                 (##car _%$%g152699152706%_))
                                (_%$%tl152704152721%_
                                 (##cdr _%$%g152699152706%_)))
                            (let* ((_%yhd152724%_ _%$%hd152703152719%_)
                                   (_%yrest152726%_ _%$%tl152704152721%_))
                              (_%$%K152702152716%_
                               _%yrest152726%_
                               _%yhd152724%_)))
                          (_%$%E152701152710%_))))))
            (if (pair? _%$%g152653152663%_)
                (let ((_%$%hd152660152731%_ (##car _%$%g152653152663%_))
                      (_%$%tl152661152733%_ (##cdr _%$%g152653152663%_)))
                  (let* ((_%xhd152736%_ _%$%hd152660152731%_)
                         (_%xrest152738%_ _%$%tl152661152733%_))
                    (_%$%K152659152728%_ _%xrest152738%_ _%xhd152736%_)))
                (_%$%try-match152655152694%_))))))
    (define gx#stx-map
      (lambda _g153250_
        (let ((_g153251_ (##length _g153250_)))
          (cond ((##fx= _g153251_ 2) (apply gx#stx-map1 _g153250_))
                ((##fx= _g153251_ 3) (apply gx#stx-map2 _g153250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g153250_))))))
    (define gx#stx-map1
      (lambda (_%f152588%_ _%stx152589%_)
        (if (procedure? _%f152588%_)
            '#!void
            (error '"expected procedure" _%f152588%_))
        (let _%recur152591%_ ((_%rest152593%_ _%stx152589%_))
          (let* ((_%$%g152594152604%_ (gx#syntax-e _%rest152593%_))
                 (_%$%E152598152608%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g152594152604%_
                           '([hd . rest])
                           '([])
                           'else)
                    (void)))
                 (_%$%else152597152612%_
                  (lambda () (_%f152588%_ _%rest152593%_)))
                 (_%$%try-match152596152620%_
                  (lambda ()
                    (let ((_%$%K152599152617%_ (lambda () '())))
                      (if (null? _%$%g152594152604%_)
                          (_%$%K152599152617%_)
                          (_%$%else152597152612%_)))))
                 (_%$%K152600152626%_
                  (lambda (_%rest152623%_ _%hd152624%_)
                    (cons (_%f152588%_ _%hd152624%_)
                          (_%recur152591%_ _%rest152623%_)))))
            (if (pair? _%$%g152594152604%_)
                (let ((_%$%hd152601152629%_ (##car _%$%g152594152604%_))
                      (_%$%tl152602152631%_ (##cdr _%$%g152594152604%_)))
                  (let* ((_%hd152634%_ _%$%hd152601152629%_)
                         (_%rest152636%_ _%$%tl152602152631%_))
                    (_%$%K152600152626%_ _%rest152636%_ _%hd152634%_)))
                (_%$%try-match152596152620%_))))))
    (define gx#stx-map2
      (lambda (_%f152493%_ _%xstx152494%_ _%ystx152495%_)
        (if (procedure? _%f152493%_)
            '#!void
            (error '"expected procedure" _%f152493%_))
        (let _%recur152497%_ ((_%xrest152499%_ _%xstx152494%_)
                              (_%yrest152500%_ _%ystx152495%_))
          (let* ((_%$%g152501152511%_ (gx#syntax-e _%xrest152499%_))
                 (_%$%E152505152515%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g152501152511%_
                           '([xhd . xrest])
                           '((? (not null?)))
                           'else)
                    (void)))
                 (_%$%else152504152519%_ (lambda () '()))
                 (_%$%try-match152503152542%_
                  (lambda ()
                    (let ((_%$%K152506152539%_
                           (lambda ()
                             (let* ((_%$%yrest152523152528%_ _%yrest152500%_)
                                    (_%$%E152525152532%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%$%yrest152523152528%_
                                              '((? (not stx-null?))))
                                       (void)))
                                    (_%$%K152526152536%_
                                     (lambda ()
                                       (_%f152493%_
                                        _%xrest152499%_
                                        _%yrest152500%_))))
                               (if (not (gx#stx-null? _%$%yrest152523152528%_))
                                   (_%$%K152526152536%_)
                                   (_%$%E152525152532%_))))))
                      (if (not (null? _%$%g152501152511%_))
                          (_%$%K152506152539%_)
                          (_%$%else152504152519%_)))))
                 (_%$%K152507152576%_
                  (lambda (_%xrest152545%_ _%xhd152546%_)
                    (let* ((_%$%g152547152554%_ (gx#syntax-e _%yrest152500%_))
                           (_%$%E152549152558%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g152547152554%_
                                     '([yhd . yrest]))
                              (void)))
                           (_%$%K152550152564%_
                            (lambda (_%yrest152561%_ _%yhd152562%_)
                              (cons (_%f152493%_ _%xhd152546%_ _%yhd152562%_)
                                    (_%recur152497%_
                                     _%xrest152545%_
                                     _%yrest152561%_)))))
                      (if (pair? _%$%g152547152554%_)
                          (let ((_%$%hd152551152567%_
                                 (##car _%$%g152547152554%_))
                                (_%$%tl152552152569%_
                                 (##cdr _%$%g152547152554%_)))
                            (let* ((_%yhd152572%_ _%$%hd152551152567%_)
                                   (_%yrest152574%_ _%$%tl152552152569%_))
                              (_%$%K152550152564%_
                               _%yrest152574%_
                               _%yhd152572%_)))
                          (_%$%E152549152558%_))))))
            (if (pair? _%$%g152501152511%_)
                (let ((_%$%hd152508152579%_ (##car _%$%g152501152511%_))
                      (_%$%tl152509152581%_ (##cdr _%$%g152501152511%_)))
                  (let* ((_%xhd152584%_ _%$%hd152508152579%_)
                         (_%xrest152586%_ _%$%tl152509152581%_))
                    (_%$%K152507152576%_ _%xrest152586%_ _%xhd152584%_)))
                (_%$%try-match152503152542%_))))))
    (define gx#stx-andmap
      (lambda (_%f152443%_ _%stx152444%_)
        (if (procedure? _%f152443%_)
            '#!void
            (error '"expected procedure" _%f152443%_))
        (let _%lp152446%_ ((_%rest152448%_ _%stx152444%_))
          (let* ((_%$%g152449152459%_ (gx#syntax-e _%rest152448%_))
                 (_%$%E152453152463%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g152449152459%_
                           '([hd . rest])
                           '([])
                           'else)
                    (void)))
                 (_%$%else152452152467%_
                  (lambda () (_%f152443%_ _%rest152448%_)))
                 (_%$%try-match152451152475%_
                  (lambda ()
                    (let ((_%$%K152454152472%_ (lambda () '#t)))
                      (if (null? _%$%g152449152459%_)
                          (_%$%K152454152472%_)
                          (_%$%else152452152467%_)))))
                 (_%$%K152455152481%_
                  (lambda (_%rest152478%_ _%hd152479%_)
                    (if (_%f152443%_ _%hd152479%_)
                        (_%lp152446%_ _%rest152478%_)
                        '#f))))
            (if (pair? _%$%g152449152459%_)
                (let ((_%$%hd152456152484%_ (##car _%$%g152449152459%_))
                      (_%$%tl152457152486%_ (##cdr _%$%g152449152459%_)))
                  (let* ((_%hd152489%_ _%$%hd152456152484%_)
                         (_%rest152491%_ _%$%tl152457152486%_))
                    (_%$%K152455152481%_ _%rest152491%_ _%hd152489%_)))
                (_%$%try-match152451152475%_))))))
    (define gx#stx-ormap
      (lambda (_%f152390%_ _%stx152391%_)
        (if (procedure? _%f152390%_)
            '#!void
            (error '"expected procedure" _%f152390%_))
        (let _%lp152393%_ ((_%rest152395%_ _%stx152391%_))
          (let* ((_%$%g152396152406%_ (gx#syntax-e _%rest152395%_))
                 (_%$%E152400152410%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g152396152406%_
                           '([hd . rest])
                           '([])
                           'else)
                    (void)))
                 (_%$%else152399152414%_
                  (lambda () (_%f152390%_ _%rest152395%_)))
                 (_%$%try-match152398152422%_
                  (lambda ()
                    (let ((_%$%K152401152419%_ (lambda () '#f)))
                      (if (null? _%$%g152396152406%_)
                          (_%$%K152401152419%_)
                          (_%$%else152399152414%_)))))
                 (_%$%K152402152431%_
                  (lambda (_%rest152425%_ _%hd152426%_)
                    (let ((_%$e152428%_ (_%f152390%_ _%hd152426%_)))
                      (if _%$e152428%_
                          _%$e152428%_
                          (_%lp152393%_ _%rest152425%_))))))
            (if (pair? _%$%g152396152406%_)
                (let ((_%$%hd152403152434%_ (##car _%$%g152396152406%_))
                      (_%$%tl152404152436%_ (##cdr _%$%g152396152406%_)))
                  (let* ((_%hd152439%_ _%$%hd152403152434%_)
                         (_%rest152441%_ _%$%tl152404152436%_))
                    (_%$%K152402152431%_ _%rest152441%_ _%hd152439%_)))
                (_%$%try-match152398152422%_))))))
    (define gx#stx-foldl
      (lambda (_%f152338%_ _%iv152339%_ _%stx152340%_)
        (if (procedure? _%f152338%_)
            '#!void
            (error '"expected procedure" _%f152338%_))
        (let _%lp152342%_ ((_%r152344%_ _%iv152339%_)
                           (_%rest152345%_ _%stx152340%_))
          (let* ((_%$%g152346152356%_ (gx#syntax-e _%rest152345%_))
                 (_%$%E152350152360%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g152346152356%_
                           '([hd . rest])
                           '([])
                           'else)
                    (void)))
                 (_%$%else152349152364%_
                  (lambda () (_%f152338%_ _%rest152345%_ _%r152344%_)))
                 (_%$%try-match152348152372%_
                  (lambda ()
                    (let ((_%$%K152351152369%_ (lambda () _%r152344%_)))
                      (if (null? _%$%g152346152356%_)
                          (_%$%K152351152369%_)
                          (_%$%else152349152364%_)))))
                 (_%$%K152352152378%_
                  (lambda (_%rest152375%_ _%hd152376%_)
                    (_%lp152342%_
                     (_%f152338%_ _%hd152376%_ _%r152344%_)
                     _%rest152375%_))))
            (if (pair? _%$%g152346152356%_)
                (let ((_%$%hd152353152381%_ (##car _%$%g152346152356%_))
                      (_%$%tl152354152383%_ (##cdr _%$%g152346152356%_)))
                  (let* ((_%hd152386%_ _%$%hd152353152381%_)
                         (_%rest152388%_ _%$%tl152354152383%_))
                    (_%$%K152352152378%_ _%rest152388%_ _%hd152386%_)))
                (_%$%try-match152348152372%_))))))
    (define gx#stx-foldr
      (lambda (_%f152287%_ _%iv152288%_ _%stx152289%_)
        (if (procedure? _%f152287%_)
            '#!void
            (error '"expected procedure" _%f152287%_))
        (let _%recur152291%_ ((_%rest152293%_ _%stx152289%_))
          (let* ((_%$%g152294152304%_ (gx#syntax-e _%rest152293%_))
                 (_%$%E152298152308%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g152294152304%_
                           '([hd . rest])
                           '([])
                           'else)
                    (void)))
                 (_%$%else152297152312%_
                  (lambda () (_%f152287%_ _%rest152293%_ _%iv152288%_)))
                 (_%$%try-match152296152320%_
                  (lambda ()
                    (let ((_%$%K152299152317%_ (lambda () _%iv152288%_)))
                      (if (null? _%$%g152294152304%_)
                          (_%$%K152299152317%_)
                          (_%$%else152297152312%_)))))
                 (_%$%K152300152326%_
                  (lambda (_%rest152323%_ _%hd152324%_)
                    (_%f152287%_
                     _%hd152324%_
                     (_%recur152291%_ _%rest152323%_)))))
            (if (pair? _%$%g152294152304%_)
                (let ((_%$%hd152301152329%_ (##car _%$%g152294152304%_))
                      (_%$%tl152302152331%_ (##cdr _%$%g152294152304%_)))
                  (let* ((_%hd152334%_ _%$%hd152301152329%_)
                         (_%rest152336%_ _%$%tl152302152331%_))
                    (_%$%K152300152326%_ _%rest152336%_ _%hd152334%_)))
                (_%$%try-match152296152320%_))))))
    (define gx#stx-reverse
      (lambda (_%stx152285%_) (gx#stx-foldl cons '() _%stx152285%_)))
    (define gx#stx-last
      (lambda (_%stx152246%_)
        (let _%lp152248%_ ((_%rest152250%_ _%stx152246%_))
          (let* ((_%$%g152251152259%_ (gx#syntax-e _%rest152250%_))
                 (_%$%E152254152263%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g152251152259%_
                           '([hd . rest])
                           'else)
                    (void)))
                 (_%$%else152253152267%_ (lambda () _%rest152250%_))
                 (_%$%K152255152273%_
                  (lambda (_%rest152270%_ _%hd152271%_)
                    (if (gx#stx-null? _%rest152270%_)
                        _%hd152271%_
                        (_%lp152248%_ _%rest152270%_)))))
            (if (pair? _%$%g152251152259%_)
                (let ((_%$%hd152256152276%_ (##car _%$%g152251152259%_))
                      (_%$%tl152257152278%_ (##cdr _%$%g152251152259%_)))
                  (let* ((_%hd152281%_ _%$%hd152256152276%_)
                         (_%rest152283%_ _%$%tl152257152278%_))
                    (_%$%K152255152273%_ _%rest152283%_ _%hd152281%_)))
                (_%$%else152253152267%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx152217%_)
        (let _%lp152219%_ ((_%hd152221%_ _%stx152217%_))
          (let* ((_%$%g152222152229%_ (gx#syntax-e _%hd152221%_))
                 (_%$%E152224152233%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g152222152229%_
                           '([_ . rest]))
                    (void)))
                 (_%$%K152225152238%_
                  (lambda (_%rest152236%_)
                    (if (gx#stx-pair? _%rest152236%_)
                        (_%lp152219%_ _%rest152236%_)
                        _%hd152221%_))))
            (if (pair? _%$%g152222152229%_)
                (let* ((_%$%tl152227152241%_ (##cdr _%$%g152222152229%_))
                       (_%rest152244%_ _%$%tl152227152241%_))
                  (_%$%K152225152238%_ _%rest152244%_))
                (_%$%E152224152233%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx152186%_ _%k152187%_)
        (let _%lp152189%_ ((_%rest152191%_ _%stx152186%_)
                           (_%k152192%_ _%k152187%_))
          (if (fxpositive? _%k152192%_)
              (let* ((_%$%g152193152200%_ (gx#syntax-e _%rest152191%_))
                     (_%$%E152195152204%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g152193152200%_
                               '([_ . rest]))
                        (void)))
                     (_%$%K152196152209%_
                      (lambda (_%rest152207%_)
                        (_%lp152189%_ _%rest152207%_ (fx1- _%k152192%_)))))
                (if (pair? _%$%g152193152200%_)
                    (let* ((_%$%tl152198152212%_ (##cdr _%$%g152193152200%_))
                           (_%rest152215%_ _%$%tl152198152212%_))
                      (_%$%K152196152209%_ _%rest152215%_))
                    (_%$%E152195152204%_)))
              _%rest152191%_))))
    (define gx#stx-list-ref
      (lambda (_%stx152183%_ _%k152184%_)
        (gx#stx-car (gx#stx-list-tail _%stx152183%_ _%k152184%_))))
    (define gx#stx-plist?
      (let ((_%$%opt-lambda152093152173%_
             (lambda (_%stx152095%_ _%key?152096%_)
               (if (procedure? _%key?152096%_)
                   '#!void
                   (error '"expected procedure" _%key?152096%_))
               (let _%lp152098%_ ((_%rest152100%_ _%stx152095%_))
                 (let* ((_%$%g152101152111%_ (gx#stx-e _%rest152100%_))
                        (_%$%E152105152115%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%$%g152101152111%_
                                  '([hd . rest])
                                  '([])
                                  'else)
                           (void)))
                        (_%$%else152104152119%_ (lambda () '#f))
                        (_%$%try-match152103152127%_
                         (lambda ()
                           (let ((_%$%K152106152124%_ (lambda () '#t)))
                             (if (null? _%$%g152101152111%_)
                                 (_%$%K152106152124%_)
                                 (_%$%else152104152119%_)))))
                        (_%$%K152107152161%_
                         (lambda (_%rest152130%_ _%hd152131%_)
                           (if (_%key?152096%_ _%hd152131%_)
                               (let* ((_%$%g152132152140%_
                                       (gx#stx-e _%rest152130%_))
                                      (_%$%E152135152144%_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _%$%g152132152140%_
                                                '([_ . rest])
                                                'else)
                                         (void)))
                                      (_%$%else152134152148%_ (lambda () '#f))
                                      (_%$%K152136152153%_
                                       (lambda (_%rest152151%_)
                                         (_%lp152098%_ _%rest152151%_))))
                                 (if (pair? _%$%g152132152140%_)
                                     (let* ((_%$%tl152138152156%_
                                             (##cdr _%$%g152132152140%_))
                                            (_%rest152159%_
                                             _%$%tl152138152156%_))
                                       (_%$%K152136152153%_ _%rest152159%_))
                                     (_%$%else152134152148%_)))
                               '#f))))
                   (if (pair? _%$%g152101152111%_)
                       (let ((_%$%hd152108152164%_ (##car _%$%g152101152111%_))
                             (_%$%tl152109152166%_
                              (##cdr _%$%g152101152111%_)))
                         (let* ((_%hd152169%_ _%$%hd152108152164%_)
                                (_%rest152171%_ _%$%tl152109152166%_))
                           (_%$%K152107152161%_ _%rest152171%_ _%hd152169%_)))
                       (_%$%try-match152103152127%_)))))))
        (lambda _g153252_
          (let ((_g153253_ (##length _g153252_)))
            (cond ((##fx= _g153253_ 1)
                   (apply (lambda (_%stx152176%_)
                            (let ((_%key?152178%_ gx#stx-keyword?))
                              (_%$%opt-lambda152093152173%_
                               _%stx152176%_
                               _%key?152178%_)))
                          _g153252_))
                  ((##fx= _g153253_ 2)
                   (apply _%$%opt-lambda152093152173%_ _g153252_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-plist?
                    _g153252_)))))))
    (define gx#stx-getq
      (let ((_%$%opt-lambda152011152082%_
             (lambda (_%key152013%_ _%stx152014%_ _%key=?152015%_)
               (if (procedure? _%key=?152015%_)
                   '#!void
                   (error '"expected procedure" _%key=?152015%_))
               (let _%lp152017%_ ((_%rest152019%_ _%stx152014%_))
                 (let* ((_%$%g152020152028%_ (gx#syntax-e _%rest152019%_))
                        (_%$%E152023152032%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%$%g152020152028%_
                                  '([hd . rest])
                                  'else)
                           (void)))
                        (_%$%else152022152036%_ (lambda () '#f))
                        (_%$%K152024152070%_
                         (lambda (_%rest152039%_ _%hd152040%_)
                           (let* ((_%$%g152041152048%_
                                   (gx#syntax-e _%rest152039%_))
                                  (_%$%E152043152052%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%g152041152048%_
                                            '([val . rest]))
                                     (void)))
                                  (_%$%K152044152058%_
                                   (lambda (_%rest152055%_ _%val152056%_)
                                     (if (_%key=?152015%_
                                          _%hd152040%_
                                          _%key152013%_)
                                         _%val152056%_
                                         (_%lp152017%_ _%rest152055%_)))))
                             (if (pair? _%$%g152041152048%_)
                                 (let ((_%$%hd152045152061%_
                                        (##car _%$%g152041152048%_))
                                       (_%$%tl152046152063%_
                                        (##cdr _%$%g152041152048%_)))
                                   (let* ((_%val152066%_ _%$%hd152045152061%_)
                                          (_%rest152068%_
                                           _%$%tl152046152063%_))
                                     (_%$%K152044152058%_
                                      _%rest152068%_
                                      _%val152066%_)))
                                 (_%$%E152043152052%_))))))
                   (if (pair? _%$%g152020152028%_)
                       (let ((_%$%hd152025152073%_ (##car _%$%g152020152028%_))
                             (_%$%tl152026152075%_
                              (##cdr _%$%g152020152028%_)))
                         (let* ((_%hd152078%_ _%$%hd152025152073%_)
                                (_%rest152080%_ _%$%tl152026152075%_))
                           (_%$%K152024152070%_ _%rest152080%_ _%hd152078%_)))
                       (_%$%else152022152036%_)))))))
        (lambda _g153254_
          (let ((_g153255_ (##length _g153254_)))
            (cond ((##fx= _g153255_ 2)
                   (apply (lambda (_%key152085%_ _%stx152086%_)
                            (let ((_%key=?152088%_ gx#stx-eq?))
                              (_%$%opt-lambda152011152082%_
                               _%key152085%_
                               _%stx152086%_
                               _%key=?152088%_)))
                          _g153254_))
                  ((##fx= _g153255_ 3)
                   (apply _%$%opt-lambda152011152082%_ _g153254_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-getq
                    _g153254_)))))))))
