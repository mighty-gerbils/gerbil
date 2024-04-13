(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1713044315)
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
      (lambda _%$args110802%_
        (apply make-instance SyntaxError::t _%$args110802%_)))
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
      (lambda (_%self110303110684%_ _%port110686%_)
        (let* ((_%self110688%_ _%self110303110684%_)
               (_%self110690%_ _%self110688%_))
          (letrec ((_%location110700%_
                    (lambda ()
                      (let _%lp110762%_ ((_%rest110764%_
                                          (##unchecked-structure-ref
                                           _%self110690%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest110765110773%_ _%rest110764%_)
                               (_%else110767110781%_ (lambda () '#f))
                               (_%K110769110790%_
                                (lambda (_%rest110784%_ _%hd110785%_)
                                  (let ((_%$e110787%_
                                         (__AST-source _%hd110785%_)))
                                    (if _%$e110787%_
                                        _%$e110787%_
                                        (_%lp110762%_ _%rest110784%_))))))
                          (if (##pair? _%rest110765110773%_)
                              (let ((_%hd110770110793%_
                                     (##car _%rest110765110773%_))
                                    (_%tl110771110795%_
                                     (##cdr _%rest110765110773%_)))
                                (let* ((_%hd110798%_ _%hd110770110793%_)
                                       (_%rest110800%_ _%tl110771110795%_))
                                  (_%K110769110790%_
                                   _%rest110800%_
                                   _%hd110798%_)))
                              (_%else110767110781%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e110703%_ (_%location110700%_)))
                 (if _%$e110703%_
                     ((lambda (_%where110706%_)
                        (##display-locat _%where110706%_ '#t _%port110686%_))
                      _%$e110703%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e110709%_
                      (##unchecked-structure-ref _%self110690%_ '4 '#f '#f)))
                 (if _%$e110709%_
                     ((lambda (_%where110712%_)
                        (displayln
                         '" at "
                         _%where110712%_
                         '": "
                         (##unchecked-structure-ref
                          _%self110690%_
                          '2
                          '#f
                          '#f)))
                      _%$e110709%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self110690%_ '2 '#f '#f))))
               (let* ((_%self.irritants110714110722%_
                       (##unchecked-structure-ref _%self110690%_ '3 '#f '#f))
                      (_%else110716110730%_ (lambda () '#!void))
                      (_%K110718110743%_
                       (lambda (_%rest110733%_ _%stx110734%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx110734%_)
                         (for-each
                          (lambda (_%detail110736%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail110736%_))
                            (let ((_%$e110738%_
                                   (__AST-source _%detail110736%_)))
                              (if _%$e110738%_
                                  ((lambda (_%loc110741%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc110741%_
                                      '#t
                                      _%port110686%_))
                                   _%$e110738%_)
                                  '#!void))
                            (newline))
                          _%rest110733%_))))
                 (if (##pair? _%self.irritants110714110722%_)
                     (let ((_%hd110719110746%_
                            (##car _%self.irritants110714110722%_))
                           (_%tl110720110748%_
                            (##cdr _%self.irritants110714110722%_)))
                       (let* ((_%stx110751%_ _%hd110719110746%_)
                              (_%rest110753%_ _%tl110720110748%_))
                         (_%K110718110743%_ _%rest110753%_ _%stx110751%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont110754110756%_
                          (##unchecked-structure-ref
                           _%self110690%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont110754110756%_
                         (let ((_%cont110759%_ _%cont110754110756%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont110759%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port110686%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message110555%_
               _%irritants110556%_
               _%where110557%_
               _%context110558%_
               _%marks110559%_
               _%phi110560%_)
        (let ((__obj110899
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj110899 _%message110555%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj110899
           _%irritants110556%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj110899 _%where110557%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj110899 _%context110558%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj110899 _%marks110559%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj110899 _%phi110560%_ '6 '#f '#f)
          __obj110899)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where110550%_
               _%message110551%_
               _%stx110552%_
               .
               _%details110553%_)
        (raise (make-syntax-error
                _%message110551%_
                (cons _%stx110552%_ _%details110553%_)
                _%where110550%_
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
      (lambda _%$args110547%_ (apply make-instance AST::t _%$args110547%_)))
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
      (lambda (_%stx110545%_)
        (if (##structure-instance-of? _%stx110545%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx110545%_ '1 '#f '#f)
            _%stx110545%_)))
    (define __AST-source
      (lambda (_%stx110536%_)
        (let _%lp110538%_ ((_%src110540%_ _%stx110536%_))
          (if (##structure-instance-of? _%src110540%_ 'gerbil#AST::t)
              (_%lp110538%_
               (##unchecked-structure-ref _%src110540%_ '2 '#f '#f))
              (if (##locat? _%src110540%_) _%src110540%_ '#f)))))
    (define __AST
      (lambda (_%e110528%_ _%src-stx110529%_)
        (let ((_%src110531%_ (__AST-source _%src-stx110529%_)))
          (if (or (##structure-instance-of? _%e110528%_ 'gerbil#AST::t)
                  (not _%src110531%_))
              _%e110528%_
              (##structure AST::t _%e110528%_ _%src110531%_)))))
    (define __AST-eq?
      (lambda (_%stx110525%_ _%obj110526%_)
        (eq? (__AST-e _%stx110525%_) _%obj110526%_)))
    (define __AST-pair?
      (lambda (_%stx110523%_) (pair? (__AST-e _%stx110523%_))))
    (define __AST-null?
      (lambda (_%stx110521%_) (null? (__AST-e _%stx110521%_))))
    (define __AST-datum?
      (lambda (_%stx110502%_)
        (let* ((_%e110504%_ (__AST-e _%stx110502%_))
               (_%$e110506%_ (number? _%e110504%_)))
          (if _%$e110506%_
              _%$e110506%_
              (let ((_%$e110509%_ (string? _%e110504%_)))
                (if _%$e110509%_
                    _%$e110509%_
                    (let ((_%$e110512%_ (char? _%e110504%_)))
                      (if _%$e110512%_
                          _%$e110512%_
                          (let ((_%$e110515%_ (keyword? _%e110504%_)))
                            (if _%$e110515%_
                                _%$e110515%_
                                (let ((_%$e110518%_ (boolean? _%e110504%_)))
                                  (if _%$e110518%_
                                      _%$e110518%_
                                      (eq? _%e110504%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx110500%_) (symbol? (__AST-e _%stx110500%_))))
    (define __AST-id-list?__%
      (lambda (_%stx110451%_ _%tail?110452%_)
        (let _%lp110454%_ ((_%rest110456%_ _%stx110451%_))
          (let* ((_%$e110458%_ _%rest110456%_)
                 (_%$E110460110473%_
                  (lambda ()
                    (let* ((_%$E110461110468%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110458%_)))
                           (_%rest110471%_ _%$e110458%_))
                      (_%tail?110452%_ _%rest110471%_)))))
            (if (__AST-pair? _%$e110458%_)
                (let* ((_%$tgt110462110476%_ (__AST-e _%$e110458%_))
                       (_%$hd110463110479%_ (##car _%$tgt110462110476%_))
                       (_%$tl110464110482%_ (##cdr _%$tgt110462110476%_))
                       (_%hd110486%_ _%$hd110463110479%_)
                       (_%rest110488%_ _%$tl110464110482%_))
                  (if (__AST-id? _%hd110486%_)
                      (_%lp110454%_ _%rest110488%_)
                      '#f))
                (_%$E110460110473%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx110493%_)
        (let ((_%tail?110495%_ __AST-null?))
          (__AST-id-list?__% _%stx110493%_ _%tail?110495%_))))
    (define __AST-id-list?
      (lambda _g110902_
        (let ((_g110901_ (##length _g110902_)))
          (cond ((##fx= _g110901_ 1) (apply __AST-id-list?__0 _g110902_))
                ((##fx= _g110901_ 2) (apply __AST-id-list?__% _g110902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g110902_))))))
    (define __AST-bind-list?
      (lambda (_%stx110443%_)
        (__AST-id-list?__%
         _%stx110443%_
         (lambda (_%e110445%_)
           (let ((_%$e110447%_ (__AST-null? _%e110445%_)))
             (if _%$e110447%_ _%$e110447%_ (__AST-id? _%e110445%_)))))))
    (define __AST-list?__%
      (lambda (_%stx110396%_ _%tail?110397%_)
        (let _%lp110399%_ ((_%rest110401%_ _%stx110396%_))
          (let* ((_%$e110403%_ _%rest110401%_)
                 (_%$E110405110418%_
                  (lambda ()
                    (let* ((_%$E110406110413%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110403%_)))
                           (_%rest110416%_ _%$e110403%_))
                      (_%tail?110397%_ _%rest110416%_)))))
            (if (__AST-pair? _%$e110403%_)
                (let* ((_%$tgt110407110421%_ (__AST-e _%$e110403%_))
                       (_%$hd110408110424%_ (##car _%$tgt110407110421%_))
                       (_%$tl110409110427%_ (##cdr _%$tgt110407110421%_))
                       (_%rest110431%_ _%$tl110409110427%_))
                  (_%lp110399%_ _%rest110431%_))
                (_%$E110405110418%_))))))
    (define __AST-list?__0
      (lambda (_%stx110436%_)
        (let ((_%tail?110438%_ __AST-null?))
          (__AST-list?__% _%stx110436%_ _%tail?110438%_))))
    (define __AST-list?
      (lambda _g110904_
        (let ((_g110903_ (##length _g110904_)))
          (cond ((##fx= _g110903_ 1) (apply __AST-list?__0 _g110904_))
                ((##fx= _g110903_ 2) (apply __AST-list?__% _g110904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g110904_))))))
    (define __AST->list
      (lambda (_%stx110361%_)
        (let* ((_%$e110363%_ _%stx110361%_)
               (_%$E110365110378%_
                (lambda ()
                  (let* ((_%$E110366110373%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e110363%_)))
                         (_%rest110376%_ _%$e110363%_))
                    (__AST-e _%rest110376%_)))))
          (if (__AST-pair? _%$e110363%_)
              (let* ((_%$tgt110367110381%_ (__AST-e _%$e110363%_))
                     (_%$hd110368110384%_ (##car _%$tgt110367110381%_))
                     (_%$tl110369110387%_ (##cdr _%$tgt110367110381%_))
                     (_%hd110391%_ _%$hd110368110384%_)
                     (_%rest110393%_ _%$tl110369110387%_))
                (cons _%hd110391%_ (__AST->list _%rest110393%_)))
              (_%$E110365110378%_)))))
    (define __AST->datum
      (lambda (_%stx110354%_)
        (if (##structure-instance-of? _%stx110354%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx110354%_))
            (if (pair? _%stx110354%_)
                (cons (__AST->datum (##car _%stx110354%_))
                      (__AST->datum (##cdr _%stx110354%_)))
                (if (vector? _%stx110354%_)
                    (vector-map __AST->datum _%stx110354%_)
                    (if (box? _%stx110354%_)
                        (box (__AST->datum (unbox _%stx110354%_)))
                        _%stx110354%_))))))
    (define get-readenv
      (lambda (_%port110352%_)
        (##make-readenv
         _%port110352%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in110340%_)
        (let ((_%e110342%_ (##read-datum-or-eof (get-readenv _%in110340%_))))
          (if (eof-object? (__AST-e _%e110342%_))
              (__AST-e _%e110342%_)
              _%e110342%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in110348%_ (current-input-port)))
          (read-syntax__% _%in110348%_))))
    (define read-syntax
      (lambda _g110906_
        (let ((_g110905_ (##length _g110906_)))
          (cond ((##fx= _g110905_ 0) (apply read-syntax__0 _g110906_))
                ((##fx= _g110905_ 1) (apply read-syntax__% _g110906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g110906_))))))
    (define read-syntax-from-file
      (lambda (_%path110335%_)
        (let ((_%r110337%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path110335%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r110337%_)
              (cdr (__AST-e (vector-ref _%r110337%_ '1)))
              (error (err-code->string _%r110337%_) _%path110335%_)))))
    (define __wrap-syntax
      (lambda (_%re110332%_ _%e110333%_)
        (if (eof-object? _%e110333%_)
            _%e110333%_
            (##structure AST::t _%e110333%_ (##readenv->locat _%re110332%_)))))
    (define __unwrap-syntax
      (lambda (_%re110329%_ _%e110330%_) (__AST-e _%e110330%_)))
    (define __pp-syntax
      (lambda (_%stx110327%_) (pp (__AST->datum _%stx110327%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt110325%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt110325%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt110325%_ '@list)
          (macro-readtable-brace-handler-set! _%rt110325%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt110325%_
           '#\!
           __read-sharp-bang)
          _%rt110325%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt110321%_ _%kw110322%_)
        (macro-readtable-bracket-handler-set! _%rt110321%_ _%kw110322%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt110318%_ _%kw110319%_)
        (macro-readtable-brace-handler-set! _%rt110318%_ _%kw110319%_)))
    (define __read-sharp-bang
      (lambda (_%re110309%_ _%next110310%_ _%start-pos110311%_)
        (if (eq? _%start-pos110311%_ '0)
            (let* ((_%line110313%_
                    (##read-line
                     (macro-readenv-port _%re110309%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line110315%_
                    (substring
                     _%line110313%_
                     '1
                     (string-length _%line110313%_))))
              (macro-readenv-script-line-set!
               _%re110309%_
               _%script-line110315%_)
              (##script-marker))
            (##read-sharp-bang
             _%re110309%_
             _%next110310%_
             _%start-pos110311%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj110307%_)
        (if (source-location? _%obj110307%_)
            (string? (##locat-container _%obj110307%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj110305%_)
        (if (##locat? _%obj110305%_)
            (##container->path (##locat-container _%obj110305%_))
            '#f)))))
