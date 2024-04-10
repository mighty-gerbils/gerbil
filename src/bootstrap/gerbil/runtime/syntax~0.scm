(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712784665)
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
      (lambda _%$args109680%_
        (apply make-instance SyntaxError::t _%$args109680%_)))
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
      (lambda (_%self109181109562%_ _%port109564%_)
        (let* ((_%self109566%_ _%self109181109562%_)
               (_%self109568%_ _%self109566%_))
          (letrec ((_%location109578%_
                    (lambda ()
                      (let _%lp109640%_ ((_%rest109642%_
                                          (##unchecked-structure-ref
                                           _%self109568%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest109643109651%_ _%rest109642%_)
                               (_%else109645109659%_ (lambda () '#f))
                               (_%K109647109668%_
                                (lambda (_%rest109662%_ _%hd109663%_)
                                  (let ((_%$e109665%_
                                         (__AST-source _%hd109663%_)))
                                    (if _%$e109665%_
                                        _%$e109665%_
                                        (_%lp109640%_ _%rest109662%_))))))
                          (if (##pair? _%rest109643109651%_)
                              (let ((_%hd109648109671%_
                                     (##car _%rest109643109651%_))
                                    (_%tl109649109673%_
                                     (##cdr _%rest109643109651%_)))
                                (let* ((_%hd109676%_ _%hd109648109671%_)
                                       (_%rest109678%_ _%tl109649109673%_))
                                  (_%K109647109668%_
                                   _%rest109678%_
                                   _%hd109676%_)))
                              (_%else109645109659%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e109581%_ (_%location109578%_)))
                 (if _%$e109581%_
                     ((lambda (_%where109584%_)
                        (##display-locat _%where109584%_ '#t _%port109564%_))
                      _%$e109581%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e109587%_
                      (##unchecked-structure-ref _%self109568%_ '4 '#f '#f)))
                 (if _%$e109587%_
                     ((lambda (_%where109590%_)
                        (displayln
                         '" at "
                         _%where109590%_
                         '": "
                         (##unchecked-structure-ref
                          _%self109568%_
                          '2
                          '#f
                          '#f)))
                      _%$e109587%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self109568%_ '2 '#f '#f))))
               (let* ((_%self.irritants109592109600%_
                       (##unchecked-structure-ref _%self109568%_ '3 '#f '#f))
                      (_%else109594109608%_ (lambda () '#!void))
                      (_%K109596109621%_
                       (lambda (_%rest109611%_ _%stx109612%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx109612%_)
                         (for-each
                          (lambda (_%detail109614%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail109614%_))
                            (let ((_%$e109616%_
                                   (__AST-source _%detail109614%_)))
                              (if _%$e109616%_
                                  ((lambda (_%loc109619%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc109619%_
                                      '#t
                                      _%port109564%_))
                                   _%$e109616%_)
                                  '#!void))
                            (newline))
                          _%rest109611%_))))
                 (if (##pair? _%self.irritants109592109600%_)
                     (let ((_%hd109597109624%_
                            (##car _%self.irritants109592109600%_))
                           (_%tl109598109626%_
                            (##cdr _%self.irritants109592109600%_)))
                       (let* ((_%stx109629%_ _%hd109597109624%_)
                              (_%rest109631%_ _%tl109598109626%_))
                         (_%K109596109621%_ _%rest109631%_ _%stx109629%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont109632109634%_
                          (##unchecked-structure-ref
                           _%self109568%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont109632109634%_
                         (let ((_%cont109637%_ _%cont109632109634%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont109637%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port109564%_)))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message109433%_
               _%irritants109434%_
               _%where109435%_
               _%context109436%_
               _%marks109437%_
               _%phi109438%_)
        (let ((__obj109777
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj109777 _%message109433%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj109777
           _%irritants109434%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj109777 _%where109435%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj109777 _%context109436%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj109777 _%marks109437%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj109777 _%phi109438%_ '6 '#f '#f)
          __obj109777)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where109428%_
               _%message109429%_
               _%stx109430%_
               .
               _%details109431%_)
        (raise (make-syntax-error
                _%message109429%_
                (cons _%stx109430%_ _%details109431%_)
                _%where109428%_
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
      (lambda _%$args109425%_ (apply make-instance AST::t _%$args109425%_)))
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
      (lambda (_%stx109423%_)
        (if (##structure-instance-of? _%stx109423%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx109423%_ '1 '#f '#f)
            _%stx109423%_)))
    (define __AST-source
      (lambda (_%stx109414%_)
        (let _%lp109416%_ ((_%src109418%_ _%stx109414%_))
          (if (##structure-instance-of? _%src109418%_ 'gerbil#AST::t)
              (_%lp109416%_
               (##unchecked-structure-ref _%src109418%_ '2 '#f '#f))
              (if (##locat? _%src109418%_) _%src109418%_ '#f)))))
    (define __AST
      (lambda (_%e109406%_ _%src-stx109407%_)
        (let ((_%src109409%_ (__AST-source _%src-stx109407%_)))
          (if (or (##structure-instance-of? _%e109406%_ 'gerbil#AST::t)
                  (not _%src109409%_))
              _%e109406%_
              (##structure AST::t _%e109406%_ _%src109409%_)))))
    (define __AST-eq?
      (lambda (_%stx109403%_ _%obj109404%_)
        (eq? (__AST-e _%stx109403%_) _%obj109404%_)))
    (define __AST-pair?
      (lambda (_%stx109401%_) (pair? (__AST-e _%stx109401%_))))
    (define __AST-null?
      (lambda (_%stx109399%_) (null? (__AST-e _%stx109399%_))))
    (define __AST-datum?
      (lambda (_%stx109380%_)
        (let* ((_%e109382%_ (__AST-e _%stx109380%_))
               (_%$e109384%_ (number? _%e109382%_)))
          (if _%$e109384%_
              _%$e109384%_
              (let ((_%$e109387%_ (string? _%e109382%_)))
                (if _%$e109387%_
                    _%$e109387%_
                    (let ((_%$e109390%_ (char? _%e109382%_)))
                      (if _%$e109390%_
                          _%$e109390%_
                          (let ((_%$e109393%_ (keyword? _%e109382%_)))
                            (if _%$e109393%_
                                _%$e109393%_
                                (let ((_%$e109396%_ (boolean? _%e109382%_)))
                                  (if _%$e109396%_
                                      _%$e109396%_
                                      (eq? _%e109382%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx109378%_) (symbol? (__AST-e _%stx109378%_))))
    (define __AST-id-list?__%
      (lambda (_%stx109329%_ _%tail?109330%_)
        (let _%lp109332%_ ((_%rest109334%_ _%stx109329%_))
          (let* ((_%$e109336%_ _%rest109334%_)
                 (_%$E109338109351%_
                  (lambda ()
                    (let* ((_%$E109339109346%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e109336%_)))
                           (_%rest109349%_ _%$e109336%_))
                      (_%tail?109330%_ _%rest109349%_)))))
            (if (__AST-pair? _%$e109336%_)
                (let* ((_%$tgt109340109354%_ (__AST-e _%$e109336%_))
                       (_%$hd109341109357%_ (##car _%$tgt109340109354%_))
                       (_%$tl109342109360%_ (##cdr _%$tgt109340109354%_))
                       (_%hd109364%_ _%$hd109341109357%_)
                       (_%rest109366%_ _%$tl109342109360%_))
                  (if (__AST-id? _%hd109364%_)
                      (_%lp109332%_ _%rest109366%_)
                      '#f))
                (_%$E109338109351%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx109371%_)
        (let ((_%tail?109373%_ __AST-null?))
          (__AST-id-list?__% _%stx109371%_ _%tail?109373%_))))
    (define __AST-id-list?
      (lambda _g109780_
        (let ((_g109779_ (##length _g109780_)))
          (cond ((##fx= _g109779_ 1) (apply __AST-id-list?__0 _g109780_))
                ((##fx= _g109779_ 2) (apply __AST-id-list?__% _g109780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g109780_))))))
    (define __AST-bind-list?
      (lambda (_%stx109321%_)
        (__AST-id-list?__%
         _%stx109321%_
         (lambda (_%e109323%_)
           (let ((_%$e109325%_ (__AST-null? _%e109323%_)))
             (if _%$e109325%_ _%$e109325%_ (__AST-id? _%e109323%_)))))))
    (define __AST-list?__%
      (lambda (_%stx109274%_ _%tail?109275%_)
        (let _%lp109277%_ ((_%rest109279%_ _%stx109274%_))
          (let* ((_%$e109281%_ _%rest109279%_)
                 (_%$E109283109296%_
                  (lambda ()
                    (let* ((_%$E109284109291%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e109281%_)))
                           (_%rest109294%_ _%$e109281%_))
                      (_%tail?109275%_ _%rest109294%_)))))
            (if (__AST-pair? _%$e109281%_)
                (let* ((_%$tgt109285109299%_ (__AST-e _%$e109281%_))
                       (_%$hd109286109302%_ (##car _%$tgt109285109299%_))
                       (_%$tl109287109305%_ (##cdr _%$tgt109285109299%_))
                       (_%rest109309%_ _%$tl109287109305%_))
                  (_%lp109277%_ _%rest109309%_))
                (_%$E109283109296%_))))))
    (define __AST-list?__0
      (lambda (_%stx109314%_)
        (let ((_%tail?109316%_ __AST-null?))
          (__AST-list?__% _%stx109314%_ _%tail?109316%_))))
    (define __AST-list?
      (lambda _g109782_
        (let ((_g109781_ (##length _g109782_)))
          (cond ((##fx= _g109781_ 1) (apply __AST-list?__0 _g109782_))
                ((##fx= _g109781_ 2) (apply __AST-list?__% _g109782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g109782_))))))
    (define __AST->list
      (lambda (_%stx109239%_)
        (let* ((_%$e109241%_ _%stx109239%_)
               (_%$E109243109256%_
                (lambda ()
                  (let* ((_%$E109244109251%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e109241%_)))
                         (_%rest109254%_ _%$e109241%_))
                    (__AST-e _%rest109254%_)))))
          (if (__AST-pair? _%$e109241%_)
              (let* ((_%$tgt109245109259%_ (__AST-e _%$e109241%_))
                     (_%$hd109246109262%_ (##car _%$tgt109245109259%_))
                     (_%$tl109247109265%_ (##cdr _%$tgt109245109259%_))
                     (_%hd109269%_ _%$hd109246109262%_)
                     (_%rest109271%_ _%$tl109247109265%_))
                (cons _%hd109269%_ (__AST->list _%rest109271%_)))
              (_%$E109243109256%_)))))
    (define __AST->datum
      (lambda (_%stx109232%_)
        (if (##structure-instance-of? _%stx109232%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx109232%_))
            (if (pair? _%stx109232%_)
                (cons (__AST->datum (car _%stx109232%_))
                      (__AST->datum (cdr _%stx109232%_)))
                (if (vector? _%stx109232%_)
                    (vector-map __AST->datum _%stx109232%_)
                    (if (box? _%stx109232%_)
                        (box (__AST->datum (unbox _%stx109232%_)))
                        _%stx109232%_))))))
    (define get-readenv
      (lambda (_%port109230%_)
        (##make-readenv
         _%port109230%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in109218%_)
        (let ((_%e109220%_ (##read-datum-or-eof (get-readenv _%in109218%_))))
          (if (eof-object? (__AST-e _%e109220%_))
              (__AST-e _%e109220%_)
              _%e109220%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in109226%_ (current-input-port)))
          (read-syntax__% _%in109226%_))))
    (define read-syntax
      (lambda _g109784_
        (let ((_g109783_ (##length _g109784_)))
          (cond ((##fx= _g109783_ 0) (apply read-syntax__0 _g109784_))
                ((##fx= _g109783_ 1) (apply read-syntax__% _g109784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g109784_))))))
    (define read-syntax-from-file
      (lambda (_%path109213%_)
        (let ((_%r109215%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path109213%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r109215%_)
              (cdr (__AST-e (vector-ref _%r109215%_ '1)))
              (error (err-code->string _%r109215%_) _%path109213%_)))))
    (define __wrap-syntax
      (lambda (_%re109210%_ _%e109211%_)
        (if (eof-object? _%e109211%_)
            _%e109211%_
            (##structure AST::t _%e109211%_ (##readenv->locat _%re109210%_)))))
    (define __unwrap-syntax
      (lambda (_%re109207%_ _%e109208%_) (__AST-e _%e109208%_)))
    (define __pp-syntax
      (lambda (_%stx109205%_) (pp (__AST->datum _%stx109205%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt109203%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt109203%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt109203%_ '@list)
          (macro-readtable-brace-handler-set! _%rt109203%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt109203%_
           '#\!
           __read-sharp-bang)
          _%rt109203%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt109199%_ _%kw109200%_)
        (macro-readtable-bracket-handler-set! _%rt109199%_ _%kw109200%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt109196%_ _%kw109197%_)
        (macro-readtable-brace-handler-set! _%rt109196%_ _%kw109197%_)))
    (define __read-sharp-bang
      (lambda (_%re109187%_ _%next109188%_ _%start-pos109189%_)
        (if (eq? _%start-pos109189%_ '0)
            (let* ((_%line109191%_
                    (##read-line
                     (macro-readenv-port _%re109187%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line109193%_
                    (substring
                     _%line109191%_
                     '1
                     (string-length _%line109191%_))))
              (macro-readenv-script-line-set!
               _%re109187%_
               _%script-line109193%_)
              (##script-marker))
            (##read-sharp-bang
             _%re109187%_
             _%next109188%_
             _%start-pos109189%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj109185%_)
        (if (source-location? _%obj109185%_)
            (string? (##locat-container _%obj109185%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj109183%_)
        (if (##locat? _%obj109183%_)
            (##container->path (##locat-container _%obj109183%_))
            '#f)))))
