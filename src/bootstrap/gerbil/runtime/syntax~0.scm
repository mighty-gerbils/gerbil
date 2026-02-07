(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1770505716)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (__make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args163016%_
        (apply make-instance SyntaxError::t _%$args163016%_)))
    (define SyntaxError-message
      (__make-class-slot-accessor SyntaxError::t 'message))
    (define SyntaxError-irritants
      (__make-class-slot-accessor SyntaxError::t 'irritants))
    (define SyntaxError-where
      (__make-class-slot-accessor SyntaxError::t 'where))
    (define SyntaxError-context
      (__make-class-slot-accessor SyntaxError::t 'context))
    (define SyntaxError-phi (__make-class-slot-accessor SyntaxError::t 'phi))
    (define SyntaxError-marks
      (__make-class-slot-accessor SyntaxError::t 'marks))
    (define SyntaxError-continuation
      (__make-class-slot-accessor SyntaxError::t 'continuation))
    (define SyntaxError-message-set!
      (__make-class-slot-mutator SyntaxError::t 'message))
    (define SyntaxError-irritants-set!
      (__make-class-slot-mutator SyntaxError::t 'irritants))
    (define SyntaxError-where-set!
      (__make-class-slot-mutator SyntaxError::t 'where))
    (define SyntaxError-context-set!
      (__make-class-slot-mutator SyntaxError::t 'context))
    (define SyntaxError-phi-set!
      (__make-class-slot-mutator SyntaxError::t 'phi))
    (define SyntaxError-marks-set!
      (__make-class-slot-mutator SyntaxError::t 'marks))
    (define SyntaxError-continuation-set!
      (__make-class-slot-mutator SyntaxError::t 'continuation))
    (define &SyntaxError-message
      (__make-class-slot-unchecked-accessor SyntaxError::t 'message))
    (define &SyntaxError-irritants
      (__make-class-slot-unchecked-accessor SyntaxError::t 'irritants))
    (define &SyntaxError-where
      (__make-class-slot-unchecked-accessor SyntaxError::t 'where))
    (define &SyntaxError-context
      (__make-class-slot-unchecked-accessor SyntaxError::t 'context))
    (define &SyntaxError-phi
      (__make-class-slot-unchecked-accessor SyntaxError::t 'phi))
    (define &SyntaxError-marks
      (__make-class-slot-unchecked-accessor SyntaxError::t 'marks))
    (define &SyntaxError-continuation
      (__make-class-slot-unchecked-accessor SyntaxError::t 'continuation))
    (define &SyntaxError-message-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'message))
    (define &SyntaxError-irritants-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'irritants))
    (define &SyntaxError-where-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'where))
    (define &SyntaxError-context-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'context))
    (define &SyntaxError-phi-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'phi))
    (define &SyntaxError-marks-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'marks))
    (define &SyntaxError-continuation-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'continuation))
    (define SyntaxError::display-exception
      (lambda (_%self162735%_ _%port162736%_)
        (let ((_%self162739%_ _%self162735%_))
          (letrec ((_%location162750%_
                    (lambda ()
                      (letrec ((_%from-irritants162891%_
                                (lambda ()
                                  (let _%lp162976%_ ((_%rest162978%_
                                                      (##unchecked-structure-ref
                                                       _%self162739%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest162979162987%_
                                            _%rest162978%_)
                                           (_%else162981162995%_
                                            (lambda () '#f))
                                           (_%K162983163004%_
                                            (lambda (_%rest162998%_
                                                     _%hd162999%_)
                                              (let ((_%$e163001%_
                                                     (__AST-source
                                                      _%hd162999%_)))
                                                (if _%$e163001%_
                                                    _%$e163001%_
                                                    (_%lp162976%_
                                                     _%rest162998%_))))))
                                      (if (pair? _%rest162979162987%_)
                                          (let ((_%hd162984163007%_
                                                 (##car _%rest162979162987%_))
                                                (_%tl162985163009%_
                                                 (##cdr _%rest162979162987%_)))
                                            (let* ((_%hd163012%_
                                                    _%hd162984163007%_)
                                                   (_%rest163014%_
                                                    _%tl162985163009%_))
                                              (_%K162983163004%_
                                               _%rest163014%_
                                               _%hd163012%_)))
                                          (_%else162981162995%_))))))
                               (_%from-context162892%_
                                (lambda ()
                                  (let _%lp162898%_ ((_%rest162900%_
                                                      (##unchecked-structure-ref
                                                       _%self162739%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest162901162909%_
                                            _%rest162900%_)
                                           (_%else162903162917%_
                                            (lambda () '#f))
                                           (_%K162905162963%_
                                            (lambda (_%rest162920%_
                                                     _%hd162921%_)
                                              (let* ((_%hd162922162932%_
                                                      _%hd162921%_)
                                                     (_%else162924162940%_
                                                      (lambda ()
                                                        (_%lp162898%_
                                                         _%rest162920%_)))
                                                     (_%K162926162948%_
                                                      (lambda (_%loc162943%_)
                                                        (let ((_%$e162945%_
                                                               (__AST-source
                                                                _%loc162943%_)))
                                                          (if _%$e162945%_
                                                              _%$e162945%_
                                                              (_%lp162898%_
                                                               _%rest162920%_))))))
                                                (if (pair? _%hd162922162932%_)
                                                    (let ((_%hd162927162951%_
                                                           (##car _%hd162922162932%_))
                                                          (_%tl162928162953%_
                                                           (##cdr _%hd162922162932%_)))
                                                      (if (##eq? _%hd162927162951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl162928162953%_)
                      (let ((_%hd162929162956%_ (##car _%tl162928162953%_))
                            (_%tl162930162958%_ (##cdr _%tl162928162953%_)))
                        (let ((_%loc162961%_ _%hd162929162956%_))
                          (if (null? _%tl162930162958%_)
                              (_%K162926162948%_ _%loc162961%_)
                              (_%else162924162940%_))))
                      (_%else162924162940%_))
                  (_%else162924162940%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else162924162940%_))))))
                                      (if (pair? _%rest162901162909%_)
                                          (let ((_%hd162906162966%_
                                                 (##car _%rest162901162909%_))
                                                (_%tl162907162968%_
                                                 (##cdr _%rest162901162909%_)))
                                            (let* ((_%hd162971%_
                                                    _%hd162906162966%_)
                                                   (_%rest162973%_
                                                    _%tl162907162968%_))
                                              (_%K162905162963%_
                                               _%rest162973%_
                                               _%hd162971%_)))
                                          (_%else162903162917%_)))))))
                        (let ((_%$e162894%_ (_%from-irritants162891%_)))
                          (if _%$e162894%_
                              _%$e162894%_
                              (_%from-context162892%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e162753%_ (_%location162750%_)))
                 (if _%$e162753%_
                     ((lambda (_%loc162756%_)
                        (##display-locat _%loc162756%_ '#t _%port162736%_))
                      _%$e162753%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self162739%_ '2 '#f '#f))
               (let ((_%$e162759%_
                      (##unchecked-structure-ref _%self162739%_ '4 '#f '#f)))
                 (if _%$e162759%_
                     ((lambda (_%where162762%_)
                        (displayln '"--- Context: ")
                        (let _%lp162764%_ ((_%rest162766%_ _%where162762%_))
                          (let* ((_%rest162767162775%_ _%rest162766%_)
                                 (_%else162769162783%_ (lambda () '#!void))
                                 (_%K162771162833%_
                                  (lambda (_%rest162786%_ _%hd162787%_)
                                    (let* ((_%hd162788162798%_ _%hd162787%_)
                                           (_%else162790162806%_
                                            (lambda ()
                                              (displayln '" at " _%hd162787%_)
                                              (_%lp162764%_ _%rest162786%_)))
                                           (_%K162792162818%_
                                            (lambda (_%ctx162809%_)
                                              (let ((_%$e162811%_
                                                     (__AST-source
                                                      _%ctx162809%_)))
                                                (if _%$e162811%_
                                                    ((lambda (_%loc162814%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc162814%_
                                                        '#t
                                                        _%port162736%_)
                                                       (newline)
                                                       (_%lp162764%_
                                                        _%rest162786%_))
                                                     _%$e162811%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx162809%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx162809%_)
                                                          (_%lp162764%_
                                                           _%rest162786%_))
                                                        (_%lp162764%_
                                                         _%rest162786%_)))))))
                                      (if (pair? _%hd162788162798%_)
                                          (let ((_%hd162793162821%_
                                                 (##car _%hd162788162798%_))
                                                (_%tl162794162823%_
                                                 (##cdr _%hd162788162798%_)))
                                            (if (##eq? _%hd162793162821%_ '@)
                                                (if (pair? _%tl162794162823%_)
                                                    (let ((_%hd162795162826%_
                                                           (##car _%tl162794162823%_))
                                                          (_%tl162796162828%_
                                                           (##cdr _%tl162794162823%_)))
                                                      (let ((_%ctx162831%_
                                                             _%hd162795162826%_))
                                                        (if (null? _%tl162796162828%_)
                                                            (_%K162792162818%_
                                                             _%ctx162831%_)
                                                            (_%else162790162806%_))))
                                                    (_%else162790162806%_))
                                                (_%else162790162806%_)))
                                          (_%else162790162806%_))))))
                            (if (pair? _%rest162767162775%_)
                                (let ((_%hd162772162836%_
                                       (##car _%rest162767162775%_))
                                      (_%tl162773162838%_
                                       (##cdr _%rest162767162775%_)))
                                  (let* ((_%hd162841%_ _%hd162772162836%_)
                                         (_%rest162843%_ _%tl162773162838%_))
                                    (_%K162771162833%_
                                     _%rest162843%_
                                     _%hd162841%_)))
                                '#!void))))
                      _%$e162759%_)
                     '#!void))
               (let* ((_%self.irritants162844162852%_
                       (##unchecked-structure-ref _%self162739%_ '3 '#f '#f))
                      (_%else162846162860%_ (lambda () '#!void))
                      (_%K162848162873%_
                       (lambda (_%rest162863%_ _%stx162864%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx162864%_)
                         (for-each
                          (lambda (_%detail162866%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail162866%_))
                            (let ((_%$e162868%_
                                   (__AST-source _%detail162866%_)))
                              (if _%$e162868%_
                                  ((lambda (_%loc162871%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc162871%_
                                      '#t
                                      _%port162736%_))
                                   _%$e162868%_)
                                  '#!void))
                            (newline))
                          _%rest162863%_))))
                 (if (pair? _%self.irritants162844162852%_)
                     (let ((_%hd162849162876%_
                            (##car _%self.irritants162844162852%_))
                           (_%tl162850162878%_
                            (##cdr _%self.irritants162844162852%_)))
                       (let* ((_%stx162881%_ _%hd162849162876%_)
                              (_%rest162883%_ _%tl162850162878%_))
                         (_%K162848162873%_ _%rest162883%_ _%stx162881%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont162884162886%_
                          (##unchecked-structure-ref
                           _%self162739%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont162884162886%_
                         (let ((_%cont162888%_ _%cont162884162886%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont162888%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port162736%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass162598%_ SyntaxError::t) (_%klass162603%_ _%klass162598%_))
      (__seal-class! _%klass162603%_))
    (define make-syntax-error
      (lambda (_%message162591%_
               _%irritants162592%_
               _%where162593%_
               _%context162594%_
               _%marks162595%_
               _%phi162596%_)
        (let ((__obj163113
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj163113 _%message162591%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj163113
           _%irritants162592%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj163113 _%where162593%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj163113 _%context162594%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj163113 _%marks162595%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj163113 _%phi162596%_ '6 '#f '#f)
          __obj163113)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where162586%_
               _%message162587%_
               _%stx162588%_
               .
               _%details162589%_)
        (raise (make-syntax-error
                _%message162587%_
                (cons _%stx162588%_ _%details162589%_)
                _%where162586%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (__make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args162583%_ (apply make-instance AST::t _%$args162583%_)))
    (define AST-e (__make-class-slot-accessor AST::t 'e))
    (define AST-source (__make-class-slot-accessor AST::t 'source))
    (define AST-e-set! (__make-class-slot-mutator AST::t 'e))
    (define AST-source-set! (__make-class-slot-mutator AST::t 'source))
    (define &AST-e (__make-class-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (__make-class-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (__make-class-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (__make-class-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_%stx162581%_)
        (if (##structure-instance-of? _%stx162581%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx162581%_ '1 '#f '#f)
            _%stx162581%_)))
    (define __AST-source
      (lambda (_%stx162572%_)
        (let _%lp162574%_ ((_%src162576%_ _%stx162572%_))
          (if (##structure-instance-of? _%src162576%_ 'gerbil#AST::t)
              (_%lp162574%_
               (##unchecked-structure-ref _%src162576%_ '2 '#f '#f))
              (if (##locat? _%src162576%_) _%src162576%_ '#f)))))
    (define __AST
      (lambda (_%e162564%_ _%src-stx162565%_)
        (let ((_%src162567%_ (__AST-source _%src-stx162565%_)))
          (if (or (##structure-instance-of? _%e162564%_ 'gerbil#AST::t)
                  (not _%src162567%_))
              _%e162564%_
              (##structure AST::t _%e162564%_ _%src162567%_)))))
    (define __AST-eq?
      (lambda (_%stx162561%_ _%obj162562%_)
        (eq? (__AST-e _%stx162561%_) _%obj162562%_)))
    (define __AST-pair?
      (lambda (_%stx162559%_) (pair? (__AST-e _%stx162559%_))))
    (define __AST-null?
      (lambda (_%stx162557%_) (null? (__AST-e _%stx162557%_))))
    (define __AST-datum?
      (lambda (_%stx162538%_)
        (let* ((_%e162540%_ (__AST-e _%stx162538%_))
               (_%$e162542%_ (number? _%e162540%_)))
          (if _%$e162542%_
              _%$e162542%_
              (let ((_%$e162545%_ (string? _%e162540%_)))
                (if _%$e162545%_
                    _%$e162545%_
                    (let ((_%$e162548%_ (char? _%e162540%_)))
                      (if _%$e162548%_
                          _%$e162548%_
                          (let ((_%$e162551%_ (keyword? _%e162540%_)))
                            (if _%$e162551%_
                                _%$e162551%_
                                (let ((_%$e162554%_ (boolean? _%e162540%_)))
                                  (if _%$e162554%_
                                      _%$e162554%_
                                      (eq? _%e162540%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx162536%_) (symbol? (__AST-e _%stx162536%_))))
    (define __AST-id-list?__%
      (lambda (_%stx162487%_ _%tail?162488%_)
        (let _%lp162490%_ ((_%rest162492%_ _%stx162487%_))
          (let* ((_%$e162494%_ _%rest162492%_)
                 (_%$E162496162509%_
                  (lambda ()
                    (let* ((_%$E162497162504%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e162494%_)))
                           (_%rest162507%_ _%$e162494%_))
                      (_%tail?162488%_ _%rest162507%_)))))
            (if (__AST-pair? _%$e162494%_)
                (let* ((_%$tgt162498162512%_ (__AST-e _%$e162494%_))
                       (_%$hd162499162515%_ (##car _%$tgt162498162512%_))
                       (_%$tl162500162518%_ (##cdr _%$tgt162498162512%_))
                       (_%hd162522%_ _%$hd162499162515%_)
                       (_%rest162524%_ _%$tl162500162518%_))
                  (if (__AST-id? _%hd162522%_)
                      (_%lp162490%_ _%rest162524%_)
                      '#f))
                (_%$E162496162509%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx162529%_)
        (let ((_%tail?162531%_ __AST-null?))
          (__AST-id-list?__% _%stx162529%_ _%tail?162531%_))))
    (define __AST-id-list?
      (lambda _g163115_
        (let ((_g163116_ (##length _g163115_)))
          (cond ((##fx= _g163116_ 1) (apply __AST-id-list?__0 _g163115_))
                ((##fx= _g163116_ 2) (apply __AST-id-list?__% _g163115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g163115_))))))
    (define __AST-bind-list?
      (lambda (_%stx162479%_)
        (__AST-id-list?__%
         _%stx162479%_
         (lambda (_%e162481%_)
           (let ((_%$e162483%_ (__AST-null? _%e162481%_)))
             (if _%$e162483%_ _%$e162483%_ (__AST-id? _%e162481%_)))))))
    (define __AST-list?__%
      (lambda (_%stx162432%_ _%tail?162433%_)
        (let _%lp162435%_ ((_%rest162437%_ _%stx162432%_))
          (let* ((_%$e162439%_ _%rest162437%_)
                 (_%$E162441162454%_
                  (lambda ()
                    (let* ((_%$E162442162449%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e162439%_)))
                           (_%rest162452%_ _%$e162439%_))
                      (_%tail?162433%_ _%rest162452%_)))))
            (if (__AST-pair? _%$e162439%_)
                (let* ((_%$tgt162443162457%_ (__AST-e _%$e162439%_))
                       (_%$hd162444162460%_ (##car _%$tgt162443162457%_))
                       (_%$tl162445162463%_ (##cdr _%$tgt162443162457%_))
                       (_%rest162467%_ _%$tl162445162463%_))
                  (_%lp162435%_ _%rest162467%_))
                (_%$E162441162454%_))))))
    (define __AST-list?__0
      (lambda (_%stx162472%_)
        (let ((_%tail?162474%_ __AST-null?))
          (__AST-list?__% _%stx162472%_ _%tail?162474%_))))
    (define __AST-list?
      (lambda _g163117_
        (let ((_g163118_ (##length _g163117_)))
          (cond ((##fx= _g163118_ 1) (apply __AST-list?__0 _g163117_))
                ((##fx= _g163118_ 2) (apply __AST-list?__% _g163117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g163117_))))))
    (define __AST->list
      (lambda (_%stx162397%_)
        (let* ((_%$e162399%_ _%stx162397%_)
               (_%$E162401162414%_
                (lambda ()
                  (let* ((_%$E162402162409%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e162399%_)))
                         (_%rest162412%_ _%$e162399%_))
                    (__AST-e _%rest162412%_)))))
          (if (__AST-pair? _%$e162399%_)
              (let* ((_%$tgt162403162417%_ (__AST-e _%$e162399%_))
                     (_%$hd162404162420%_ (##car _%$tgt162403162417%_))
                     (_%$tl162405162423%_ (##cdr _%$tgt162403162417%_))
                     (_%hd162427%_ _%$hd162404162420%_)
                     (_%rest162429%_ _%$tl162405162423%_))
                (cons _%hd162427%_ (__AST->list _%rest162429%_)))
              (_%$E162401162414%_)))))
    (define __AST->datum
      (lambda (_%stx162390%_)
        (if (##structure-instance-of? _%stx162390%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx162390%_))
            (if (pair? _%stx162390%_)
                (cons (__AST->datum (##car _%stx162390%_))
                      (__AST->datum (##cdr _%stx162390%_)))
                (if (vector? _%stx162390%_)
                    (vector-map __AST->datum _%stx162390%_)
                    (if (box? _%stx162390%_)
                        (box (__AST->datum (unbox _%stx162390%_)))
                        _%stx162390%_))))))
    (define get-readenv
      (lambda (_%port162388%_)
        (##make-readenv
         _%port162388%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in162376%_)
        (let ((_%e162378%_ (##read-datum-or-eof (get-readenv _%in162376%_))))
          (if (eof-object? (__AST-e _%e162378%_))
              (__AST-e _%e162378%_)
              _%e162378%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in162384%_ (current-input-port)))
          (read-syntax__% _%in162384%_))))
    (define read-syntax
      (lambda _g163119_
        (let ((_g163120_ (##length _g163119_)))
          (cond ((##fx= _g163120_ 0) (apply read-syntax__0 _g163119_))
                ((##fx= _g163120_ 1) (apply read-syntax__% _g163119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g163119_))))))
    (define read-syntax-from-file
      (lambda (_%path162371%_)
        (let ((_%r162373%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path162371%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r162373%_)
              (cdr (__AST-e (vector-ref _%r162373%_ '1)))
              (error (err-code->string _%r162373%_) _%path162371%_)))))
    (define __wrap-syntax
      (lambda (_%re162368%_ _%e162369%_)
        (if (eof-object? _%e162369%_)
            _%e162369%_
            (##structure AST::t _%e162369%_ (##readenv->locat _%re162368%_)))))
    (define __unwrap-syntax
      (lambda (_%re162365%_ _%e162366%_) (__AST-e _%e162366%_)))
    (define __pp-syntax
      (lambda (_%stx162363%_) (pp (__AST->datum _%stx162363%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt162361%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt162361%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt162361%_ '@list)
          (macro-readtable-brace-handler-set! _%rt162361%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt162361%_
           '#\!
           __read-sharp-bang)
          _%rt162361%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt162357%_ _%kw162358%_)
        (macro-readtable-bracket-handler-set! _%rt162357%_ _%kw162358%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt162354%_ _%kw162355%_)
        (macro-readtable-brace-handler-set! _%rt162354%_ _%kw162355%_)))
    (define __read-sharp-bang
      (lambda (_%re162345%_ _%next162346%_ _%start-pos162347%_)
        (if (eq? _%start-pos162347%_ '0)
            (let* ((_%line162349%_
                    (##read-line
                     (macro-readenv-port _%re162345%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line162351%_
                    (substring
                     _%line162349%_
                     '1
                     (string-length _%line162349%_))))
              (macro-readenv-script-line-set!
               _%re162345%_
               _%script-line162351%_)
              (##script-marker))
            (##read-sharp-bang
             _%re162345%_
             _%next162346%_
             _%start-pos162347%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj162343%_)
        (if (source-location? _%obj162343%_)
            (string? (##locat-container _%obj162343%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj162341%_)
        (if (##locat? _%obj162341%_)
            (##container->path (##locat-container _%obj162341%_))
            '#f)))))
