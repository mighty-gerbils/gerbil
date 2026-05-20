(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1779289638)
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
      (lambda _%$args167869%_
        (apply make-instance SyntaxError::t _%$args167869%_)))
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
      (lambda (_%self167588%_ _%port167589%_)
        (let ((_%self167592%_ _%self167588%_))
          (letrec ((_%location167603%_
                    (lambda ()
                      (letrec ((_%from-irritants167744%_
                                (lambda ()
                                  (let _%lp167829%_ ((_%rest167831%_
                                                      (##unchecked-structure-ref
                                                       _%self167592%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest167832167840%_
                                            _%rest167831%_)
                                           (_%else167834167848%_
                                            (lambda () '#f))
                                           (_%K167836167857%_
                                            (lambda (_%rest167851%_
                                                     _%hd167852%_)
                                              (let ((_%$e167854%_
                                                     (__AST-source
                                                      _%hd167852%_)))
                                                (if _%$e167854%_
                                                    _%$e167854%_
                                                    (_%lp167829%_
                                                     _%rest167851%_))))))
                                      (if (pair? _%rest167832167840%_)
                                          (let ((_%hd167837167860%_
                                                 (##car _%rest167832167840%_))
                                                (_%tl167838167862%_
                                                 (##cdr _%rest167832167840%_)))
                                            (let* ((_%hd167865%_
                                                    _%hd167837167860%_)
                                                   (_%rest167867%_
                                                    _%tl167838167862%_))
                                              (_%K167836167857%_
                                               _%rest167867%_
                                               _%hd167865%_)))
                                          (_%else167834167848%_))))))
                               (_%from-context167745%_
                                (lambda ()
                                  (let _%lp167751%_ ((_%rest167753%_
                                                      (##unchecked-structure-ref
                                                       _%self167592%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest167754167762%_
                                            _%rest167753%_)
                                           (_%else167756167770%_
                                            (lambda () '#f))
                                           (_%K167758167816%_
                                            (lambda (_%rest167773%_
                                                     _%hd167774%_)
                                              (let* ((_%hd167775167785%_
                                                      _%hd167774%_)
                                                     (_%else167777167793%_
                                                      (lambda ()
                                                        (_%lp167751%_
                                                         _%rest167773%_)))
                                                     (_%K167779167801%_
                                                      (lambda (_%loc167796%_)
                                                        (let ((_%$e167798%_
                                                               (__AST-source
                                                                _%loc167796%_)))
                                                          (if _%$e167798%_
                                                              _%$e167798%_
                                                              (_%lp167751%_
                                                               _%rest167773%_))))))
                                                (if (pair? _%hd167775167785%_)
                                                    (let ((_%hd167780167804%_
                                                           (##car _%hd167775167785%_))
                                                          (_%tl167781167806%_
                                                           (##cdr _%hd167775167785%_)))
                                                      (if (##eq? _%hd167780167804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl167781167806%_)
                      (let ((_%hd167782167809%_ (##car _%tl167781167806%_))
                            (_%tl167783167811%_ (##cdr _%tl167781167806%_)))
                        (let ((_%loc167814%_ _%hd167782167809%_))
                          (if (null? _%tl167783167811%_)
                              (_%K167779167801%_ _%loc167814%_)
                              (_%else167777167793%_))))
                      (_%else167777167793%_))
                  (_%else167777167793%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else167777167793%_))))))
                                      (if (pair? _%rest167754167762%_)
                                          (let ((_%hd167759167819%_
                                                 (##car _%rest167754167762%_))
                                                (_%tl167760167821%_
                                                 (##cdr _%rest167754167762%_)))
                                            (let* ((_%hd167824%_
                                                    _%hd167759167819%_)
                                                   (_%rest167826%_
                                                    _%tl167760167821%_))
                                              (_%K167758167816%_
                                               _%rest167826%_
                                               _%hd167824%_)))
                                          (_%else167756167770%_)))))))
                        (let ((_%$e167747%_ (_%from-irritants167744%_)))
                          (if _%$e167747%_
                              _%$e167747%_
                              (_%from-context167745%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e167606%_ (_%location167603%_)))
                 (if _%$e167606%_
                     (##display-locat _%$e167606%_ '#t _%port167589%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self167592%_ '2 '#f '#f))
               (let ((_%$e167612%_
                      (##unchecked-structure-ref _%self167592%_ '4 '#f '#f)))
                 (if _%$e167612%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp167617%_ ((_%rest167619%_ _%$e167612%_))
                         (let* ((_%rest167620167628%_ _%rest167619%_)
                                (_%else167622167636%_ (lambda () '#!void))
                                (_%K167624167686%_
                                 (lambda (_%rest167639%_ _%hd167640%_)
                                   (let* ((_%hd167641167651%_ _%hd167640%_)
                                          (_%else167643167659%_
                                           (lambda ()
                                             (displayln '" at " _%hd167640%_)
                                             (_%lp167617%_ _%rest167639%_)))
                                          (_%K167645167671%_
                                           (lambda (_%ctx167662%_)
                                             (let ((_%$e167664%_
                                                    (__AST-source
                                                     _%ctx167662%_)))
                                               (if _%$e167664%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e167664%_
                                                      '#t
                                                      _%port167589%_)
                                                     (newline)
                                                     (_%lp167617%_
                                                      _%rest167639%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx167662%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx167662%_)
                                                         (_%lp167617%_
                                                          _%rest167639%_))
                                                       (_%lp167617%_
                                                        _%rest167639%_)))))))
                                     (if (pair? _%hd167641167651%_)
                                         (let ((_%hd167646167674%_
                                                (##car _%hd167641167651%_))
                                               (_%tl167647167676%_
                                                (##cdr _%hd167641167651%_)))
                                           (if (##eq? _%hd167646167674%_ '@)
                                               (if (pair? _%tl167647167676%_)
                                                   (let ((_%hd167648167679%_
                                                          (##car _%tl167647167676%_))
                                                         (_%tl167649167681%_
                                                          (##cdr _%tl167647167676%_)))
                                                     (let ((_%ctx167684%_
                                                            _%hd167648167679%_))
                                                       (if (null? _%tl167649167681%_)
                                                           (_%K167645167671%_
                                                            _%ctx167684%_)
                                                           (_%else167643167659%_))))
                                                   (_%else167643167659%_))
                                               (_%else167643167659%_)))
                                         (_%else167643167659%_))))))
                           (if (pair? _%rest167620167628%_)
                               (let ((_%hd167625167689%_
                                      (##car _%rest167620167628%_))
                                     (_%tl167626167691%_
                                      (##cdr _%rest167620167628%_)))
                                 (let* ((_%hd167694%_ _%hd167625167689%_)
                                        (_%rest167696%_ _%tl167626167691%_))
                                   (_%K167624167686%_
                                    _%rest167696%_
                                    _%hd167694%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%self.irritants167697167705%_
                       (##unchecked-structure-ref _%self167592%_ '3 '#f '#f))
                      (_%else167699167713%_ (lambda () '#!void))
                      (_%K167701167726%_
                       (lambda (_%rest167716%_ _%stx167717%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx167717%_)
                         (for-each
                          (lambda (_%detail167719%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail167719%_))
                            (let ((_%$e167721%_
                                   (__AST-source _%detail167719%_)))
                              (if _%$e167721%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e167721%_
                                     '#t
                                     _%port167589%_))
                                  '#!void))
                            (newline))
                          _%rest167716%_))))
                 (if (pair? _%self.irritants167697167705%_)
                     (let ((_%hd167702167729%_
                            (##car _%self.irritants167697167705%_))
                           (_%tl167703167731%_
                            (##cdr _%self.irritants167697167705%_)))
                       (let* ((_%stx167734%_ _%hd167702167729%_)
                              (_%rest167736%_ _%tl167703167731%_))
                         (_%K167701167726%_ _%rest167736%_ _%stx167734%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont167737167739%_
                          (##unchecked-structure-ref
                           _%self167592%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont167737167739%_
                         (let ((_%cont167741%_ _%cont167737167739%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont167741%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port167589%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass167451%_ SyntaxError::t) (_%klass167456%_ _%klass167451%_))
      (__seal-class! _%klass167456%_))
    (define make-syntax-error
      (lambda (_%message167444%_
               _%irritants167445%_
               _%where167446%_
               _%context167447%_
               _%marks167448%_
               _%phi167449%_)
        (let ((__obj167966
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj167966 _%message167444%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj167966
           _%irritants167445%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj167966 _%where167446%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj167966 _%context167447%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj167966 _%marks167448%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj167966 _%phi167449%_ '6 '#f '#f)
          __obj167966)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where167439%_
               _%message167440%_
               _%stx167441%_
               .
               _%details167442%_)
        (raise (make-syntax-error
                _%message167440%_
                (cons _%stx167441%_ _%details167442%_)
                _%where167439%_
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
      (lambda _%$args167436%_ (apply make-instance AST::t _%$args167436%_)))
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
      (lambda (_%stx167434%_)
        (if (##structure-instance-of? _%stx167434%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx167434%_ '1 '#f '#f)
            _%stx167434%_)))
    (define __AST-source
      (lambda (_%stx167425%_)
        (let _%lp167427%_ ((_%src167429%_ _%stx167425%_))
          (if (##structure-instance-of? _%src167429%_ 'gerbil#AST::t)
              (_%lp167427%_
               (##unchecked-structure-ref _%src167429%_ '2 '#f '#f))
              (if (##locat? _%src167429%_) _%src167429%_ '#f)))))
    (define __AST
      (lambda (_%e167417%_ _%src-stx167418%_)
        (let ((_%src167420%_ (__AST-source _%src-stx167418%_)))
          (if (or (##structure-instance-of? _%e167417%_ 'gerbil#AST::t)
                  (not _%src167420%_))
              _%e167417%_
              (##structure AST::t _%e167417%_ _%src167420%_)))))
    (define __AST-eq?
      (lambda (_%stx167414%_ _%obj167415%_)
        (eq? (__AST-e _%stx167414%_) _%obj167415%_)))
    (define __AST-pair?
      (lambda (_%stx167412%_) (pair? (__AST-e _%stx167412%_))))
    (define __AST-null?
      (lambda (_%stx167410%_) (null? (__AST-e _%stx167410%_))))
    (define __AST-datum?
      (lambda (_%stx167391%_)
        (let* ((_%e167393%_ (__AST-e _%stx167391%_))
               (_%$e167395%_ (number? _%e167393%_)))
          (if _%$e167395%_
              _%$e167395%_
              (let ((_%$e167398%_ (string? _%e167393%_)))
                (if _%$e167398%_
                    _%$e167398%_
                    (let ((_%$e167401%_ (char? _%e167393%_)))
                      (if _%$e167401%_
                          _%$e167401%_
                          (let ((_%$e167404%_ (keyword? _%e167393%_)))
                            (if _%$e167404%_
                                _%$e167404%_
                                (let ((_%$e167407%_ (boolean? _%e167393%_)))
                                  (if _%$e167407%_
                                      _%$e167407%_
                                      (eq? _%e167393%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx167389%_) (symbol? (__AST-e _%stx167389%_))))
    (define __AST-id-list?__%
      (lambda (_%stx167340%_ _%tail?167341%_)
        (let _%lp167343%_ ((_%rest167345%_ _%stx167340%_))
          (let* ((_%$e167347%_ _%rest167345%_)
                 (_%$E167349167362%_
                  (lambda ()
                    (let* ((_%$E167350167357%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e167347%_)))
                           (_%rest167360%_ _%$e167347%_))
                      (_%tail?167341%_ _%rest167360%_)))))
            (if (__AST-pair? _%$e167347%_)
                (let* ((_%$tgt167351167365%_ (__AST-e _%$e167347%_))
                       (_%$hd167352167368%_ (##car _%$tgt167351167365%_))
                       (_%$tl167353167371%_ (##cdr _%$tgt167351167365%_))
                       (_%hd167375%_ _%$hd167352167368%_)
                       (_%rest167377%_ _%$tl167353167371%_))
                  (if (__AST-id? _%hd167375%_)
                      (_%lp167343%_ _%rest167377%_)
                      '#f))
                (_%$E167349167362%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx167382%_)
        (let ((_%tail?167384%_ __AST-null?))
          (__AST-id-list?__% _%stx167382%_ _%tail?167384%_))))
    (define __AST-id-list?
      (lambda _g167968_
        (let ((_g167969_ (##length _g167968_)))
          (cond ((##fx= _g167969_ 1) (apply __AST-id-list?__0 _g167968_))
                ((##fx= _g167969_ 2) (apply __AST-id-list?__% _g167968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g167968_))))))
    (define __AST-bind-list?
      (lambda (_%stx167332%_)
        (__AST-id-list?__%
         _%stx167332%_
         (lambda (_%e167334%_)
           (let ((_%$e167336%_ (__AST-null? _%e167334%_)))
             (if _%$e167336%_ _%$e167336%_ (__AST-id? _%e167334%_)))))))
    (define __AST-list?__%
      (lambda (_%stx167285%_ _%tail?167286%_)
        (let _%lp167288%_ ((_%rest167290%_ _%stx167285%_))
          (let* ((_%$e167292%_ _%rest167290%_)
                 (_%$E167294167307%_
                  (lambda ()
                    (let* ((_%$E167295167302%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e167292%_)))
                           (_%rest167305%_ _%$e167292%_))
                      (_%tail?167286%_ _%rest167305%_)))))
            (if (__AST-pair? _%$e167292%_)
                (let* ((_%$tgt167296167310%_ (__AST-e _%$e167292%_))
                       (_%$hd167297167313%_ (##car _%$tgt167296167310%_))
                       (_%$tl167298167316%_ (##cdr _%$tgt167296167310%_))
                       (_%rest167320%_ _%$tl167298167316%_))
                  (_%lp167288%_ _%rest167320%_))
                (_%$E167294167307%_))))))
    (define __AST-list?__0
      (lambda (_%stx167325%_)
        (let ((_%tail?167327%_ __AST-null?))
          (__AST-list?__% _%stx167325%_ _%tail?167327%_))))
    (define __AST-list?
      (lambda _g167970_
        (let ((_g167971_ (##length _g167970_)))
          (cond ((##fx= _g167971_ 1) (apply __AST-list?__0 _g167970_))
                ((##fx= _g167971_ 2) (apply __AST-list?__% _g167970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g167970_))))))
    (define __AST->list
      (lambda (_%stx167250%_)
        (let* ((_%$e167252%_ _%stx167250%_)
               (_%$E167254167267%_
                (lambda ()
                  (let* ((_%$E167255167262%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e167252%_)))
                         (_%rest167265%_ _%$e167252%_))
                    (__AST-e _%rest167265%_)))))
          (if (__AST-pair? _%$e167252%_)
              (let* ((_%$tgt167256167270%_ (__AST-e _%$e167252%_))
                     (_%$hd167257167273%_ (##car _%$tgt167256167270%_))
                     (_%$tl167258167276%_ (##cdr _%$tgt167256167270%_))
                     (_%hd167280%_ _%$hd167257167273%_)
                     (_%rest167282%_ _%$tl167258167276%_))
                (cons _%hd167280%_ (__AST->list _%rest167282%_)))
              (_%$E167254167267%_)))))
    (define __AST->datum
      (lambda (_%stx167243%_)
        (if (##structure-instance-of? _%stx167243%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx167243%_))
            (if (pair? _%stx167243%_)
                (cons (__AST->datum (##car _%stx167243%_))
                      (__AST->datum (##cdr _%stx167243%_)))
                (if (vector? _%stx167243%_)
                    (vector-map __AST->datum _%stx167243%_)
                    (if (box? _%stx167243%_)
                        (box (__AST->datum (unbox _%stx167243%_)))
                        _%stx167243%_))))))
    (define get-readenv
      (lambda (_%port167241%_)
        (##make-readenv
         _%port167241%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in167229%_)
        (let ((_%e167231%_ (##read-datum-or-eof (get-readenv _%in167229%_))))
          (if (eof-object? (__AST-e _%e167231%_))
              (__AST-e _%e167231%_)
              _%e167231%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in167237%_ (current-input-port)))
          (read-syntax__% _%in167237%_))))
    (define read-syntax
      (lambda _g167972_
        (let ((_g167973_ (##length _g167972_)))
          (cond ((##fx= _g167973_ 0) (apply read-syntax__0 _g167972_))
                ((##fx= _g167973_ 1) (apply read-syntax__% _g167972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g167972_))))))
    (define read-syntax-from-file
      (lambda (_%path167224%_)
        (let ((_%r167226%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path167224%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r167226%_)
              (cdr (__AST-e (vector-ref _%r167226%_ '1)))
              (error (err-code->string _%r167226%_) _%path167224%_)))))
    (define __wrap-syntax
      (lambda (_%re167221%_ _%e167222%_)
        (if (eof-object? _%e167222%_)
            _%e167222%_
            (##structure AST::t _%e167222%_ (##readenv->locat _%re167221%_)))))
    (define __unwrap-syntax
      (lambda (_%re167218%_ _%e167219%_) (__AST-e _%e167219%_)))
    (define __pp-syntax
      (lambda (_%stx167216%_) (pp (__AST->datum _%stx167216%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt167214%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt167214%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt167214%_ '@list)
          (macro-readtable-brace-handler-set! _%rt167214%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt167214%_
           '#\!
           __read-sharp-bang)
          _%rt167214%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt167210%_ _%kw167211%_)
        (macro-readtable-bracket-handler-set! _%rt167210%_ _%kw167211%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt167207%_ _%kw167208%_)
        (macro-readtable-brace-handler-set! _%rt167207%_ _%kw167208%_)))
    (define __read-sharp-bang
      (lambda (_%re167198%_ _%next167199%_ _%start-pos167200%_)
        (if (eq? _%start-pos167200%_ '0)
            (let* ((_%line167202%_
                    (##read-line
                     (macro-readenv-port _%re167198%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line167204%_
                    (substring
                     _%line167202%_
                     '1
                     (string-length _%line167202%_))))
              (macro-readenv-script-line-set!
               _%re167198%_
               _%script-line167204%_)
              (##script-marker))
            (##read-sharp-bang
             _%re167198%_
             _%next167199%_
             _%start-pos167200%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj167196%_)
        (if (source-location? _%obj167196%_)
            (string? (##locat-container _%obj167196%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj167194%_)
        (if (##locat? _%obj167194%_)
            (##container->path (##locat-container _%obj167194%_))
            '#f)))))
