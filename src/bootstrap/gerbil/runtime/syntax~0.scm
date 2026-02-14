(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1771036673)
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
      (lambda _%$args348886%_
        (apply make-instance SyntaxError::t _%$args348886%_)))
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
      (lambda (_%self348605%_ _%port348606%_)
        (let ((_%self348609%_ _%self348605%_))
          (letrec ((_%location348620%_
                    (lambda ()
                      (letrec ((_%from-irritants348761%_
                                (lambda ()
                                  (let _%lp348846%_ ((_%rest348848%_
                                                      (##unchecked-structure-ref
                                                       _%self348609%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest348849348857%_
                                            _%rest348848%_)
                                           (_%else348851348865%_
                                            (lambda () '#f))
                                           (_%K348853348874%_
                                            (lambda (_%rest348868%_
                                                     _%hd348869%_)
                                              (let ((_%$e348871%_
                                                     (__AST-source
                                                      _%hd348869%_)))
                                                (if _%$e348871%_
                                                    _%$e348871%_
                                                    (_%lp348846%_
                                                     _%rest348868%_))))))
                                      (if (pair? _%rest348849348857%_)
                                          (let ((_%hd348854348877%_
                                                 (##car _%rest348849348857%_))
                                                (_%tl348855348879%_
                                                 (##cdr _%rest348849348857%_)))
                                            (let* ((_%hd348882%_
                                                    _%hd348854348877%_)
                                                   (_%rest348884%_
                                                    _%tl348855348879%_))
                                              (_%K348853348874%_
                                               _%rest348884%_
                                               _%hd348882%_)))
                                          (_%else348851348865%_))))))
                               (_%from-context348762%_
                                (lambda ()
                                  (let _%lp348768%_ ((_%rest348770%_
                                                      (##unchecked-structure-ref
                                                       _%self348609%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest348771348779%_
                                            _%rest348770%_)
                                           (_%else348773348787%_
                                            (lambda () '#f))
                                           (_%K348775348833%_
                                            (lambda (_%rest348790%_
                                                     _%hd348791%_)
                                              (let* ((_%hd348792348802%_
                                                      _%hd348791%_)
                                                     (_%else348794348810%_
                                                      (lambda ()
                                                        (_%lp348768%_
                                                         _%rest348790%_)))
                                                     (_%K348796348818%_
                                                      (lambda (_%loc348813%_)
                                                        (let ((_%$e348815%_
                                                               (__AST-source
                                                                _%loc348813%_)))
                                                          (if _%$e348815%_
                                                              _%$e348815%_
                                                              (_%lp348768%_
                                                               _%rest348790%_))))))
                                                (if (pair? _%hd348792348802%_)
                                                    (let ((_%hd348797348821%_
                                                           (##car _%hd348792348802%_))
                                                          (_%tl348798348823%_
                                                           (##cdr _%hd348792348802%_)))
                                                      (if (##eq? _%hd348797348821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl348798348823%_)
                      (let ((_%hd348799348826%_ (##car _%tl348798348823%_))
                            (_%tl348800348828%_ (##cdr _%tl348798348823%_)))
                        (let ((_%loc348831%_ _%hd348799348826%_))
                          (if (null? _%tl348800348828%_)
                              (_%K348796348818%_ _%loc348831%_)
                              (_%else348794348810%_))))
                      (_%else348794348810%_))
                  (_%else348794348810%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else348794348810%_))))))
                                      (if (pair? _%rest348771348779%_)
                                          (let ((_%hd348776348836%_
                                                 (##car _%rest348771348779%_))
                                                (_%tl348777348838%_
                                                 (##cdr _%rest348771348779%_)))
                                            (let* ((_%hd348841%_
                                                    _%hd348776348836%_)
                                                   (_%rest348843%_
                                                    _%tl348777348838%_))
                                              (_%K348775348833%_
                                               _%rest348843%_
                                               _%hd348841%_)))
                                          (_%else348773348787%_)))))))
                        (let ((_%$e348764%_ (_%from-irritants348761%_)))
                          (if _%$e348764%_
                              _%$e348764%_
                              (_%from-context348762%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e348623%_ (_%location348620%_)))
                 (if _%$e348623%_
                     ((lambda (_%loc348626%_)
                        (##display-locat _%loc348626%_ '#t _%port348606%_))
                      _%$e348623%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self348609%_ '2 '#f '#f))
               (let ((_%$e348629%_
                      (##unchecked-structure-ref _%self348609%_ '4 '#f '#f)))
                 (if _%$e348629%_
                     ((lambda (_%where348632%_)
                        (displayln '"--- Context: ")
                        (let _%lp348634%_ ((_%rest348636%_ _%where348632%_))
                          (let* ((_%rest348637348645%_ _%rest348636%_)
                                 (_%else348639348653%_ (lambda () '#!void))
                                 (_%K348641348703%_
                                  (lambda (_%rest348656%_ _%hd348657%_)
                                    (let* ((_%hd348658348668%_ _%hd348657%_)
                                           (_%else348660348676%_
                                            (lambda ()
                                              (displayln '" at " _%hd348657%_)
                                              (_%lp348634%_ _%rest348656%_)))
                                           (_%K348662348688%_
                                            (lambda (_%ctx348679%_)
                                              (let ((_%$e348681%_
                                                     (__AST-source
                                                      _%ctx348679%_)))
                                                (if _%$e348681%_
                                                    ((lambda (_%loc348684%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc348684%_
                                                        '#t
                                                        _%port348606%_)
                                                       (newline)
                                                       (_%lp348634%_
                                                        _%rest348656%_))
                                                     _%$e348681%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx348679%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx348679%_)
                                                          (_%lp348634%_
                                                           _%rest348656%_))
                                                        (_%lp348634%_
                                                         _%rest348656%_)))))))
                                      (if (pair? _%hd348658348668%_)
                                          (let ((_%hd348663348691%_
                                                 (##car _%hd348658348668%_))
                                                (_%tl348664348693%_
                                                 (##cdr _%hd348658348668%_)))
                                            (if (##eq? _%hd348663348691%_ '@)
                                                (if (pair? _%tl348664348693%_)
                                                    (let ((_%hd348665348696%_
                                                           (##car _%tl348664348693%_))
                                                          (_%tl348666348698%_
                                                           (##cdr _%tl348664348693%_)))
                                                      (let ((_%ctx348701%_
                                                             _%hd348665348696%_))
                                                        (if (null? _%tl348666348698%_)
                                                            (_%K348662348688%_
                                                             _%ctx348701%_)
                                                            (_%else348660348676%_))))
                                                    (_%else348660348676%_))
                                                (_%else348660348676%_)))
                                          (_%else348660348676%_))))))
                            (if (pair? _%rest348637348645%_)
                                (let ((_%hd348642348706%_
                                       (##car _%rest348637348645%_))
                                      (_%tl348643348708%_
                                       (##cdr _%rest348637348645%_)))
                                  (let* ((_%hd348711%_ _%hd348642348706%_)
                                         (_%rest348713%_ _%tl348643348708%_))
                                    (_%K348641348703%_
                                     _%rest348713%_
                                     _%hd348711%_)))
                                '#!void))))
                      _%$e348629%_)
                     '#!void))
               (let* ((_%self.irritants348714348722%_
                       (##unchecked-structure-ref _%self348609%_ '3 '#f '#f))
                      (_%else348716348730%_ (lambda () '#!void))
                      (_%K348718348743%_
                       (lambda (_%rest348733%_ _%stx348734%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx348734%_)
                         (for-each
                          (lambda (_%detail348736%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail348736%_))
                            (let ((_%$e348738%_
                                   (__AST-source _%detail348736%_)))
                              (if _%$e348738%_
                                  ((lambda (_%loc348741%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc348741%_
                                      '#t
                                      _%port348606%_))
                                   _%$e348738%_)
                                  '#!void))
                            (newline))
                          _%rest348733%_))))
                 (if (pair? _%self.irritants348714348722%_)
                     (let ((_%hd348719348746%_
                            (##car _%self.irritants348714348722%_))
                           (_%tl348720348748%_
                            (##cdr _%self.irritants348714348722%_)))
                       (let* ((_%stx348751%_ _%hd348719348746%_)
                              (_%rest348753%_ _%tl348720348748%_))
                         (_%K348718348743%_ _%rest348753%_ _%stx348751%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont348754348756%_
                          (##unchecked-structure-ref
                           _%self348609%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont348754348756%_
                         (let ((_%cont348758%_ _%cont348754348756%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont348758%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port348606%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass348468%_ SyntaxError::t) (_%klass348473%_ _%klass348468%_))
      (__seal-class! _%klass348473%_))
    (define make-syntax-error
      (lambda (_%message348461%_
               _%irritants348462%_
               _%where348463%_
               _%context348464%_
               _%marks348465%_
               _%phi348466%_)
        (let ((__obj348983
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj348983 _%message348461%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj348983
           _%irritants348462%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj348983 _%where348463%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj348983 _%context348464%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj348983 _%marks348465%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj348983 _%phi348466%_ '6 '#f '#f)
          __obj348983)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where348456%_
               _%message348457%_
               _%stx348458%_
               .
               _%details348459%_)
        (raise (make-syntax-error
                _%message348457%_
                (cons _%stx348458%_ _%details348459%_)
                _%where348456%_
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
      (lambda _%$args348453%_ (apply make-instance AST::t _%$args348453%_)))
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
      (lambda (_%stx348451%_)
        (if (##structure-instance-of? _%stx348451%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx348451%_ '1 '#f '#f)
            _%stx348451%_)))
    (define __AST-source
      (lambda (_%stx348442%_)
        (let _%lp348444%_ ((_%src348446%_ _%stx348442%_))
          (if (##structure-instance-of? _%src348446%_ 'gerbil#AST::t)
              (_%lp348444%_
               (##unchecked-structure-ref _%src348446%_ '2 '#f '#f))
              (if (##locat? _%src348446%_) _%src348446%_ '#f)))))
    (define __AST
      (lambda (_%e348434%_ _%src-stx348435%_)
        (let ((_%src348437%_ (__AST-source _%src-stx348435%_)))
          (if (or (##structure-instance-of? _%e348434%_ 'gerbil#AST::t)
                  (not _%src348437%_))
              _%e348434%_
              (##structure AST::t _%e348434%_ _%src348437%_)))))
    (define __AST-eq?
      (lambda (_%stx348431%_ _%obj348432%_)
        (eq? (__AST-e _%stx348431%_) _%obj348432%_)))
    (define __AST-pair?
      (lambda (_%stx348429%_) (pair? (__AST-e _%stx348429%_))))
    (define __AST-null?
      (lambda (_%stx348427%_) (null? (__AST-e _%stx348427%_))))
    (define __AST-datum?
      (lambda (_%stx348408%_)
        (let* ((_%e348410%_ (__AST-e _%stx348408%_))
               (_%$e348412%_ (number? _%e348410%_)))
          (if _%$e348412%_
              _%$e348412%_
              (let ((_%$e348415%_ (string? _%e348410%_)))
                (if _%$e348415%_
                    _%$e348415%_
                    (let ((_%$e348418%_ (char? _%e348410%_)))
                      (if _%$e348418%_
                          _%$e348418%_
                          (let ((_%$e348421%_ (keyword? _%e348410%_)))
                            (if _%$e348421%_
                                _%$e348421%_
                                (let ((_%$e348424%_ (boolean? _%e348410%_)))
                                  (if _%$e348424%_
                                      _%$e348424%_
                                      (eq? _%e348410%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx348406%_) (symbol? (__AST-e _%stx348406%_))))
    (define __AST-id-list?__%
      (lambda (_%stx348357%_ _%tail?348358%_)
        (let _%lp348360%_ ((_%rest348362%_ _%stx348357%_))
          (let* ((_%$e348364%_ _%rest348362%_)
                 (_%$E348366348379%_
                  (lambda ()
                    (let* ((_%$E348367348374%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e348364%_)))
                           (_%rest348377%_ _%$e348364%_))
                      (_%tail?348358%_ _%rest348377%_)))))
            (if (__AST-pair? _%$e348364%_)
                (let* ((_%$tgt348368348382%_ (__AST-e _%$e348364%_))
                       (_%$hd348369348385%_ (##car _%$tgt348368348382%_))
                       (_%$tl348370348388%_ (##cdr _%$tgt348368348382%_))
                       (_%hd348392%_ _%$hd348369348385%_)
                       (_%rest348394%_ _%$tl348370348388%_))
                  (if (__AST-id? _%hd348392%_)
                      (_%lp348360%_ _%rest348394%_)
                      '#f))
                (_%$E348366348379%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx348399%_)
        (let ((_%tail?348401%_ __AST-null?))
          (__AST-id-list?__% _%stx348399%_ _%tail?348401%_))))
    (define __AST-id-list?
      (lambda _g348985_
        (let ((_g348986_ (##length _g348985_)))
          (cond ((##fx= _g348986_ 1) (apply __AST-id-list?__0 _g348985_))
                ((##fx= _g348986_ 2) (apply __AST-id-list?__% _g348985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g348985_))))))
    (define __AST-bind-list?
      (lambda (_%stx348349%_)
        (__AST-id-list?__%
         _%stx348349%_
         (lambda (_%e348351%_)
           (let ((_%$e348353%_ (__AST-null? _%e348351%_)))
             (if _%$e348353%_ _%$e348353%_ (__AST-id? _%e348351%_)))))))
    (define __AST-list?__%
      (lambda (_%stx348302%_ _%tail?348303%_)
        (let _%lp348305%_ ((_%rest348307%_ _%stx348302%_))
          (let* ((_%$e348309%_ _%rest348307%_)
                 (_%$E348311348324%_
                  (lambda ()
                    (let* ((_%$E348312348319%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e348309%_)))
                           (_%rest348322%_ _%$e348309%_))
                      (_%tail?348303%_ _%rest348322%_)))))
            (if (__AST-pair? _%$e348309%_)
                (let* ((_%$tgt348313348327%_ (__AST-e _%$e348309%_))
                       (_%$hd348314348330%_ (##car _%$tgt348313348327%_))
                       (_%$tl348315348333%_ (##cdr _%$tgt348313348327%_))
                       (_%rest348337%_ _%$tl348315348333%_))
                  (_%lp348305%_ _%rest348337%_))
                (_%$E348311348324%_))))))
    (define __AST-list?__0
      (lambda (_%stx348342%_)
        (let ((_%tail?348344%_ __AST-null?))
          (__AST-list?__% _%stx348342%_ _%tail?348344%_))))
    (define __AST-list?
      (lambda _g348987_
        (let ((_g348988_ (##length _g348987_)))
          (cond ((##fx= _g348988_ 1) (apply __AST-list?__0 _g348987_))
                ((##fx= _g348988_ 2) (apply __AST-list?__% _g348987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g348987_))))))
    (define __AST->list
      (lambda (_%stx348267%_)
        (let* ((_%$e348269%_ _%stx348267%_)
               (_%$E348271348284%_
                (lambda ()
                  (let* ((_%$E348272348279%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e348269%_)))
                         (_%rest348282%_ _%$e348269%_))
                    (__AST-e _%rest348282%_)))))
          (if (__AST-pair? _%$e348269%_)
              (let* ((_%$tgt348273348287%_ (__AST-e _%$e348269%_))
                     (_%$hd348274348290%_ (##car _%$tgt348273348287%_))
                     (_%$tl348275348293%_ (##cdr _%$tgt348273348287%_))
                     (_%hd348297%_ _%$hd348274348290%_)
                     (_%rest348299%_ _%$tl348275348293%_))
                (cons _%hd348297%_ (__AST->list _%rest348299%_)))
              (_%$E348271348284%_)))))
    (define __AST->datum
      (lambda (_%stx348260%_)
        (if (##structure-instance-of? _%stx348260%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx348260%_))
            (if (pair? _%stx348260%_)
                (cons (__AST->datum (##car _%stx348260%_))
                      (__AST->datum (##cdr _%stx348260%_)))
                (if (vector? _%stx348260%_)
                    (vector-map __AST->datum _%stx348260%_)
                    (if (box? _%stx348260%_)
                        (box (__AST->datum (unbox _%stx348260%_)))
                        _%stx348260%_))))))
    (define get-readenv
      (lambda (_%port348258%_)
        (##make-readenv
         _%port348258%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in348246%_)
        (let ((_%e348248%_ (##read-datum-or-eof (get-readenv _%in348246%_))))
          (if (eof-object? (__AST-e _%e348248%_))
              (__AST-e _%e348248%_)
              _%e348248%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in348254%_ (current-input-port)))
          (read-syntax__% _%in348254%_))))
    (define read-syntax
      (lambda _g348989_
        (let ((_g348990_ (##length _g348989_)))
          (cond ((##fx= _g348990_ 0) (apply read-syntax__0 _g348989_))
                ((##fx= _g348990_ 1) (apply read-syntax__% _g348989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g348989_))))))
    (define read-syntax-from-file
      (lambda (_%path348241%_)
        (let ((_%r348243%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path348241%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r348243%_)
              (cdr (__AST-e (vector-ref _%r348243%_ '1)))
              (error (err-code->string _%r348243%_) _%path348241%_)))))
    (define __wrap-syntax
      (lambda (_%re348238%_ _%e348239%_)
        (if (eof-object? _%e348239%_)
            _%e348239%_
            (##structure AST::t _%e348239%_ (##readenv->locat _%re348238%_)))))
    (define __unwrap-syntax
      (lambda (_%re348235%_ _%e348236%_) (__AST-e _%e348236%_)))
    (define __pp-syntax
      (lambda (_%stx348233%_) (pp (__AST->datum _%stx348233%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt348231%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt348231%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt348231%_ '@list)
          (macro-readtable-brace-handler-set! _%rt348231%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt348231%_
           '#\!
           __read-sharp-bang)
          _%rt348231%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt348227%_ _%kw348228%_)
        (macro-readtable-bracket-handler-set! _%rt348227%_ _%kw348228%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt348224%_ _%kw348225%_)
        (macro-readtable-brace-handler-set! _%rt348224%_ _%kw348225%_)))
    (define __read-sharp-bang
      (lambda (_%re348215%_ _%next348216%_ _%start-pos348217%_)
        (if (eq? _%start-pos348217%_ '0)
            (let* ((_%line348219%_
                    (##read-line
                     (macro-readenv-port _%re348215%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line348221%_
                    (substring
                     _%line348219%_
                     '1
                     (string-length _%line348219%_))))
              (macro-readenv-script-line-set!
               _%re348215%_
               _%script-line348221%_)
              (##script-marker))
            (##read-sharp-bang
             _%re348215%_
             _%next348216%_
             _%start-pos348217%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj348213%_)
        (if (source-location? _%obj348213%_)
            (string? (##locat-container _%obj348213%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj348211%_)
        (if (##locat? _%obj348211%_)
            (##container->path (##locat-container _%obj348211%_))
            '#f)))))
