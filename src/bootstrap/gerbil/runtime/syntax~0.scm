(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1734215269)
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
      (lambda _%$args112575%_
        (apply make-instance SyntaxError::t _%$args112575%_)))
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
      (lambda (_%self112076112457%_ _%port112459%_)
        (let* ((_%self112461%_ _%self112076112457%_)
               (_%self112463%_ _%self112461%_))
          (letrec ((_%location112473%_
                    (lambda ()
                      (let _%lp112535%_ ((_%rest112537%_
                                          (##unchecked-structure-ref
                                           _%self112463%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest112538112546%_ _%rest112537%_)
                               (_%else112540112554%_ (lambda () '#f))
                               (_%K112542112563%_
                                (lambda (_%rest112557%_ _%hd112558%_)
                                  (let ((_%$e112560%_
                                         (__AST-source _%hd112558%_)))
                                    (if _%$e112560%_
                                        _%$e112560%_
                                        (_%lp112535%_ _%rest112557%_))))))
                          (if (pair? _%rest112538112546%_)
                              (let ((_%hd112543112566%_
                                     (##car _%rest112538112546%_))
                                    (_%tl112544112568%_
                                     (##cdr _%rest112538112546%_)))
                                (let* ((_%hd112571%_ _%hd112543112566%_)
                                       (_%rest112573%_ _%tl112544112568%_))
                                  (_%K112542112563%_
                                   _%rest112573%_
                                   _%hd112571%_)))
                              (_%else112540112554%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e112476%_ (_%location112473%_)))
                 (if _%$e112476%_
                     ((lambda (_%where112479%_)
                        (##display-locat _%where112479%_ '#t _%port112459%_))
                      _%$e112476%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e112482%_
                      (##unchecked-structure-ref _%self112463%_ '4 '#f '#f)))
                 (if _%$e112482%_
                     ((lambda (_%where112485%_)
                        (displayln
                         '" at "
                         _%where112485%_
                         '": "
                         (##unchecked-structure-ref
                          _%self112463%_
                          '2
                          '#f
                          '#f)))
                      _%$e112482%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self112463%_ '2 '#f '#f))))
               (let* ((_%self.irritants112487112495%_
                       (##unchecked-structure-ref _%self112463%_ '3 '#f '#f))
                      (_%else112489112503%_ (lambda () '#!void))
                      (_%K112491112516%_
                       (lambda (_%rest112506%_ _%stx112507%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx112507%_)
                         (for-each
                          (lambda (_%detail112509%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail112509%_))
                            (let ((_%$e112511%_
                                   (__AST-source _%detail112509%_)))
                              (if _%$e112511%_
                                  ((lambda (_%loc112514%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc112514%_
                                      '#t
                                      _%port112459%_))
                                   _%$e112511%_)
                                  '#!void))
                            (newline))
                          _%rest112506%_))))
                 (if (pair? _%self.irritants112487112495%_)
                     (let ((_%hd112492112519%_
                            (##car _%self.irritants112487112495%_))
                           (_%tl112493112521%_
                            (##cdr _%self.irritants112487112495%_)))
                       (let* ((_%stx112524%_ _%hd112492112519%_)
                              (_%rest112526%_ _%tl112493112521%_))
                         (_%K112491112516%_ _%rest112526%_ _%stx112524%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont112527112529%_
                          (##unchecked-structure-ref
                           _%self112463%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont112527112529%_
                         (let ((_%cont112532%_ _%cont112527112529%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont112532%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port112459%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message112328%_
               _%irritants112329%_
               _%where112330%_
               _%context112331%_
               _%marks112332%_
               _%phi112333%_)
        (let ((__obj112672
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj112672 _%message112328%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj112672
           _%irritants112329%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj112672 _%where112330%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj112672 _%context112331%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj112672 _%marks112332%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj112672 _%phi112333%_ '6 '#f '#f)
          __obj112672)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where112323%_
               _%message112324%_
               _%stx112325%_
               .
               _%details112326%_)
        (raise (make-syntax-error
                _%message112324%_
                (cons _%stx112325%_ _%details112326%_)
                _%where112323%_
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
      (lambda _%$args112320%_ (apply make-instance AST::t _%$args112320%_)))
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
      (lambda (_%stx112318%_)
        (if (##structure-instance-of? _%stx112318%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx112318%_ '1 '#f '#f)
            _%stx112318%_)))
    (define __AST-source
      (lambda (_%stx112309%_)
        (let _%lp112311%_ ((_%src112313%_ _%stx112309%_))
          (if (##structure-instance-of? _%src112313%_ 'gerbil#AST::t)
              (_%lp112311%_
               (##unchecked-structure-ref _%src112313%_ '2 '#f '#f))
              (if (##locat? _%src112313%_) _%src112313%_ '#f)))))
    (define __AST
      (lambda (_%e112301%_ _%src-stx112302%_)
        (let ((_%src112304%_ (__AST-source _%src-stx112302%_)))
          (if (or (##structure-instance-of? _%e112301%_ 'gerbil#AST::t)
                  (not _%src112304%_))
              _%e112301%_
              (##structure AST::t _%e112301%_ _%src112304%_)))))
    (define __AST-eq?
      (lambda (_%stx112298%_ _%obj112299%_)
        (eq? (__AST-e _%stx112298%_) _%obj112299%_)))
    (define __AST-pair?
      (lambda (_%stx112296%_) (pair? (__AST-e _%stx112296%_))))
    (define __AST-null?
      (lambda (_%stx112294%_) (null? (__AST-e _%stx112294%_))))
    (define __AST-datum?
      (lambda (_%stx112275%_)
        (let* ((_%e112277%_ (__AST-e _%stx112275%_))
               (_%$e112279%_ (number? _%e112277%_)))
          (if _%$e112279%_
              _%$e112279%_
              (let ((_%$e112282%_ (string? _%e112277%_)))
                (if _%$e112282%_
                    _%$e112282%_
                    (let ((_%$e112285%_ (char? _%e112277%_)))
                      (if _%$e112285%_
                          _%$e112285%_
                          (let ((_%$e112288%_ (keyword? _%e112277%_)))
                            (if _%$e112288%_
                                _%$e112288%_
                                (let ((_%$e112291%_ (boolean? _%e112277%_)))
                                  (if _%$e112291%_
                                      _%$e112291%_
                                      (eq? _%e112277%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx112273%_) (symbol? (__AST-e _%stx112273%_))))
    (define __AST-id-list?__%
      (lambda (_%stx112224%_ _%tail?112225%_)
        (let _%lp112227%_ ((_%rest112229%_ _%stx112224%_))
          (let* ((_%$e112231%_ _%rest112229%_)
                 (_%$E112233112246%_
                  (lambda ()
                    (let* ((_%$E112234112241%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e112231%_)))
                           (_%rest112244%_ _%$e112231%_))
                      (_%tail?112225%_ _%rest112244%_)))))
            (if (__AST-pair? _%$e112231%_)
                (let* ((_%$tgt112235112249%_ (__AST-e _%$e112231%_))
                       (_%$hd112236112252%_ (##car _%$tgt112235112249%_))
                       (_%$tl112237112255%_ (##cdr _%$tgt112235112249%_))
                       (_%hd112259%_ _%$hd112236112252%_)
                       (_%rest112261%_ _%$tl112237112255%_))
                  (if (__AST-id? _%hd112259%_)
                      (_%lp112227%_ _%rest112261%_)
                      '#f))
                (_%$E112233112246%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx112266%_)
        (let ((_%tail?112268%_ __AST-null?))
          (__AST-id-list?__% _%stx112266%_ _%tail?112268%_))))
    (define __AST-id-list?
      (lambda _g112675_
        (let ((_g112674_ (##length _g112675_)))
          (cond ((##fx= _g112674_ 1) (apply __AST-id-list?__0 _g112675_))
                ((##fx= _g112674_ 2) (apply __AST-id-list?__% _g112675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g112675_))))))
    (define __AST-bind-list?
      (lambda (_%stx112216%_)
        (__AST-id-list?__%
         _%stx112216%_
         (lambda (_%e112218%_)
           (let ((_%$e112220%_ (__AST-null? _%e112218%_)))
             (if _%$e112220%_ _%$e112220%_ (__AST-id? _%e112218%_)))))))
    (define __AST-list?__%
      (lambda (_%stx112169%_ _%tail?112170%_)
        (let _%lp112172%_ ((_%rest112174%_ _%stx112169%_))
          (let* ((_%$e112176%_ _%rest112174%_)
                 (_%$E112178112191%_
                  (lambda ()
                    (let* ((_%$E112179112186%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e112176%_)))
                           (_%rest112189%_ _%$e112176%_))
                      (_%tail?112170%_ _%rest112189%_)))))
            (if (__AST-pair? _%$e112176%_)
                (let* ((_%$tgt112180112194%_ (__AST-e _%$e112176%_))
                       (_%$hd112181112197%_ (##car _%$tgt112180112194%_))
                       (_%$tl112182112200%_ (##cdr _%$tgt112180112194%_))
                       (_%rest112204%_ _%$tl112182112200%_))
                  (_%lp112172%_ _%rest112204%_))
                (_%$E112178112191%_))))))
    (define __AST-list?__0
      (lambda (_%stx112209%_)
        (let ((_%tail?112211%_ __AST-null?))
          (__AST-list?__% _%stx112209%_ _%tail?112211%_))))
    (define __AST-list?
      (lambda _g112677_
        (let ((_g112676_ (##length _g112677_)))
          (cond ((##fx= _g112676_ 1) (apply __AST-list?__0 _g112677_))
                ((##fx= _g112676_ 2) (apply __AST-list?__% _g112677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g112677_))))))
    (define __AST->list
      (lambda (_%stx112134%_)
        (let* ((_%$e112136%_ _%stx112134%_)
               (_%$E112138112151%_
                (lambda ()
                  (let* ((_%$E112139112146%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e112136%_)))
                         (_%rest112149%_ _%$e112136%_))
                    (__AST-e _%rest112149%_)))))
          (if (__AST-pair? _%$e112136%_)
              (let* ((_%$tgt112140112154%_ (__AST-e _%$e112136%_))
                     (_%$hd112141112157%_ (##car _%$tgt112140112154%_))
                     (_%$tl112142112160%_ (##cdr _%$tgt112140112154%_))
                     (_%hd112164%_ _%$hd112141112157%_)
                     (_%rest112166%_ _%$tl112142112160%_))
                (cons _%hd112164%_ (__AST->list _%rest112166%_)))
              (_%$E112138112151%_)))))
    (define __AST->datum
      (lambda (_%stx112127%_)
        (if (##structure-instance-of? _%stx112127%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx112127%_))
            (if (pair? _%stx112127%_)
                (cons (__AST->datum (##car _%stx112127%_))
                      (__AST->datum (##cdr _%stx112127%_)))
                (if (vector? _%stx112127%_)
                    (vector-map __AST->datum _%stx112127%_)
                    (if (box? _%stx112127%_)
                        (box (__AST->datum (unbox _%stx112127%_)))
                        _%stx112127%_))))))
    (define get-readenv
      (lambda (_%port112125%_)
        (##make-readenv
         _%port112125%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in112113%_)
        (let ((_%e112115%_ (##read-datum-or-eof (get-readenv _%in112113%_))))
          (if (eof-object? (__AST-e _%e112115%_))
              (__AST-e _%e112115%_)
              _%e112115%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in112121%_ (current-input-port)))
          (read-syntax__% _%in112121%_))))
    (define read-syntax
      (lambda _g112679_
        (let ((_g112678_ (##length _g112679_)))
          (cond ((##fx= _g112678_ 0) (apply read-syntax__0 _g112679_))
                ((##fx= _g112678_ 1) (apply read-syntax__% _g112679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g112679_))))))
    (define read-syntax-from-file
      (lambda (_%path112108%_)
        (let ((_%r112110%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path112108%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r112110%_)
              (cdr (__AST-e (vector-ref _%r112110%_ '1)))
              (error (err-code->string _%r112110%_) _%path112108%_)))))
    (define __wrap-syntax
      (lambda (_%re112105%_ _%e112106%_)
        (if (eof-object? _%e112106%_)
            _%e112106%_
            (##structure AST::t _%e112106%_ (##readenv->locat _%re112105%_)))))
    (define __unwrap-syntax
      (lambda (_%re112102%_ _%e112103%_) (__AST-e _%e112103%_)))
    (define __pp-syntax
      (lambda (_%stx112100%_) (pp (__AST->datum _%stx112100%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt112098%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt112098%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt112098%_ '@list)
          (macro-readtable-brace-handler-set! _%rt112098%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt112098%_
           '#\!
           __read-sharp-bang)
          _%rt112098%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt112094%_ _%kw112095%_)
        (macro-readtable-bracket-handler-set! _%rt112094%_ _%kw112095%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt112091%_ _%kw112092%_)
        (macro-readtable-brace-handler-set! _%rt112091%_ _%kw112092%_)))
    (define __read-sharp-bang
      (lambda (_%re112082%_ _%next112083%_ _%start-pos112084%_)
        (if (eq? _%start-pos112084%_ '0)
            (let* ((_%line112086%_
                    (##read-line
                     (macro-readenv-port _%re112082%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line112088%_
                    (substring
                     _%line112086%_
                     '1
                     (string-length _%line112086%_))))
              (macro-readenv-script-line-set!
               _%re112082%_
               _%script-line112088%_)
              (##script-marker))
            (##read-sharp-bang
             _%re112082%_
             _%next112083%_
             _%start-pos112084%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj112080%_)
        (if (source-location? _%obj112080%_)
            (string? (##locat-container _%obj112080%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj112078%_)
        (if (##locat? _%obj112078%_)
            (##container->path (##locat-container _%obj112078%_))
            '#f)))))
