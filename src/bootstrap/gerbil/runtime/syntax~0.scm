(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1768864948)
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
      (lambda _%$args124169%_
        (apply make-instance SyntaxError::t _%$args124169%_)))
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
      (lambda (_%self123887%_ _%port123888%_)
        (let ((_%self123891%_ _%self123887%_))
          (letrec ((_%location123902%_
                    (lambda ()
                      (letrec ((_%from-irritants124044%_
                                (lambda ()
                                  (let _%lp124129%_ ((_%rest124131%_
                                                      (##unchecked-structure-ref
                                                       _%self123891%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest124132124140%_
                                            _%rest124131%_)
                                           (_%else124134124148%_
                                            (lambda () '#f))
                                           (_%K124136124157%_
                                            (lambda (_%rest124151%_
                                                     _%hd124152%_)
                                              (let ((_%$e124154%_
                                                     (__AST-source
                                                      _%hd124152%_)))
                                                (if _%$e124154%_
                                                    _%$e124154%_
                                                    (_%lp124129%_
                                                     _%rest124151%_))))))
                                      (if (pair? _%rest124132124140%_)
                                          (let ((_%hd124137124160%_
                                                 (##car _%rest124132124140%_))
                                                (_%tl124138124162%_
                                                 (##cdr _%rest124132124140%_)))
                                            (let* ((_%hd124165%_
                                                    _%hd124137124160%_)
                                                   (_%rest124167%_
                                                    _%tl124138124162%_))
                                              (_%K124136124157%_
                                               _%rest124167%_
                                               _%hd124165%_)))
                                          (_%else124134124148%_))))))
                               (_%from-context124045%_
                                (lambda ()
                                  (let _%lp124051%_ ((_%rest124053%_
                                                      (##unchecked-structure-ref
                                                       _%self123891%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest124054124062%_
                                            _%rest124053%_)
                                           (_%else124056124070%_
                                            (lambda () '#f))
                                           (_%K124058124116%_
                                            (lambda (_%rest124073%_
                                                     _%hd124074%_)
                                              (let* ((_%hd124075124085%_
                                                      _%hd124074%_)
                                                     (_%else124077124093%_
                                                      (lambda ()
                                                        (_%lp124051%_
                                                         _%rest124073%_)))
                                                     (_%K124079124101%_
                                                      (lambda (_%loc124096%_)
                                                        (let ((_%$e124098%_
                                                               (__AST-source
                                                                _%loc124096%_)))
                                                          (if _%$e124098%_
                                                              _%$e124098%_
                                                              (_%lp124051%_
                                                               _%rest124073%_))))))
                                                (if (pair? _%hd124075124085%_)
                                                    (let ((_%hd124080124104%_
                                                           (##car _%hd124075124085%_))
                                                          (_%tl124081124106%_
                                                           (##cdr _%hd124075124085%_)))
                                                      (if (##eq? _%hd124080124104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl124081124106%_)
                      (let ((_%hd124082124109%_ (##car _%tl124081124106%_))
                            (_%tl124083124111%_ (##cdr _%tl124081124106%_)))
                        (let ((_%loc124114%_ _%hd124082124109%_))
                          (if (null? _%tl124083124111%_)
                              (_%K124079124101%_ _%loc124114%_)
                              (_%else124077124093%_))))
                      (_%else124077124093%_))
                  (_%else124077124093%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else124077124093%_))))))
                                      (if (pair? _%rest124054124062%_)
                                          (let ((_%hd124059124119%_
                                                 (##car _%rest124054124062%_))
                                                (_%tl124060124121%_
                                                 (##cdr _%rest124054124062%_)))
                                            (let* ((_%hd124124%_
                                                    _%hd124059124119%_)
                                                   (_%rest124126%_
                                                    _%tl124060124121%_))
                                              (_%K124058124116%_
                                               _%rest124126%_
                                               _%hd124124%_)))
                                          (_%else124056124070%_)))))))
                        (let ((_%$e124047%_ (_%from-irritants124044%_)))
                          (if _%$e124047%_
                              _%$e124047%_
                              (_%from-context124045%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e123905%_ (_%location123902%_)))
                 (if _%$e123905%_
                     ((lambda (_%loc123908%_)
                        (##display-locat _%loc123908%_ '#t _%port123888%_))
                      _%$e123905%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self123891%_ '2 '#f '#f))
               (let ((_%$e123911%_
                      (##unchecked-structure-ref _%self123891%_ '4 '#f '#f)))
                 (if _%$e123911%_
                     ((lambda (_%where123914%_)
                        (displayln '"--- Context: ")
                        (let _%lp123916%_ ((_%rest123918%_ _%where123914%_))
                          (let* ((_%rest123919123927%_ _%rest123918%_)
                                 (_%else123921123935%_ (lambda () '#!void))
                                 (_%K123923123985%_
                                  (lambda (_%rest123938%_ _%hd123939%_)
                                    (let* ((_%hd123940123950%_ _%hd123939%_)
                                           (_%else123942123958%_
                                            (lambda ()
                                              (displayln '" at " _%hd123939%_)
                                              (_%lp123916%_ _%rest123938%_)))
                                           (_%K123944123970%_
                                            (lambda (_%ctx123961%_)
                                              (let ((_%$e123963%_
                                                     (__AST-source
                                                      _%ctx123961%_)))
                                                (if _%$e123963%_
                                                    ((lambda (_%loc123966%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc123966%_
                                                        '#t
                                                        _%port123888%_)
                                                       (newline)
                                                       (_%lp123916%_
                                                        _%rest123938%_))
                                                     _%$e123963%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx123961%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx123961%_)
                                                          (_%lp123916%_
                                                           _%rest123938%_))
                                                        (_%lp123916%_
                                                         _%rest123938%_)))))))
                                      (if (pair? _%hd123940123950%_)
                                          (let ((_%hd123945123973%_
                                                 (##car _%hd123940123950%_))
                                                (_%tl123946123975%_
                                                 (##cdr _%hd123940123950%_)))
                                            (if (##eq? _%hd123945123973%_ '@)
                                                (if (pair? _%tl123946123975%_)
                                                    (let ((_%hd123947123978%_
                                                           (##car _%tl123946123975%_))
                                                          (_%tl123948123980%_
                                                           (##cdr _%tl123946123975%_)))
                                                      (let ((_%ctx123983%_
                                                             _%hd123947123978%_))
                                                        (if (null? _%tl123948123980%_)
                                                            (_%K123944123970%_
                                                             _%ctx123983%_)
                                                            (_%else123942123958%_))))
                                                    (_%else123942123958%_))
                                                (_%else123942123958%_)))
                                          (_%else123942123958%_))))))
                            (if (pair? _%rest123919123927%_)
                                (let ((_%hd123924123988%_
                                       (##car _%rest123919123927%_))
                                      (_%tl123925123990%_
                                       (##cdr _%rest123919123927%_)))
                                  (let* ((_%hd123993%_ _%hd123924123988%_)
                                         (_%rest123995%_ _%tl123925123990%_))
                                    (_%K123923123985%_
                                     _%rest123995%_
                                     _%hd123993%_)))
                                '#!void))))
                      _%$e123911%_)
                     '#!void))
               (let* ((_%self.irritants123996124004%_
                       (##unchecked-structure-ref _%self123891%_ '3 '#f '#f))
                      (_%else123998124012%_ (lambda () '#!void))
                      (_%K124000124025%_
                       (lambda (_%rest124015%_ _%stx124016%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx124016%_)
                         (for-each
                          (lambda (_%detail124018%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail124018%_))
                            (let ((_%$e124020%_
                                   (__AST-source _%detail124018%_)))
                              (if _%$e124020%_
                                  ((lambda (_%loc124023%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc124023%_
                                      '#t
                                      _%port123888%_))
                                   _%$e124020%_)
                                  '#!void))
                            (newline))
                          _%rest124015%_))))
                 (if (pair? _%self.irritants123996124004%_)
                     (let ((_%hd124001124028%_
                            (##car _%self.irritants123996124004%_))
                           (_%tl124002124030%_
                            (##cdr _%self.irritants123996124004%_)))
                       (let* ((_%stx124033%_ _%hd124001124028%_)
                              (_%rest124035%_ _%tl124002124030%_))
                         (_%K124000124025%_ _%rest124035%_ _%stx124033%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont124036124038%_
                          (##unchecked-structure-ref
                           _%self123891%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont124036124038%_
                         (let ((_%cont124041%_ _%cont124036124038%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont124041%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port123888%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message123758%_
               _%irritants123759%_
               _%where123760%_
               _%context123761%_
               _%marks123762%_
               _%phi123763%_)
        (let ((__obj124266
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj124266 _%message123758%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj124266
           _%irritants123759%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj124266 _%where123760%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj124266 _%context123761%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj124266 _%marks123762%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj124266 _%phi123763%_ '6 '#f '#f)
          __obj124266)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where123753%_
               _%message123754%_
               _%stx123755%_
               .
               _%details123756%_)
        (raise (make-syntax-error
                _%message123754%_
                (cons _%stx123755%_ _%details123756%_)
                _%where123753%_
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
      (lambda _%$args123750%_ (apply make-instance AST::t _%$args123750%_)))
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
      (lambda (_%stx123748%_)
        (if (##structure-instance-of? _%stx123748%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx123748%_ '1 '#f '#f)
            _%stx123748%_)))
    (define __AST-source
      (lambda (_%stx123739%_)
        (let _%lp123741%_ ((_%src123743%_ _%stx123739%_))
          (if (##structure-instance-of? _%src123743%_ 'gerbil#AST::t)
              (_%lp123741%_
               (##unchecked-structure-ref _%src123743%_ '2 '#f '#f))
              (if (##locat? _%src123743%_) _%src123743%_ '#f)))))
    (define __AST
      (lambda (_%e123731%_ _%src-stx123732%_)
        (let ((_%src123734%_ (__AST-source _%src-stx123732%_)))
          (if (or (##structure-instance-of? _%e123731%_ 'gerbil#AST::t)
                  (not _%src123734%_))
              _%e123731%_
              (##structure AST::t _%e123731%_ _%src123734%_)))))
    (define __AST-eq?
      (lambda (_%stx123728%_ _%obj123729%_)
        (eq? (__AST-e _%stx123728%_) _%obj123729%_)))
    (define __AST-pair?
      (lambda (_%stx123726%_) (pair? (__AST-e _%stx123726%_))))
    (define __AST-null?
      (lambda (_%stx123724%_) (null? (__AST-e _%stx123724%_))))
    (define __AST-datum?
      (lambda (_%stx123705%_)
        (let* ((_%e123707%_ (__AST-e _%stx123705%_))
               (_%$e123709%_ (number? _%e123707%_)))
          (if _%$e123709%_
              _%$e123709%_
              (let ((_%$e123712%_ (string? _%e123707%_)))
                (if _%$e123712%_
                    _%$e123712%_
                    (let ((_%$e123715%_ (char? _%e123707%_)))
                      (if _%$e123715%_
                          _%$e123715%_
                          (let ((_%$e123718%_ (keyword? _%e123707%_)))
                            (if _%$e123718%_
                                _%$e123718%_
                                (let ((_%$e123721%_ (boolean? _%e123707%_)))
                                  (if _%$e123721%_
                                      _%$e123721%_
                                      (eq? _%e123707%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx123703%_) (symbol? (__AST-e _%stx123703%_))))
    (define __AST-id-list?__%
      (lambda (_%stx123654%_ _%tail?123655%_)
        (let _%lp123657%_ ((_%rest123659%_ _%stx123654%_))
          (let* ((_%$e123661%_ _%rest123659%_)
                 (_%$E123663123676%_
                  (lambda ()
                    (let* ((_%$E123664123671%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e123661%_)))
                           (_%rest123674%_ _%$e123661%_))
                      (_%tail?123655%_ _%rest123674%_)))))
            (if (__AST-pair? _%$e123661%_)
                (let* ((_%$tgt123665123679%_ (__AST-e _%$e123661%_))
                       (_%$hd123666123682%_ (##car _%$tgt123665123679%_))
                       (_%$tl123667123685%_ (##cdr _%$tgt123665123679%_))
                       (_%hd123689%_ _%$hd123666123682%_)
                       (_%rest123691%_ _%$tl123667123685%_))
                  (if (__AST-id? _%hd123689%_)
                      (_%lp123657%_ _%rest123691%_)
                      '#f))
                (_%$E123663123676%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx123696%_)
        (let ((_%tail?123698%_ __AST-null?))
          (__AST-id-list?__% _%stx123696%_ _%tail?123698%_))))
    (define __AST-id-list?
      (lambda _g124268_
        (let ((_g124269_ (##length _g124268_)))
          (cond ((##fx= _g124269_ 1) (apply __AST-id-list?__0 _g124268_))
                ((##fx= _g124269_ 2) (apply __AST-id-list?__% _g124268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g124268_))))))
    (define __AST-bind-list?
      (lambda (_%stx123646%_)
        (__AST-id-list?__%
         _%stx123646%_
         (lambda (_%e123648%_)
           (let ((_%$e123650%_ (__AST-null? _%e123648%_)))
             (if _%$e123650%_ _%$e123650%_ (__AST-id? _%e123648%_)))))))
    (define __AST-list?__%
      (lambda (_%stx123599%_ _%tail?123600%_)
        (let _%lp123602%_ ((_%rest123604%_ _%stx123599%_))
          (let* ((_%$e123606%_ _%rest123604%_)
                 (_%$E123608123621%_
                  (lambda ()
                    (let* ((_%$E123609123616%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e123606%_)))
                           (_%rest123619%_ _%$e123606%_))
                      (_%tail?123600%_ _%rest123619%_)))))
            (if (__AST-pair? _%$e123606%_)
                (let* ((_%$tgt123610123624%_ (__AST-e _%$e123606%_))
                       (_%$hd123611123627%_ (##car _%$tgt123610123624%_))
                       (_%$tl123612123630%_ (##cdr _%$tgt123610123624%_))
                       (_%rest123634%_ _%$tl123612123630%_))
                  (_%lp123602%_ _%rest123634%_))
                (_%$E123608123621%_))))))
    (define __AST-list?__0
      (lambda (_%stx123639%_)
        (let ((_%tail?123641%_ __AST-null?))
          (__AST-list?__% _%stx123639%_ _%tail?123641%_))))
    (define __AST-list?
      (lambda _g124270_
        (let ((_g124271_ (##length _g124270_)))
          (cond ((##fx= _g124271_ 1) (apply __AST-list?__0 _g124270_))
                ((##fx= _g124271_ 2) (apply __AST-list?__% _g124270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g124270_))))))
    (define __AST->list
      (lambda (_%stx123564%_)
        (let* ((_%$e123566%_ _%stx123564%_)
               (_%$E123568123581%_
                (lambda ()
                  (let* ((_%$E123569123576%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e123566%_)))
                         (_%rest123579%_ _%$e123566%_))
                    (__AST-e _%rest123579%_)))))
          (if (__AST-pair? _%$e123566%_)
              (let* ((_%$tgt123570123584%_ (__AST-e _%$e123566%_))
                     (_%$hd123571123587%_ (##car _%$tgt123570123584%_))
                     (_%$tl123572123590%_ (##cdr _%$tgt123570123584%_))
                     (_%hd123594%_ _%$hd123571123587%_)
                     (_%rest123596%_ _%$tl123572123590%_))
                (cons _%hd123594%_ (__AST->list _%rest123596%_)))
              (_%$E123568123581%_)))))
    (define __AST->datum
      (lambda (_%stx123557%_)
        (if (##structure-instance-of? _%stx123557%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx123557%_))
            (if (pair? _%stx123557%_)
                (cons (__AST->datum (##car _%stx123557%_))
                      (__AST->datum (##cdr _%stx123557%_)))
                (if (vector? _%stx123557%_)
                    (vector-map __AST->datum _%stx123557%_)
                    (if (box? _%stx123557%_)
                        (box (__AST->datum (unbox _%stx123557%_)))
                        _%stx123557%_))))))
    (define get-readenv
      (lambda (_%port123555%_)
        (##make-readenv
         _%port123555%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in123543%_)
        (let ((_%e123545%_ (##read-datum-or-eof (get-readenv _%in123543%_))))
          (if (eof-object? (__AST-e _%e123545%_))
              (__AST-e _%e123545%_)
              _%e123545%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in123551%_ (current-input-port)))
          (read-syntax__% _%in123551%_))))
    (define read-syntax
      (lambda _g124272_
        (let ((_g124273_ (##length _g124272_)))
          (cond ((##fx= _g124273_ 0) (apply read-syntax__0 _g124272_))
                ((##fx= _g124273_ 1) (apply read-syntax__% _g124272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g124272_))))))
    (define read-syntax-from-file
      (lambda (_%path123538%_)
        (let ((_%r123540%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path123538%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r123540%_)
              (cdr (__AST-e (vector-ref _%r123540%_ '1)))
              (error (err-code->string _%r123540%_) _%path123538%_)))))
    (define __wrap-syntax
      (lambda (_%re123535%_ _%e123536%_)
        (if (eof-object? _%e123536%_)
            _%e123536%_
            (##structure AST::t _%e123536%_ (##readenv->locat _%re123535%_)))))
    (define __unwrap-syntax
      (lambda (_%re123532%_ _%e123533%_) (__AST-e _%e123533%_)))
    (define __pp-syntax
      (lambda (_%stx123530%_) (pp (__AST->datum _%stx123530%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt123528%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt123528%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt123528%_ '@list)
          (macro-readtable-brace-handler-set! _%rt123528%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt123528%_
           '#\!
           __read-sharp-bang)
          _%rt123528%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt123524%_ _%kw123525%_)
        (macro-readtable-bracket-handler-set! _%rt123524%_ _%kw123525%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt123521%_ _%kw123522%_)
        (macro-readtable-brace-handler-set! _%rt123521%_ _%kw123522%_)))
    (define __read-sharp-bang
      (lambda (_%re123512%_ _%next123513%_ _%start-pos123514%_)
        (if (eq? _%start-pos123514%_ '0)
            (let* ((_%line123516%_
                    (##read-line
                     (macro-readenv-port _%re123512%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line123518%_
                    (substring
                     _%line123516%_
                     '1
                     (string-length _%line123516%_))))
              (macro-readenv-script-line-set!
               _%re123512%_
               _%script-line123518%_)
              (##script-marker))
            (##read-sharp-bang
             _%re123512%_
             _%next123513%_
             _%start-pos123514%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj123510%_)
        (if (source-location? _%obj123510%_)
            (string? (##locat-container _%obj123510%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj123508%_)
        (if (##locat? _%obj123508%_)
            (##container->path (##locat-container _%obj123508%_))
            '#f)))))
