(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1769382894)
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
      (lambda _%$args124593%_
        (apply make-instance SyntaxError::t _%$args124593%_)))
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
      (lambda (_%self124312%_ _%port124313%_)
        (let ((_%self124316%_ _%self124312%_))
          (letrec ((_%location124327%_
                    (lambda ()
                      (letrec ((_%from-irritants124468%_
                                (lambda ()
                                  (let _%lp124553%_ ((_%rest124555%_
                                                      (##unchecked-structure-ref
                                                       _%self124316%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest124556124564%_
                                            _%rest124555%_)
                                           (_%else124558124572%_
                                            (lambda () '#f))
                                           (_%K124560124581%_
                                            (lambda (_%rest124575%_
                                                     _%hd124576%_)
                                              (let ((_%$e124578%_
                                                     (__AST-source
                                                      _%hd124576%_)))
                                                (if _%$e124578%_
                                                    _%$e124578%_
                                                    (_%lp124553%_
                                                     _%rest124575%_))))))
                                      (if (pair? _%rest124556124564%_)
                                          (let ((_%hd124561124584%_
                                                 (##car _%rest124556124564%_))
                                                (_%tl124562124586%_
                                                 (##cdr _%rest124556124564%_)))
                                            (let* ((_%hd124589%_
                                                    _%hd124561124584%_)
                                                   (_%rest124591%_
                                                    _%tl124562124586%_))
                                              (_%K124560124581%_
                                               _%rest124591%_
                                               _%hd124589%_)))
                                          (_%else124558124572%_))))))
                               (_%from-context124469%_
                                (lambda ()
                                  (let _%lp124475%_ ((_%rest124477%_
                                                      (##unchecked-structure-ref
                                                       _%self124316%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest124478124486%_
                                            _%rest124477%_)
                                           (_%else124480124494%_
                                            (lambda () '#f))
                                           (_%K124482124540%_
                                            (lambda (_%rest124497%_
                                                     _%hd124498%_)
                                              (let* ((_%hd124499124509%_
                                                      _%hd124498%_)
                                                     (_%else124501124517%_
                                                      (lambda ()
                                                        (_%lp124475%_
                                                         _%rest124497%_)))
                                                     (_%K124503124525%_
                                                      (lambda (_%loc124520%_)
                                                        (let ((_%$e124522%_
                                                               (__AST-source
                                                                _%loc124520%_)))
                                                          (if _%$e124522%_
                                                              _%$e124522%_
                                                              (_%lp124475%_
                                                               _%rest124497%_))))))
                                                (if (pair? _%hd124499124509%_)
                                                    (let ((_%hd124504124528%_
                                                           (##car _%hd124499124509%_))
                                                          (_%tl124505124530%_
                                                           (##cdr _%hd124499124509%_)))
                                                      (if (##eq? _%hd124504124528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl124505124530%_)
                      (let ((_%hd124506124533%_ (##car _%tl124505124530%_))
                            (_%tl124507124535%_ (##cdr _%tl124505124530%_)))
                        (let ((_%loc124538%_ _%hd124506124533%_))
                          (if (null? _%tl124507124535%_)
                              (_%K124503124525%_ _%loc124538%_)
                              (_%else124501124517%_))))
                      (_%else124501124517%_))
                  (_%else124501124517%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else124501124517%_))))))
                                      (if (pair? _%rest124478124486%_)
                                          (let ((_%hd124483124543%_
                                                 (##car _%rest124478124486%_))
                                                (_%tl124484124545%_
                                                 (##cdr _%rest124478124486%_)))
                                            (let* ((_%hd124548%_
                                                    _%hd124483124543%_)
                                                   (_%rest124550%_
                                                    _%tl124484124545%_))
                                              (_%K124482124540%_
                                               _%rest124550%_
                                               _%hd124548%_)))
                                          (_%else124480124494%_)))))))
                        (let ((_%$e124471%_ (_%from-irritants124468%_)))
                          (if _%$e124471%_
                              _%$e124471%_
                              (_%from-context124469%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e124330%_ (_%location124327%_)))
                 (if _%$e124330%_
                     ((lambda (_%loc124333%_)
                        (##display-locat _%loc124333%_ '#t _%port124313%_))
                      _%$e124330%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self124316%_ '2 '#f '#f))
               (let ((_%$e124336%_
                      (##unchecked-structure-ref _%self124316%_ '4 '#f '#f)))
                 (if _%$e124336%_
                     ((lambda (_%where124339%_)
                        (displayln '"--- Context: ")
                        (let _%lp124341%_ ((_%rest124343%_ _%where124339%_))
                          (let* ((_%rest124344124352%_ _%rest124343%_)
                                 (_%else124346124360%_ (lambda () '#!void))
                                 (_%K124348124410%_
                                  (lambda (_%rest124363%_ _%hd124364%_)
                                    (let* ((_%hd124365124375%_ _%hd124364%_)
                                           (_%else124367124383%_
                                            (lambda ()
                                              (displayln '" at " _%hd124364%_)
                                              (_%lp124341%_ _%rest124363%_)))
                                           (_%K124369124395%_
                                            (lambda (_%ctx124386%_)
                                              (let ((_%$e124388%_
                                                     (__AST-source
                                                      _%ctx124386%_)))
                                                (if _%$e124388%_
                                                    ((lambda (_%loc124391%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc124391%_
                                                        '#t
                                                        _%port124313%_)
                                                       (newline)
                                                       (_%lp124341%_
                                                        _%rest124363%_))
                                                     _%$e124388%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx124386%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx124386%_)
                                                          (_%lp124341%_
                                                           _%rest124363%_))
                                                        (_%lp124341%_
                                                         _%rest124363%_)))))))
                                      (if (pair? _%hd124365124375%_)
                                          (let ((_%hd124370124398%_
                                                 (##car _%hd124365124375%_))
                                                (_%tl124371124400%_
                                                 (##cdr _%hd124365124375%_)))
                                            (if (##eq? _%hd124370124398%_ '@)
                                                (if (pair? _%tl124371124400%_)
                                                    (let ((_%hd124372124403%_
                                                           (##car _%tl124371124400%_))
                                                          (_%tl124373124405%_
                                                           (##cdr _%tl124371124400%_)))
                                                      (let ((_%ctx124408%_
                                                             _%hd124372124403%_))
                                                        (if (null? _%tl124373124405%_)
                                                            (_%K124369124395%_
                                                             _%ctx124408%_)
                                                            (_%else124367124383%_))))
                                                    (_%else124367124383%_))
                                                (_%else124367124383%_)))
                                          (_%else124367124383%_))))))
                            (if (pair? _%rest124344124352%_)
                                (let ((_%hd124349124413%_
                                       (##car _%rest124344124352%_))
                                      (_%tl124350124415%_
                                       (##cdr _%rest124344124352%_)))
                                  (let* ((_%hd124418%_ _%hd124349124413%_)
                                         (_%rest124420%_ _%tl124350124415%_))
                                    (_%K124348124410%_
                                     _%rest124420%_
                                     _%hd124418%_)))
                                '#!void))))
                      _%$e124336%_)
                     '#!void))
               (let* ((_%self.irritants124421124429%_
                       (##unchecked-structure-ref _%self124316%_ '3 '#f '#f))
                      (_%else124423124437%_ (lambda () '#!void))
                      (_%K124425124450%_
                       (lambda (_%rest124440%_ _%stx124441%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx124441%_)
                         (for-each
                          (lambda (_%detail124443%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail124443%_))
                            (let ((_%$e124445%_
                                   (__AST-source _%detail124443%_)))
                              (if _%$e124445%_
                                  ((lambda (_%loc124448%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc124448%_
                                      '#t
                                      _%port124313%_))
                                   _%$e124445%_)
                                  '#!void))
                            (newline))
                          _%rest124440%_))))
                 (if (pair? _%self.irritants124421124429%_)
                     (let ((_%hd124426124453%_
                            (##car _%self.irritants124421124429%_))
                           (_%tl124427124455%_
                            (##cdr _%self.irritants124421124429%_)))
                       (let* ((_%stx124458%_ _%hd124426124453%_)
                              (_%rest124460%_ _%tl124427124455%_))
                         (_%K124425124450%_ _%rest124460%_ _%stx124458%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont124461124463%_
                          (##unchecked-structure-ref
                           _%self124316%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont124461124463%_
                         (let ((_%cont124465%_ _%cont124461124463%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont124465%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port124313%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message124183%_
               _%irritants124184%_
               _%where124185%_
               _%context124186%_
               _%marks124187%_
               _%phi124188%_)
        (let ((__obj124690
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj124690 _%message124183%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj124690
           _%irritants124184%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj124690 _%where124185%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj124690 _%context124186%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj124690 _%marks124187%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj124690 _%phi124188%_ '6 '#f '#f)
          __obj124690)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where124178%_
               _%message124179%_
               _%stx124180%_
               .
               _%details124181%_)
        (raise (make-syntax-error
                _%message124179%_
                (cons _%stx124180%_ _%details124181%_)
                _%where124178%_
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
      (lambda _%$args124175%_ (apply make-instance AST::t _%$args124175%_)))
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
      (lambda (_%stx124173%_)
        (if (##structure-instance-of? _%stx124173%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx124173%_ '1 '#f '#f)
            _%stx124173%_)))
    (define __AST-source
      (lambda (_%stx124164%_)
        (let _%lp124166%_ ((_%src124168%_ _%stx124164%_))
          (if (##structure-instance-of? _%src124168%_ 'gerbil#AST::t)
              (_%lp124166%_
               (##unchecked-structure-ref _%src124168%_ '2 '#f '#f))
              (if (##locat? _%src124168%_) _%src124168%_ '#f)))))
    (define __AST
      (lambda (_%e124156%_ _%src-stx124157%_)
        (let ((_%src124159%_ (__AST-source _%src-stx124157%_)))
          (if (or (##structure-instance-of? _%e124156%_ 'gerbil#AST::t)
                  (not _%src124159%_))
              _%e124156%_
              (##structure AST::t _%e124156%_ _%src124159%_)))))
    (define __AST-eq?
      (lambda (_%stx124153%_ _%obj124154%_)
        (eq? (__AST-e _%stx124153%_) _%obj124154%_)))
    (define __AST-pair?
      (lambda (_%stx124151%_) (pair? (__AST-e _%stx124151%_))))
    (define __AST-null?
      (lambda (_%stx124149%_) (null? (__AST-e _%stx124149%_))))
    (define __AST-datum?
      (lambda (_%stx124130%_)
        (let* ((_%e124132%_ (__AST-e _%stx124130%_))
               (_%$e124134%_ (number? _%e124132%_)))
          (if _%$e124134%_
              _%$e124134%_
              (let ((_%$e124137%_ (string? _%e124132%_)))
                (if _%$e124137%_
                    _%$e124137%_
                    (let ((_%$e124140%_ (char? _%e124132%_)))
                      (if _%$e124140%_
                          _%$e124140%_
                          (let ((_%$e124143%_ (keyword? _%e124132%_)))
                            (if _%$e124143%_
                                _%$e124143%_
                                (let ((_%$e124146%_ (boolean? _%e124132%_)))
                                  (if _%$e124146%_
                                      _%$e124146%_
                                      (eq? _%e124132%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx124128%_) (symbol? (__AST-e _%stx124128%_))))
    (define __AST-id-list?__%
      (lambda (_%stx124079%_ _%tail?124080%_)
        (let _%lp124082%_ ((_%rest124084%_ _%stx124079%_))
          (let* ((_%$e124086%_ _%rest124084%_)
                 (_%$E124088124101%_
                  (lambda ()
                    (let* ((_%$E124089124096%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e124086%_)))
                           (_%rest124099%_ _%$e124086%_))
                      (_%tail?124080%_ _%rest124099%_)))))
            (if (__AST-pair? _%$e124086%_)
                (let* ((_%$tgt124090124104%_ (__AST-e _%$e124086%_))
                       (_%$hd124091124107%_ (##car _%$tgt124090124104%_))
                       (_%$tl124092124110%_ (##cdr _%$tgt124090124104%_))
                       (_%hd124114%_ _%$hd124091124107%_)
                       (_%rest124116%_ _%$tl124092124110%_))
                  (if (__AST-id? _%hd124114%_)
                      (_%lp124082%_ _%rest124116%_)
                      '#f))
                (_%$E124088124101%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx124121%_)
        (let ((_%tail?124123%_ __AST-null?))
          (__AST-id-list?__% _%stx124121%_ _%tail?124123%_))))
    (define __AST-id-list?
      (lambda _g124692_
        (let ((_g124693_ (##length _g124692_)))
          (cond ((##fx= _g124693_ 1) (apply __AST-id-list?__0 _g124692_))
                ((##fx= _g124693_ 2) (apply __AST-id-list?__% _g124692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g124692_))))))
    (define __AST-bind-list?
      (lambda (_%stx124071%_)
        (__AST-id-list?__%
         _%stx124071%_
         (lambda (_%e124073%_)
           (let ((_%$e124075%_ (__AST-null? _%e124073%_)))
             (if _%$e124075%_ _%$e124075%_ (__AST-id? _%e124073%_)))))))
    (define __AST-list?__%
      (lambda (_%stx124024%_ _%tail?124025%_)
        (let _%lp124027%_ ((_%rest124029%_ _%stx124024%_))
          (let* ((_%$e124031%_ _%rest124029%_)
                 (_%$E124033124046%_
                  (lambda ()
                    (let* ((_%$E124034124041%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e124031%_)))
                           (_%rest124044%_ _%$e124031%_))
                      (_%tail?124025%_ _%rest124044%_)))))
            (if (__AST-pair? _%$e124031%_)
                (let* ((_%$tgt124035124049%_ (__AST-e _%$e124031%_))
                       (_%$hd124036124052%_ (##car _%$tgt124035124049%_))
                       (_%$tl124037124055%_ (##cdr _%$tgt124035124049%_))
                       (_%rest124059%_ _%$tl124037124055%_))
                  (_%lp124027%_ _%rest124059%_))
                (_%$E124033124046%_))))))
    (define __AST-list?__0
      (lambda (_%stx124064%_)
        (let ((_%tail?124066%_ __AST-null?))
          (__AST-list?__% _%stx124064%_ _%tail?124066%_))))
    (define __AST-list?
      (lambda _g124694_
        (let ((_g124695_ (##length _g124694_)))
          (cond ((##fx= _g124695_ 1) (apply __AST-list?__0 _g124694_))
                ((##fx= _g124695_ 2) (apply __AST-list?__% _g124694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g124694_))))))
    (define __AST->list
      (lambda (_%stx123989%_)
        (let* ((_%$e123991%_ _%stx123989%_)
               (_%$E123993124006%_
                (lambda ()
                  (let* ((_%$E123994124001%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e123991%_)))
                         (_%rest124004%_ _%$e123991%_))
                    (__AST-e _%rest124004%_)))))
          (if (__AST-pair? _%$e123991%_)
              (let* ((_%$tgt123995124009%_ (__AST-e _%$e123991%_))
                     (_%$hd123996124012%_ (##car _%$tgt123995124009%_))
                     (_%$tl123997124015%_ (##cdr _%$tgt123995124009%_))
                     (_%hd124019%_ _%$hd123996124012%_)
                     (_%rest124021%_ _%$tl123997124015%_))
                (cons _%hd124019%_ (__AST->list _%rest124021%_)))
              (_%$E123993124006%_)))))
    (define __AST->datum
      (lambda (_%stx123982%_)
        (if (##structure-instance-of? _%stx123982%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx123982%_))
            (if (pair? _%stx123982%_)
                (cons (__AST->datum (##car _%stx123982%_))
                      (__AST->datum (##cdr _%stx123982%_)))
                (if (vector? _%stx123982%_)
                    (vector-map __AST->datum _%stx123982%_)
                    (if (box? _%stx123982%_)
                        (box (__AST->datum (unbox _%stx123982%_)))
                        _%stx123982%_))))))
    (define get-readenv
      (lambda (_%port123980%_)
        (##make-readenv
         _%port123980%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in123968%_)
        (let ((_%e123970%_ (##read-datum-or-eof (get-readenv _%in123968%_))))
          (if (eof-object? (__AST-e _%e123970%_))
              (__AST-e _%e123970%_)
              _%e123970%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in123976%_ (current-input-port)))
          (read-syntax__% _%in123976%_))))
    (define read-syntax
      (lambda _g124696_
        (let ((_g124697_ (##length _g124696_)))
          (cond ((##fx= _g124697_ 0) (apply read-syntax__0 _g124696_))
                ((##fx= _g124697_ 1) (apply read-syntax__% _g124696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g124696_))))))
    (define read-syntax-from-file
      (lambda (_%path123963%_)
        (let ((_%r123965%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path123963%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r123965%_)
              (cdr (__AST-e (vector-ref _%r123965%_ '1)))
              (error (err-code->string _%r123965%_) _%path123963%_)))))
    (define __wrap-syntax
      (lambda (_%re123960%_ _%e123961%_)
        (if (eof-object? _%e123961%_)
            _%e123961%_
            (##structure AST::t _%e123961%_ (##readenv->locat _%re123960%_)))))
    (define __unwrap-syntax
      (lambda (_%re123957%_ _%e123958%_) (__AST-e _%e123958%_)))
    (define __pp-syntax
      (lambda (_%stx123955%_) (pp (__AST->datum _%stx123955%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt123953%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt123953%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt123953%_ '@list)
          (macro-readtable-brace-handler-set! _%rt123953%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt123953%_
           '#\!
           __read-sharp-bang)
          _%rt123953%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt123949%_ _%kw123950%_)
        (macro-readtable-bracket-handler-set! _%rt123949%_ _%kw123950%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt123946%_ _%kw123947%_)
        (macro-readtable-brace-handler-set! _%rt123946%_ _%kw123947%_)))
    (define __read-sharp-bang
      (lambda (_%re123937%_ _%next123938%_ _%start-pos123939%_)
        (if (eq? _%start-pos123939%_ '0)
            (let* ((_%line123941%_
                    (##read-line
                     (macro-readenv-port _%re123937%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line123943%_
                    (substring
                     _%line123941%_
                     '1
                     (string-length _%line123941%_))))
              (macro-readenv-script-line-set!
               _%re123937%_
               _%script-line123943%_)
              (##script-marker))
            (##read-sharp-bang
             _%re123937%_
             _%next123938%_
             _%start-pos123939%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj123935%_)
        (if (source-location? _%obj123935%_)
            (string? (##locat-container _%obj123935%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj123933%_)
        (if (##locat? _%obj123933%_)
            (##container->path (##locat-container _%obj123933%_))
            '#f)))))
