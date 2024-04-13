(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1713000277)
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
      (lambda _%$args111770%_
        (apply make-instance SyntaxError::t _%$args111770%_)))
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
      (lambda (_%self111271111652%_ _%port111654%_)
        (let* ((_%self111656%_ _%self111271111652%_)
               (_%self111658%_ _%self111656%_))
          (letrec ((_%location111668%_
                    (lambda ()
                      (let _%lp111730%_ ((_%rest111732%_
                                          (##unchecked-structure-ref
                                           _%self111658%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest111733111741%_ _%rest111732%_)
                               (_%else111735111749%_ (lambda () '#f))
                               (_%K111737111758%_
                                (lambda (_%rest111752%_ _%hd111753%_)
                                  (let ((_%$e111755%_
                                         (__AST-source _%hd111753%_)))
                                    (if _%$e111755%_
                                        _%$e111755%_
                                        (_%lp111730%_ _%rest111752%_))))))
                          (if (##pair? _%rest111733111741%_)
                              (let ((_%hd111738111761%_
                                     (##car _%rest111733111741%_))
                                    (_%tl111739111763%_
                                     (##cdr _%rest111733111741%_)))
                                (let* ((_%hd111766%_ _%hd111738111761%_)
                                       (_%rest111768%_ _%tl111739111763%_))
                                  (_%K111737111758%_
                                   _%rest111768%_
                                   _%hd111766%_)))
                              (_%else111735111749%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e111671%_ (_%location111668%_)))
                 (if _%$e111671%_
                     ((lambda (_%where111674%_)
                        (##display-locat _%where111674%_ '#t _%port111654%_))
                      _%$e111671%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e111677%_
                      (##unchecked-structure-ref _%self111658%_ '4 '#f '#f)))
                 (if _%$e111677%_
                     ((lambda (_%where111680%_)
                        (displayln
                         '" at "
                         _%where111680%_
                         '": "
                         (##unchecked-structure-ref
                          _%self111658%_
                          '2
                          '#f
                          '#f)))
                      _%$e111677%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self111658%_ '2 '#f '#f))))
               (let* ((_%self.irritants111682111690%_
                       (##unchecked-structure-ref _%self111658%_ '3 '#f '#f))
                      (_%else111684111698%_ (lambda () '#!void))
                      (_%K111686111711%_
                       (lambda (_%rest111701%_ _%stx111702%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx111702%_)
                         (for-each
                          (lambda (_%detail111704%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail111704%_))
                            (let ((_%$e111706%_
                                   (__AST-source _%detail111704%_)))
                              (if _%$e111706%_
                                  ((lambda (_%loc111709%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc111709%_
                                      '#t
                                      _%port111654%_))
                                   _%$e111706%_)
                                  '#!void))
                            (newline))
                          _%rest111701%_))))
                 (if (##pair? _%self.irritants111682111690%_)
                     (let ((_%hd111687111714%_
                            (##car _%self.irritants111682111690%_))
                           (_%tl111688111716%_
                            (##cdr _%self.irritants111682111690%_)))
                       (let* ((_%stx111719%_ _%hd111687111714%_)
                              (_%rest111721%_ _%tl111688111716%_))
                         (_%K111686111711%_ _%rest111721%_ _%stx111719%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont111722111724%_
                          (##unchecked-structure-ref
                           _%self111658%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont111722111724%_
                         (let ((_%cont111727%_ _%cont111722111724%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont111727%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port111654%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message111523%_
               _%irritants111524%_
               _%where111525%_
               _%context111526%_
               _%marks111527%_
               _%phi111528%_)
        (let ((__obj111867
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj111867 _%message111523%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj111867
           _%irritants111524%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj111867 _%where111525%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj111867 _%context111526%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj111867 _%marks111527%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj111867 _%phi111528%_ '6 '#f '#f)
          __obj111867)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where111518%_
               _%message111519%_
               _%stx111520%_
               .
               _%details111521%_)
        (raise (make-syntax-error
                _%message111519%_
                (cons _%stx111520%_ _%details111521%_)
                _%where111518%_
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
      (lambda _%$args111515%_ (apply make-instance AST::t _%$args111515%_)))
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
      (lambda (_%stx111513%_)
        (if (##structure-instance-of? _%stx111513%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx111513%_ '1 '#f '#f)
            _%stx111513%_)))
    (define __AST-source
      (lambda (_%stx111504%_)
        (let _%lp111506%_ ((_%src111508%_ _%stx111504%_))
          (if (##structure-instance-of? _%src111508%_ 'gerbil#AST::t)
              (_%lp111506%_
               (##unchecked-structure-ref _%src111508%_ '2 '#f '#f))
              (if (##locat? _%src111508%_) _%src111508%_ '#f)))))
    (define __AST
      (lambda (_%e111496%_ _%src-stx111497%_)
        (let ((_%src111499%_ (__AST-source _%src-stx111497%_)))
          (if (or (##structure-instance-of? _%e111496%_ 'gerbil#AST::t)
                  (not _%src111499%_))
              _%e111496%_
              (##structure AST::t _%e111496%_ _%src111499%_)))))
    (define __AST-eq?
      (lambda (_%stx111493%_ _%obj111494%_)
        (eq? (__AST-e _%stx111493%_) _%obj111494%_)))
    (define __AST-pair?
      (lambda (_%stx111491%_) (pair? (__AST-e _%stx111491%_))))
    (define __AST-null?
      (lambda (_%stx111489%_) (null? (__AST-e _%stx111489%_))))
    (define __AST-datum?
      (lambda (_%stx111470%_)
        (let* ((_%e111472%_ (__AST-e _%stx111470%_))
               (_%$e111474%_ (number? _%e111472%_)))
          (if _%$e111474%_
              _%$e111474%_
              (let ((_%$e111477%_ (string? _%e111472%_)))
                (if _%$e111477%_
                    _%$e111477%_
                    (let ((_%$e111480%_ (char? _%e111472%_)))
                      (if _%$e111480%_
                          _%$e111480%_
                          (let ((_%$e111483%_ (keyword? _%e111472%_)))
                            (if _%$e111483%_
                                _%$e111483%_
                                (let ((_%$e111486%_ (boolean? _%e111472%_)))
                                  (if _%$e111486%_
                                      _%$e111486%_
                                      (eq? _%e111472%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx111468%_) (symbol? (__AST-e _%stx111468%_))))
    (define __AST-id-list?__%
      (lambda (_%stx111419%_ _%tail?111420%_)
        (let _%lp111422%_ ((_%rest111424%_ _%stx111419%_))
          (let* ((_%$e111426%_ _%rest111424%_)
                 (_%$E111428111441%_
                  (lambda ()
                    (let* ((_%$E111429111436%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e111426%_)))
                           (_%rest111439%_ _%$e111426%_))
                      (_%tail?111420%_ _%rest111439%_)))))
            (if (__AST-pair? _%$e111426%_)
                (let* ((_%$tgt111430111444%_ (__AST-e _%$e111426%_))
                       (_%$hd111431111447%_ (##car _%$tgt111430111444%_))
                       (_%$tl111432111450%_ (##cdr _%$tgt111430111444%_))
                       (_%hd111454%_ _%$hd111431111447%_)
                       (_%rest111456%_ _%$tl111432111450%_))
                  (if (__AST-id? _%hd111454%_)
                      (_%lp111422%_ _%rest111456%_)
                      '#f))
                (_%$E111428111441%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx111461%_)
        (let ((_%tail?111463%_ __AST-null?))
          (__AST-id-list?__% _%stx111461%_ _%tail?111463%_))))
    (define __AST-id-list?
      (lambda _g111870_
        (let ((_g111869_ (##length _g111870_)))
          (cond ((##fx= _g111869_ 1) (apply __AST-id-list?__0 _g111870_))
                ((##fx= _g111869_ 2) (apply __AST-id-list?__% _g111870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g111870_))))))
    (define __AST-bind-list?
      (lambda (_%stx111411%_)
        (__AST-id-list?__%
         _%stx111411%_
         (lambda (_%e111413%_)
           (let ((_%$e111415%_ (__AST-null? _%e111413%_)))
             (if _%$e111415%_ _%$e111415%_ (__AST-id? _%e111413%_)))))))
    (define __AST-list?__%
      (lambda (_%stx111364%_ _%tail?111365%_)
        (let _%lp111367%_ ((_%rest111369%_ _%stx111364%_))
          (let* ((_%$e111371%_ _%rest111369%_)
                 (_%$E111373111386%_
                  (lambda ()
                    (let* ((_%$E111374111381%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e111371%_)))
                           (_%rest111384%_ _%$e111371%_))
                      (_%tail?111365%_ _%rest111384%_)))))
            (if (__AST-pair? _%$e111371%_)
                (let* ((_%$tgt111375111389%_ (__AST-e _%$e111371%_))
                       (_%$hd111376111392%_ (##car _%$tgt111375111389%_))
                       (_%$tl111377111395%_ (##cdr _%$tgt111375111389%_))
                       (_%rest111399%_ _%$tl111377111395%_))
                  (_%lp111367%_ _%rest111399%_))
                (_%$E111373111386%_))))))
    (define __AST-list?__0
      (lambda (_%stx111404%_)
        (let ((_%tail?111406%_ __AST-null?))
          (__AST-list?__% _%stx111404%_ _%tail?111406%_))))
    (define __AST-list?
      (lambda _g111872_
        (let ((_g111871_ (##length _g111872_)))
          (cond ((##fx= _g111871_ 1) (apply __AST-list?__0 _g111872_))
                ((##fx= _g111871_ 2) (apply __AST-list?__% _g111872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g111872_))))))
    (define __AST->list
      (lambda (_%stx111329%_)
        (let* ((_%$e111331%_ _%stx111329%_)
               (_%$E111333111346%_
                (lambda ()
                  (let* ((_%$E111334111341%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e111331%_)))
                         (_%rest111344%_ _%$e111331%_))
                    (__AST-e _%rest111344%_)))))
          (if (__AST-pair? _%$e111331%_)
              (let* ((_%$tgt111335111349%_ (__AST-e _%$e111331%_))
                     (_%$hd111336111352%_ (##car _%$tgt111335111349%_))
                     (_%$tl111337111355%_ (##cdr _%$tgt111335111349%_))
                     (_%hd111359%_ _%$hd111336111352%_)
                     (_%rest111361%_ _%$tl111337111355%_))
                (cons _%hd111359%_ (__AST->list _%rest111361%_)))
              (_%$E111333111346%_)))))
    (define __AST->datum
      (lambda (_%stx111322%_)
        (if (##structure-instance-of? _%stx111322%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx111322%_))
            (if (pair? _%stx111322%_)
                (cons (__AST->datum (##car _%stx111322%_))
                      (__AST->datum (##cdr _%stx111322%_)))
                (if (vector? _%stx111322%_)
                    (vector-map __AST->datum _%stx111322%_)
                    (if (box? _%stx111322%_)
                        (box (__AST->datum (unbox _%stx111322%_)))
                        _%stx111322%_))))))
    (define get-readenv
      (lambda (_%port111320%_)
        (##make-readenv
         _%port111320%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in111308%_)
        (let ((_%e111310%_ (##read-datum-or-eof (get-readenv _%in111308%_))))
          (if (eof-object? (__AST-e _%e111310%_))
              (__AST-e _%e111310%_)
              _%e111310%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in111316%_ (current-input-port)))
          (read-syntax__% _%in111316%_))))
    (define read-syntax
      (lambda _g111874_
        (let ((_g111873_ (##length _g111874_)))
          (cond ((##fx= _g111873_ 0) (apply read-syntax__0 _g111874_))
                ((##fx= _g111873_ 1) (apply read-syntax__% _g111874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g111874_))))))
    (define read-syntax-from-file
      (lambda (_%path111303%_)
        (let ((_%r111305%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path111303%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r111305%_)
              (cdr (__AST-e (vector-ref _%r111305%_ '1)))
              (error (err-code->string _%r111305%_) _%path111303%_)))))
    (define __wrap-syntax
      (lambda (_%re111300%_ _%e111301%_)
        (if (eof-object? _%e111301%_)
            _%e111301%_
            (##structure AST::t _%e111301%_ (##readenv->locat _%re111300%_)))))
    (define __unwrap-syntax
      (lambda (_%re111297%_ _%e111298%_) (__AST-e _%e111298%_)))
    (define __pp-syntax
      (lambda (_%stx111295%_) (pp (__AST->datum _%stx111295%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt111293%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt111293%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt111293%_ '@list)
          (macro-readtable-brace-handler-set! _%rt111293%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt111293%_
           '#\!
           __read-sharp-bang)
          _%rt111293%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt111289%_ _%kw111290%_)
        (macro-readtable-bracket-handler-set! _%rt111289%_ _%kw111290%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt111286%_ _%kw111287%_)
        (macro-readtable-brace-handler-set! _%rt111286%_ _%kw111287%_)))
    (define __read-sharp-bang
      (lambda (_%re111277%_ _%next111278%_ _%start-pos111279%_)
        (if (eq? _%start-pos111279%_ '0)
            (let* ((_%line111281%_
                    (##read-line
                     (macro-readenv-port _%re111277%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line111283%_
                    (substring
                     _%line111281%_
                     '1
                     (string-length _%line111281%_))))
              (macro-readenv-script-line-set!
               _%re111277%_
               _%script-line111283%_)
              (##script-marker))
            (##read-sharp-bang
             _%re111277%_
             _%next111278%_
             _%start-pos111279%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj111275%_)
        (if (source-location? _%obj111275%_)
            (string? (##locat-container _%obj111275%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj111273%_)
        (if (##locat? _%obj111273%_)
            (##container->path (##locat-container _%obj111273%_))
            '#f)))))
